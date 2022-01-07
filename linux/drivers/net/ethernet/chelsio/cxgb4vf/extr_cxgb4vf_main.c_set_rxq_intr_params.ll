; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_set_rxq_intr_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_set_rxq_intr_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_rspq = type { i64, i32, i32, i64 }

@FW_PARAMS_MNEM_DMAQ = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH = common dso_local global i32 0, align 4
@SGE_TIMER_RSTRT_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_rspq*, i32, i32)* @set_rxq_intr_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rxq_intr_params(%struct.adapter* %0, %struct.sge_rspq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = load %struct.adapter*, %struct.adapter** %6, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @closest_thres(i32* %24, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %28 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %22
  %32 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %33 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load i32, i32* @FW_PARAMS_MNEM_DMAQ, align 4
  %39 = call i64 @FW_PARAMS_MNEM_V(i32 %38)
  %40 = load i32, i32* @FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH, align 4
  %41 = call i64 @FW_PARAMS_PARAM_X_V(i32 %40)
  %42 = or i64 %39, %41
  %43 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %44 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @FW_PARAMS_PARAM_YZ_V(i32 %45)
  %47 = or i64 %42, %46
  store i64 %47, i64* %12, align 8
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = call i32 @t4vf_set_params(%struct.adapter* %48, i32 1, i64* %12, i64* %13)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %80

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %31, %22
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %58 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %19
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @SGE_TIMER_RSTRT_CNTR, align 4
  br label %69

64:                                               ; preds = %59
  %65 = load %struct.adapter*, %struct.adapter** %6, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @closest_timer(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i32 [ %63, %62 ], [ %68, %64 ]
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @QINTR_TIMER_IDX_V(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ugt i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @QINTR_CNT_EN_V(i32 %75)
  %77 = or i32 %72, %76
  %78 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %79 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %69, %52
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @closest_thres(i32*, i32) #1

declare dso_local i64 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_YZ_V(i32) #1

declare dso_local i32 @t4vf_set_params(%struct.adapter*, i32, i64*, i64*) #1

declare dso_local i32 @closest_timer(i32*, i32) #1

declare dso_local i32 @QINTR_TIMER_IDX_V(i32) #1

declare dso_local i32 @QINTR_CNT_EN_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
