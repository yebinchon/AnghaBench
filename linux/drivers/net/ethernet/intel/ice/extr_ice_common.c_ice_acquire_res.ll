; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_acquire_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_acquire_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@ICE_ERR_AQ_NO_WORK = common dso_local global i32 0, align 4
@ICE_DBG_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"resource %d acquire type %d failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"resource acquire timed out.\0A\00", align 1
@ICE_RES_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"resource indicates no work to do.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Warning: ICE_ERR_AQ_NO_WORK not expected\0A\00", align 1
@ICE_RES_POLLING_DELAY_MS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_acquire_res(%struct.ice_hw* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 10, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ice_aq_req_res(%struct.ice_hw* %13, i32 %14, i32 %15, i32 0, i64* %10, i32* null)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %81

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %26 = load i32, i32* @ICE_DBG_RES, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %25, i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %68, %30
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %35, %32
  %42 = phi i1 [ false, %35 ], [ false, %32 ], [ %40, %38 ]
  br i1 %42, label %43, label %69

43:                                               ; preds = %41
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @mdelay(i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 %50, %51
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i64 [ %52, %49 ], [ 0, %53 ]
  store i64 %55, i64* %8, align 8
  %56 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ice_aq_req_res(%struct.ice_hw* %56, i32 %57, i32 %58, i32 0, i64* %10, i32* null)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %69

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %69

68:                                               ; preds = %64
  br label %32

69:                                               ; preds = %67, %63, %41
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %78 = load i32, i32* @ICE_DBG_RES, align 4
  %79 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %77, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %72, %69
  br label %81

81:                                               ; preds = %80, %20
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ICE_RES_WRITE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %91 = load i32, i32* @ICE_DBG_RES, align 4
  %92 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %90, i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %97

93:                                               ; preds = %85
  %94 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %95 = load i32, i32* @ICE_DBG_RES, align 4
  %96 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %94, i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %81
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @ice_aq_req_res(%struct.ice_hw*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, ...) #1

declare dso_local i32 @mdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
