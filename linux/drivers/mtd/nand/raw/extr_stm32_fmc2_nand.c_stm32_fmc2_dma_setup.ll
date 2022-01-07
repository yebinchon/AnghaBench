; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_fmc2_nfc = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ecc\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"DMAs not defined in the device tree, polling mode is used\0A\00", align 1
@FMC2_MAX_SG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FMC2_MAX_ECC_BUF_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_fmc2_nfc*)* @stm32_fmc2_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_dma_setup(%struct.stm32_fmc2_nfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_fmc2_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_fmc2_nfc* %0, %struct.stm32_fmc2_nfc** %3, align 8
  %5 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %6 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @dma_request_slave_channel(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %9, i32 0, i32 8
  store i8* %8, i8** %10, align 8
  %11 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @dma_request_slave_channel(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @dma_request_slave_channel(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %24 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %23, i32 0, i32 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %28, i32 0, i32 7
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %34 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %33, i32 0, i32 6
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32, %27, %1
  %38 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %39 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

42:                                               ; preds = %32
  %43 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %44 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %43, i32 0, i32 5
  %45 = load i32, i32* @FMC2_MAX_SG, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @sg_alloc_table(i32* %44, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %42
  %53 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %54 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FMC2_MAX_ECC_BUF_LEN, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @devm_kzalloc(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %62 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %85

68:                                               ; preds = %52
  %69 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %70 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %69, i32 0, i32 2
  %71 = load i32, i32* @FMC2_MAX_SG, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @sg_alloc_table(i32* %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %85

78:                                               ; preds = %68
  %79 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %80 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %79, i32 0, i32 1
  %81 = call i32 @init_completion(i32* %80)
  %82 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %83 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %82, i32 0, i32 0
  %84 = call i32 @init_completion(i32* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %76, %65, %50, %37
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @dma_request_slave_channel(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sg_alloc_table(i32*, i32, i32) #1

declare dso_local i32 @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
