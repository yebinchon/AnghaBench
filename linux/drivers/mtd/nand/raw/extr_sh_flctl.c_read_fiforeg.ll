; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_read_fiforeg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_read_fiforeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_flctl = type { i64, i32* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_flctl*, i32, i32)* @read_fiforeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fiforeg(%struct.sh_flctl* %0, i32 %1, i32 %2) #0 {
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
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 3
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %21 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 32
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = call i64 @flctl_dma_fifo0_transfer(%struct.sh_flctl* %28, i64* %29, i32 %30, i32 %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %54

35:                                               ; preds = %27, %24, %3
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %42 = call i32 @wait_rfifo_ready(%struct.sh_flctl* %41)
  %43 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %44 = call i32 @FLDTFIFO(%struct.sh_flctl* %43)
  %45 = call i64 @readl(i32 %44)
  %46 = load i64*, i64** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %45, i64* %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %36

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %34
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i64*, i64** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @be32_to_cpu(i64 %64)
  %66 = load i64*, i64** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %55

73:                                               ; preds = %55
  ret void
}

declare dso_local i64 @flctl_dma_fifo0_transfer(%struct.sh_flctl*, i64*, i32, i32) #1

declare dso_local i32 @wait_rfifo_ready(%struct.sh_flctl*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @FLDTFIFO(%struct.sh_flctl*) #1

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
