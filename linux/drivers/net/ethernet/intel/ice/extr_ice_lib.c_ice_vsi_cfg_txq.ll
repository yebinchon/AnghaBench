; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ice_ring = type { i64, i32, i64, i64 }
%struct.ice_aqc_add_tx_qgrp = type { %struct.ice_aqc_add_txqs_perq* }
%struct.ice_aqc_add_txqs_perq = type { i32, i32, i32 }
%struct.ice_tlan_ctx = type { i32 }

@ice_tlan_ctx_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to set LAN Tx queue context, error: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, %struct.ice_ring*, i64, %struct.ice_aqc_add_tx_qgrp*, i32)* @ice_vsi_cfg_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_cfg_txq(%struct.ice_vsi* %0, %struct.ice_ring* %1, i64 %2, %struct.ice_aqc_add_tx_qgrp* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca %struct.ice_ring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_aqc_add_tx_qgrp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ice_tlan_ctx, align 4
  %13 = alloca %struct.ice_aqc_add_txqs_perq*, align 8
  %14 = alloca %struct.ice_pf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %7, align 8
  store %struct.ice_ring* %1, %struct.ice_ring** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ice_aqc_add_tx_qgrp* %3, %struct.ice_aqc_add_tx_qgrp** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = bitcast %struct.ice_tlan_ctx* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 2
  %21 = load %struct.ice_pf*, %struct.ice_pf** %20, align 8
  store %struct.ice_pf* %21, %struct.ice_pf** %14, align 8
  store i32 8, i32* %15, align 4
  %22 = load %struct.ice_ring*, %struct.ice_ring** %8, align 8
  %23 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %17, align 8
  %25 = load %struct.ice_ring*, %struct.ice_ring** %8, align 8
  %26 = load i64, i64* %17, align 8
  %27 = call i32 @ice_setup_tx_ctx(%struct.ice_ring* %25, %struct.ice_tlan_ctx* %12, i64 %26)
  %28 = load i64, i64* %17, align 8
  %29 = call i32 @cpu_to_le16(i64 %28)
  %30 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %10, align 8
  %31 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %30, i32 0, i32 0
  %32 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %31, align 8
  %33 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %32, i64 0
  %34 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = bitcast %struct.ice_tlan_ctx* %12 to i32*
  %36 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %10, align 8
  %37 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %36, i32 0, i32 0
  %38 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %37, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %38, i64 0
  %40 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ice_tlan_ctx_info, align 4
  %43 = call i32 @ice_set_ctx(i32* %35, i32 %41, i32 %42)
  %44 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %17, align 8
  %49 = call i64 @QTX_COMM_DBELL(i64 %48)
  %50 = add nsw i64 %47, %49
  %51 = load %struct.ice_ring*, %struct.ice_ring** %8, align 8
  %52 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ice_ring*, %struct.ice_ring** %8, align 8
  %55 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %57 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %60 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ice_ring*, %struct.ice_ring** %8, align 8
  %64 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @ice_ena_vsi_txq(i32 %58, i32 %61, i32 %62, i64 %65, i32 1, %struct.ice_aqc_add_tx_qgrp* %66, i32 %67, i32* null)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %5
  %72 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %73 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %99

80:                                               ; preds = %5
  %81 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %10, align 8
  %82 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %81, i32 0, i32 0
  %83 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %82, align 8
  %84 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %83, i64 0
  store %struct.ice_aqc_add_txqs_perq* %84, %struct.ice_aqc_add_txqs_perq** %13, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %13, align 8
  %87 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @le16_to_cpu(i32 %88)
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %13, align 8
  %93 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load %struct.ice_ring*, %struct.ice_ring** %8, align 8
  %97 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %80
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %71
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ice_setup_tx_ctx(%struct.ice_ring*, %struct.ice_tlan_ctx*, i64) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @ice_set_ctx(i32*, i32, i32) #2

declare dso_local i64 @QTX_COMM_DBELL(i64) #2

declare dso_local i32 @ice_ena_vsi_txq(i32, i32, i32, i64, i32, %struct.ice_aqc_add_tx_qgrp*, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
