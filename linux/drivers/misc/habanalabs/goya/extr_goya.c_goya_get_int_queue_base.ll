; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_get_int_queue_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_get_int_queue_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SRAM_CFG_BAR_ID = common dso_local global i64 0, align 8
@MME_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@MME_QMAN_LENGTH = common dso_local global i32 0, align 4
@TPC0_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC_QMAN_LENGTH = common dso_local global i32 0, align 4
@TPC1_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC2_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC3_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC4_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC5_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC6_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@TPC7_QMAN_BASE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Got invalid queue id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goya_get_int_queue_base(%struct.hl_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @SRAM_CFG_BAR_ID, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %10, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %61 [
    i32 136, label %25
    i32 135, label %29
    i32 134, label %33
    i32 133, label %37
    i32 132, label %41
    i32 131, label %45
    i32 130, label %49
    i32 129, label %53
    i32 128, label %57
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @MME_QMAN_BASE_OFFSET, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @MME_QMAN_LENGTH, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  br label %67

29:                                               ; preds = %4
  %30 = load i32, i32* @TPC0_QMAN_BASE_OFFSET, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %67

33:                                               ; preds = %4
  %34 = load i32, i32* @TPC1_QMAN_BASE_OFFSET, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %67

37:                                               ; preds = %4
  %38 = load i32, i32* @TPC2_QMAN_BASE_OFFSET, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %67

41:                                               ; preds = %4
  %42 = load i32, i32* @TPC3_QMAN_BASE_OFFSET, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %67

45:                                               ; preds = %4
  %46 = load i32, i32* @TPC4_QMAN_BASE_OFFSET, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %67

49:                                               ; preds = %4
  %50 = load i32, i32* @TPC5_QMAN_BASE_OFFSET, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %67

53:                                               ; preds = %4
  %54 = load i32, i32* @TPC6_QMAN_BASE_OFFSET, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %67

57:                                               ; preds = %4
  %58 = load i32, i32* @TPC7_QMAN_BASE_OFFSET, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %67

61:                                               ; preds = %4
  %62 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %63 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i8* null, i8** %5, align 8
  br label %77

67:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29, %25
  %68 = load i32, i32* %11, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr i8, i8* %69, i64 %70
  store i8* %71, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load i8*, i8** %10, align 8
  store i8* %76, i8** %5, align 8
  br label %77

77:                                               ; preds = %67, %61
  %78 = load i8*, i8** %5, align 8
  ret i8* %78
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
