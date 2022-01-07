; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_rx_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_rx_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_eth_fq = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dpni_queue = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dpni_queue_id = type { i32 }

@DPNI_QUEUE_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dpni_get_queue(RX) failed\0A\00", align 1
@DPNI_DEST_DPCON = common dso_local global i32 0, align 4
@DPNI_QUEUE_OPT_USER_CTX = common dso_local global i32 0, align 4
@DPNI_QUEUE_OPT_DEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"dpni_set_queue(RX) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"xdp_rxq_info_reg failed\0A\00", align 1
@MEM_TYPE_PAGE_ORDER0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"xdp_rxq_info_reg_mem_model failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*)* @setup_rx_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rx_flow(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_fq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca %struct.dpaa2_eth_fq*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dpni_queue, align 8
  %8 = alloca %struct.dpni_queue_id, align 4
  %9 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store %struct.dpaa2_eth_fq* %1, %struct.dpaa2_eth_fq** %5, align 8
  %10 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %11 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %17 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DPNI_QUEUE_RX, align 4
  %23 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %24 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dpni_get_queue(i32 %18, i32 0, i32 %21, i32 %22, i32 0, i32 %25, %struct.dpni_queue* %7, %struct.dpni_queue_id* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %105

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %37 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @DPNI_DEST_DPCON, align 4
  %46 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %51 = ptrtoint %struct.dpaa2_eth_fq* %50 to i64
  %52 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %54 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %57 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DPNI_QUEUE_RX, align 4
  %60 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %61 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DPNI_QUEUE_OPT_USER_CTX, align 4
  %64 = load i32, i32* @DPNI_QUEUE_OPT_DEST, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @dpni_set_queue(i32 %55, i32 0, i32 %58, i32 %59, i32 0, i32 %62, i32 %65, %struct.dpni_queue* %7)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %33
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %105

73:                                               ; preds = %33
  %74 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %75 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %79 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %82 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @xdp_rxq_info_reg(i32* %77, %struct.TYPE_8__* %80, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %105

91:                                               ; preds = %73
  %92 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %93 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* @MEM_TYPE_PAGE_ORDER0, align 4
  %97 = call i32 @xdp_rxq_info_reg_mem_model(i32* %95, i32 %96, i32* null)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %100, %87, %69, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @dpni_get_queue(i32, i32, i32, i32, i32, i32, %struct.dpni_queue*, %struct.dpni_queue_id*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dpni_set_queue(i32, i32, i32, i32, i32, i32, i32, %struct.dpni_queue*) #1

declare dso_local i32 @xdp_rxq_info_reg(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
