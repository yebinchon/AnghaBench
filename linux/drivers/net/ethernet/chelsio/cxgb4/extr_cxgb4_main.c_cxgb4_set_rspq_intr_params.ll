; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_set_rspq_intr_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_set_rspq_intr_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_rspq = type { i64, i32, i32, i64, %struct.adapter* }
%struct.adapter = type { i32, i32, i32 }

@FW_PARAMS_MNEM_DMAQ = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_set_rspq_intr_params(%struct.sge_rspq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_rspq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sge_rspq* %0, %struct.sge_rspq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %13 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %12, i32 0, i32 4
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @closest_thres(i32* %25, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %29 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %23
  %33 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %34 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load i32, i32* @FW_PARAMS_MNEM_DMAQ, align 4
  %40 = call i64 @FW_PARAMS_MNEM_V(i32 %39)
  %41 = load i32, i32* @FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH, align 4
  %42 = call i64 @FW_PARAMS_PARAM_X_V(i32 %41)
  %43 = or i64 %40, %42
  %44 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %45 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @FW_PARAMS_PARAM_YZ_V(i32 %46)
  %48 = or i64 %43, %47
  store i64 %48, i64* %10, align 8
  %49 = load %struct.adapter*, %struct.adapter** %8, align 8
  %50 = load %struct.adapter*, %struct.adapter** %8, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.adapter*, %struct.adapter** %8, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @t4_set_params(%struct.adapter* %49, i32 %52, i32 %55, i32 0, i32 1, i64* %10, i64* %11)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %86

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %32, %23
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %65 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %20
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %75

70:                                               ; preds = %66
  %71 = load %struct.adapter*, %struct.adapter** %8, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @closest_timer(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %69
  %76 = phi i32 [ 6, %69 ], [ %74, %70 ]
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @QINTR_TIMER_IDX_V(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ugt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @QINTR_CNT_EN_V(i32 %81)
  %83 = or i32 %78, %82
  %84 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %85 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %75, %59
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @closest_thres(i32*, i32) #1

declare dso_local i64 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_YZ_V(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @closest_timer(i32*, i32) #1

declare dso_local i32 @QINTR_TIMER_IDX_V(i32) #1

declare dso_local i32 @QINTR_CNT_EN_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
