; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_get_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.qlcnic_dcb_capability }
%struct.qlcnic_dcb_capability = type { i32, i32, i64, i64, i64 }

@QLC_DCB_MAX_TC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid DCB configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*, i32*)* @__qlcnic_dcb_get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlcnic_dcb_get_capability(%struct.qlcnic_dcb* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_dcb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qlcnic_dcb_capability*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.qlcnic_dcb_capability* %12, %struct.qlcnic_dcb_capability** %6, align 8
  %13 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %14 = call i32 @memset(%struct.qlcnic_dcb_capability* %13, i32 0, i32 32)
  %15 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @qlcnic_dcb_query_hw_capability(%struct.qlcnic_dcb* %15, i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @QLC_DCB_TSA_SUPPORT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @QLC_DCB_ETS_SUPPORT(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @QLC_DCB_MAX_NUM_TC(i32 %40)
  %42 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @QLC_DCB_MAX_NUM_ETS_TC(i32 %44)
  %46 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @QLC_DCB_MAX_NUM_PFC_TC(i32 %48)
  %50 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QLC_DCB_MAX_TC, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %39
  %58 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %67 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %6, align 8
  %70 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %65, %57, %39
  %74 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %65
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %73, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.qlcnic_dcb_capability*, i32, i32) #1

declare dso_local i32 @qlcnic_dcb_query_hw_capability(%struct.qlcnic_dcb*, i8*) #1

declare dso_local i64 @QLC_DCB_TSA_SUPPORT(i32) #1

declare dso_local i64 @QLC_DCB_ETS_SUPPORT(i32) #1

declare dso_local i64 @QLC_DCB_MAX_NUM_TC(i32) #1

declare dso_local i64 @QLC_DCB_MAX_NUM_ETS_TC(i32) #1

declare dso_local i64 @QLC_DCB_MAX_NUM_PFC_TC(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
