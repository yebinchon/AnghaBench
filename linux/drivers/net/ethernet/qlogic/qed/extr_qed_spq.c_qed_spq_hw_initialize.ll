; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_hw_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_hw_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.qed_spq = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.e4_core_conn_context = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.qed_cxt_info = type { %struct.e4_core_conn_context*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot find context info for cid=%d\0A\00", align 1
@E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN = common dso_local global i32 0, align 4
@E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE = common dso_local global i32 0, align 4
@E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN = common dso_local global i32 0, align 4
@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_spq*)* @qed_spq_hw_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_spq_hw_initialize(%struct.qed_hwfn* %0, %struct.qed_spq* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_spq*, align 8
  %5 = alloca %struct.e4_core_conn_context*, align 8
  %6 = alloca %struct.qed_cxt_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_spq* %1, %struct.qed_spq** %4, align 8
  %9 = load %struct.qed_spq*, %struct.qed_spq** %4, align 8
  %10 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = call i32 @qed_cxt_get_cid_info(%struct.qed_hwfn* %13, %struct.qed_cxt_info* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %19 = load %struct.qed_spq*, %struct.qed_spq** %4, align 8
  %20 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DP_NOTICE(%struct.qed_hwfn* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %79

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %6, i32 0, i32 0
  %25 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %24, align 8
  store %struct.e4_core_conn_context* %25, %struct.e4_core_conn_context** %5, align 8
  %26 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %27 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN, align 4
  %31 = call i32 @SET_FIELD(i32 %29, i32 %30, i32 1)
  %32 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %33 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE, align 4
  %37 = call i32 @SET_FIELD(i32 %35, i32 %36, i32 1)
  %38 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %39 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN, align 4
  %43 = call i32 @SET_FIELD(i32 %41, i32 %42, i32 1)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %45 = load i32, i32* @PQ_FLAGS_LB, align 4
  %46 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @cpu_to_le16(i32 %47)
  %49 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %50 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.qed_spq*, %struct.qed_spq** %4, align 8
  %53 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DMA_LO_LE(i32 %55)
  %57 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %58 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.qed_spq*, %struct.qed_spq** %4, align 8
  %61 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DMA_HI_LE(i32 %63)
  %65 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %66 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %69 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %73 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DMA_REGPAIR_LE(i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @qed_cxt_get_cid_info(%struct.qed_hwfn*, %struct.qed_cxt_info*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_get_cm_pq_idx(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DMA_LO_LE(i32) #1

declare dso_local i32 @DMA_HI_LE(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
