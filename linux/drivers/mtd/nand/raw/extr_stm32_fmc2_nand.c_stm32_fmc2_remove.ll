; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_fmc2_nfc = type { i32, i32, i32, i64, i64, i64, %struct.stm32_fmc2_nand }
%struct.stm32_fmc2_nand = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_fmc2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stm32_fmc2_nfc*, align 8
  %4 = alloca %struct.stm32_fmc2_nand*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.stm32_fmc2_nfc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.stm32_fmc2_nfc* %6, %struct.stm32_fmc2_nfc** %3, align 8
  %7 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %8 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %7, i32 0, i32 6
  store %struct.stm32_fmc2_nand* %8, %struct.stm32_fmc2_nand** %4, align 8
  %9 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %9, i32 0, i32 0
  %11 = call i32 @nand_release(i32* %10)
  %12 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dma_release_channel(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %28 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dma_release_channel(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %33 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dma_release_channel(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %43 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %42, i32 0, i32 2
  %44 = call i32 @sg_free_table(i32* %43)
  %45 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %46 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %45, i32 0, i32 1
  %47 = call i32 @sg_free_table(i32* %46)
  %48 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %49 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  ret i32 0
}

declare dso_local %struct.stm32_fmc2_nfc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
