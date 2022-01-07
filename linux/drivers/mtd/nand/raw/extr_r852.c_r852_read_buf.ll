; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.r852_device = type { i64, i64 }

@R852_DMA_LEN = common dso_local global i32 0, align 4
@R852_DATALINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @r852_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_read_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r852_device*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.r852_device* @r852_get_dev(i32 %10)
  store %struct.r852_device* %11, %struct.r852_device** %7, align 8
  %12 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %13 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @memset(i32* %17, i32 0, i32 %18)
  br label %73

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @R852_DMA_LEN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %26 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @r852_do_dma(%struct.r852_device* %30, i32* %31, i32 1)
  br label %73

33:                                               ; preds = %24, %20
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 4
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %39 = load i32, i32* @R852_DATALINE, align 4
  %40 = call i32 @r852_read_reg_dword(%struct.r852_device* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 255
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %6, align 4
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %67, %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.r852_device*, %struct.r852_device** %7, align 8
  %69 = load i32, i32* @R852_DATALINE, align 4
  %70 = call i32 @r852_read_reg(%struct.r852_device* %68, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %63

73:                                               ; preds = %16, %29, %63
  ret void
}

declare dso_local %struct.r852_device* @r852_get_dev(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @r852_do_dma(%struct.r852_device*, i32*, i32) #1

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

declare dso_local i32 @r852_read_reg(%struct.r852_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
