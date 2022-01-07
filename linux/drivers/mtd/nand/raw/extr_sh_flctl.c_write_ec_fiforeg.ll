; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_write_ec_fiforeg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_write_ec_fiforeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_flctl = type { i64, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_flctl*, i32, i32)* @write_ec_fiforeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ec_fiforeg(%struct.sh_flctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_flctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.sh_flctl* %0, %struct.sh_flctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %11 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 3
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %35, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i64*, i64** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @cpu_to_be32(i64 %29)
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %30, i64* %34, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %40 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 32
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i64 @flctl_dma_fifo0_transfer(%struct.sh_flctl* %47, i64* %48, i32 %49, i32 %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %73

54:                                               ; preds = %46, %43, %38
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %61 = call i32 @wait_wecfifo_ready(%struct.sh_flctl* %60)
  %62 = load i64*, i64** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %68 = call i32 @FLECFIFO(%struct.sh_flctl* %67)
  %69 = call i32 @writel(i64 %66, i32 %68)
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %55

73:                                               ; preds = %53, %55
  ret void
}

declare dso_local i64 @cpu_to_be32(i64) #1

declare dso_local i64 @flctl_dma_fifo0_transfer(%struct.sh_flctl*, i64*, i32, i32) #1

declare dso_local i32 @wait_wecfifo_ready(%struct.sh_flctl*) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @FLECFIFO(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
