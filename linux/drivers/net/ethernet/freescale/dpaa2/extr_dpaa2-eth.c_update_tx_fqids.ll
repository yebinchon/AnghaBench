; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_update_tx_fqids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_update_tx_fqids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, i32, i32, i32, %struct.dpaa2_eth_fq* }
%struct.dpaa2_eth_fq = type { i64, i64*, i32 }
%struct.dpni_queue_id = type { i64, i32 }
%struct.dpni_queue = type { i32 }

@DPNI_ENQUEUE_FQID_VER_MAJOR = common dso_local global i32 0, align 4
@DPNI_ENQUEUE_FQID_VER_MINOR = common dso_local global i32 0, align 4
@DPAA2_TX_CONF_FQ = common dso_local global i64 0, align 8
@DPNI_QUEUE_TX = common dso_local global i32 0, align 4
@dpaa2_eth_enqueue_fq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Error reading Tx FQID, fallback to QDID-based enqueue\0A\00", align 1
@dpaa2_eth_enqueue_qd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*)* @update_tx_fqids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tx_fqids(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca %struct.dpni_queue_id, align 8
  %4 = alloca %struct.dpaa2_eth_fq*, align 8
  %5 = alloca %struct.dpni_queue, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  %9 = bitcast %struct.dpni_queue_id* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %11 = load i32, i32* @DPNI_ENQUEUE_FQID_VER_MAJOR, align 4
  %12 = load i32, i32* @DPNI_ENQUEUE_FQID_VER_MINOR, align 4
  %13 = call i64 @dpaa2_eth_cmp_dpni_ver(%struct.dpaa2_eth_priv* %10, i32 %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %96

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %81, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %25 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %24, i32 0, i32 5
  %26 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %26, i64 %28
  store %struct.dpaa2_eth_fq* %29, %struct.dpaa2_eth_fq** %4, align 8
  %30 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %31 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DPAA2_TX_CONF_FQ, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %81

36:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %77, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %40 = call i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %44 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %47 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DPNI_QUEUE_TX, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dpni_get_queue(i32 %45, i32 0, i32 %48, i32 %49, i32 %50, i32 %53, %struct.dpni_queue* %5, %struct.dpni_queue_id* %3)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %88

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %3, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %62 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  %67 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %4, align 8
  %68 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %88

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %37

80:                                               ; preds = %37
  br label %81

81:                                               ; preds = %80, %35
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %17

84:                                               ; preds = %17
  %85 = load i32, i32* @dpaa2_eth_enqueue_fq, align 4
  %86 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %87 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %96

88:                                               ; preds = %75, %57
  %89 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %90 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netdev_info(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @dpaa2_eth_enqueue_qd, align 4
  %94 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %95 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %84, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dpaa2_eth_cmp_dpni_ver(%struct.dpaa2_eth_priv*, i32, i32) #2

declare dso_local i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv*) #2

declare dso_local i32 @dpni_get_queue(i32, i32, i32, i32, i32, i32, %struct.dpni_queue*, %struct.dpni_queue_id*) #2

declare dso_local i32 @netdev_info(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
