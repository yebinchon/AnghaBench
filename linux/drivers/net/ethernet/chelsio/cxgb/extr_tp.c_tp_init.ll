; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_tp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_tp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tp_params = type { i32, i32 }

@F_TP_IN_CSPI_CPL = common dso_local global i32 0, align 4
@F_TP_IN_CSPI_CHECK_IP_CSUM = common dso_local global i32 0, align 4
@F_TP_IN_CSPI_CHECK_TCP_CSUM = common dso_local global i32 0, align 4
@F_TP_IN_ESPI_ETHERNET = common dso_local global i32 0, align 4
@F_OFFLOAD_DISABLE = common dso_local global i32 0, align 4
@F_TP_IN_ESPI_CHECK_IP_CSUM = common dso_local global i32 0, align 4
@F_TP_IN_ESPI_CHECK_TCP_CSUM = common dso_local global i32 0, align 4
@A_TP_IN_CONFIG = common dso_local global i64 0, align 8
@F_TP_OUT_CSPI_CPL = common dso_local global i32 0, align 4
@F_TP_OUT_ESPI_ETHERNET = common dso_local global i32 0, align 4
@F_TP_OUT_ESPI_GENERATE_IP_CSUM = common dso_local global i32 0, align 4
@F_TP_OUT_ESPI_GENERATE_TCP_CSUM = common dso_local global i32 0, align 4
@A_TP_OUT_CONFIG = common dso_local global i64 0, align 8
@F_PATH_MTU = common dso_local global i32 0, align 4
@A_TP_GLOBAL_CONFIG = common dso_local global i64 0, align 8
@DROP_MSEC = common dso_local global i32 0, align 4
@F_ENABLE_TX_DROP = common dso_local global i32 0, align 4
@F_ENABLE_TX_ERROR = common dso_local global i32 0, align 4
@DROP_PKTS_CNT = common dso_local global i32 0, align 4
@A_TP_TX_DROP_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.tp_params*, i32)* @tp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_init(%struct.TYPE_7__* %0, %struct.tp_params* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.tp_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.tp_params* %1, %struct.tp_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = call i32 @t1_is_asic(%struct.TYPE_7__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %101

13:                                               ; preds = %3
  %14 = load i32, i32* @F_TP_IN_CSPI_CPL, align 4
  %15 = load i32, i32* @F_TP_IN_CSPI_CHECK_IP_CSUM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @F_TP_IN_CSPI_CHECK_TCP_CSUM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @F_TP_IN_ESPI_ETHERNET, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tp_params*, %struct.tp_params** %5, align 8
  %22 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* @F_OFFLOAD_DISABLE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %13
  %30 = load i32, i32* @F_TP_IN_ESPI_CHECK_IP_CSUM, align 4
  %31 = load i32, i32* @F_TP_IN_ESPI_CHECK_TCP_CSUM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @A_TP_IN_CONFIG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load i32, i32* @F_TP_OUT_CSPI_CPL, align 4
  %44 = load i32, i32* @F_TP_OUT_ESPI_ETHERNET, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @F_TP_OUT_ESPI_GENERATE_IP_CSUM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @F_TP_OUT_ESPI_GENERATE_TCP_CSUM, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @A_TP_OUT_CONFIG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = call i32 @V_IP_TTL(i32 64)
  %57 = load i32, i32* @F_PATH_MTU, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.tp_params*, %struct.tp_params** %5, align 8
  %60 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @V_5TUPLE_LOOKUP(i32 %61)
  %63 = or i32 %58, %62
  %64 = call i32 @V_SYN_COOKIE_PARAMETER(i32 29)
  %65 = or i32 %63, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @A_TP_GLOBAL_CONFIG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = call i64 @is_T2(%struct.TYPE_7__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %35
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load i32, i32* @DROP_MSEC, align 4
  %83 = load i32, i32* %6, align 4
  %84 = udiv i32 %83, 1000
  %85 = mul i32 %82, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @F_ENABLE_TX_DROP, align 4
  %87 = load i32, i32* @F_ENABLE_TX_ERROR, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @V_DROP_TICKS_CNT(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i32, i32* @DROP_PKTS_CNT, align 4
  %93 = call i32 @V_NUM_PKTS_DROPPED(i32 %92)
  %94 = or i32 %91, %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @A_TP_TX_DROP_CONFIG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  br label %101

101:                                              ; preds = %12, %81, %75, %35
  ret void
}

declare dso_local i32 @t1_is_asic(%struct.TYPE_7__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @V_IP_TTL(i32) #1

declare dso_local i32 @V_5TUPLE_LOOKUP(i32) #1

declare dso_local i32 @V_SYN_COOKIE_PARAMETER(i32) #1

declare dso_local i64 @is_T2(%struct.TYPE_7__*) #1

declare dso_local i32 @V_DROP_TICKS_CNT(i32) #1

declare dso_local i32 @V_NUM_PKTS_DROPPED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
