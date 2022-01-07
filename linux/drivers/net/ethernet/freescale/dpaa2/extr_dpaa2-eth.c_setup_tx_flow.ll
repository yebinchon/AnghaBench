; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_tx_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_tx_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_eth_fq = type { i32, %struct.TYPE_7__*, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.dpni_queue = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.dpni_queue_id = type { i32, i32 }

@DPNI_QUEUE_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dpni_get_queue(TX) failed\0A\00", align 1
@DPNI_QUEUE_TX_CONFIRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dpni_get_queue(TX_CONF) failed\0A\00", align 1
@DPNI_DEST_DPCON = common dso_local global i32 0, align 4
@DPNI_QUEUE_OPT_USER_CTX = common dso_local global i32 0, align 4
@DPNI_QUEUE_OPT_DEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dpni_set_queue(TX_CONF) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*)* @setup_tx_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_tx_flow(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_fq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca %struct.dpaa2_eth_fq*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dpni_queue, align 8
  %8 = alloca %struct.dpni_queue_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store %struct.dpaa2_eth_fq* %1, %struct.dpaa2_eth_fq** %5, align 8
  %11 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %12 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %20 = call i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %24 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DPNI_QUEUE_TX, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %32 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dpni_get_queue(i32 %25, i32 0, i32 %28, i32 %29, i32 %30, i32 %33, %struct.dpni_queue* %7, %struct.dpni_queue_id* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %116

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %45 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %17

53:                                               ; preds = %17
  %54 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %57 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %59 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %62 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DPNI_QUEUE_TX_CONFIRM, align 4
  %65 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %66 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dpni_get_queue(i32 %60, i32 0, i32 %63, i32 %64, i32 0, i32 %67, %struct.dpni_queue* %7, %struct.dpni_queue_id* %8)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %53
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %116

75:                                               ; preds = %53
  %76 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %79 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %81 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @DPNI_DEST_DPCON, align 4
  %88 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %93 = ptrtoint %struct.dpaa2_eth_fq* %92 to i64
  %94 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %7, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  %95 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %96 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %99 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DPNI_QUEUE_TX_CONFIRM, align 4
  %102 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %5, align 8
  %103 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DPNI_QUEUE_OPT_USER_CTX, align 4
  %106 = load i32, i32* @DPNI_QUEUE_OPT_DEST, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @dpni_set_queue(i32 %97, i32 0, i32 %100, i32 %101, i32 0, i32 %104, i32 %107, %struct.dpni_queue* %7)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %75
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %116

115:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %111, %71, %37
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpni_get_queue(i32, i32, i32, i32, i32, i32, %struct.dpni_queue*, %struct.dpni_queue_id*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dpni_set_queue(i32, i32, i32, i32, i32, i32, i32, %struct.dpni_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
