; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_add_lan_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_add_lan_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_add_tx_qgrp = type { i32, %struct.ice_aqc_add_txqs_perq* }
%struct.ice_aqc_add_txqs_perq = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_add_txqs = type { i64 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_add_txqs }

@ice_aqc_opc_add_txqs = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_LAN_TXQ_MAX_QGRPS = common dso_local global i64 0, align 8
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, %struct.ice_aqc_add_tx_qgrp*, i64, %struct.ice_sq_cd*)* @ice_aq_add_lan_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_add_lan_txq(%struct.ice_hw* %0, i64 %1, %struct.ice_aqc_add_tx_qgrp* %2, i64 %3, %struct.ice_sq_cd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ice_aqc_add_tx_qgrp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ice_sq_cd*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ice_aqc_add_tx_qgrp*, align 8
  %16 = alloca %struct.ice_aqc_add_txqs*, align 8
  %17 = alloca %struct.ice_aq_desc, align 8
  %18 = alloca %struct.ice_aqc_add_txqs_perq*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ice_aqc_add_tx_qgrp* %2, %struct.ice_aqc_add_tx_qgrp** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ice_sq_cd* %4, %struct.ice_sq_cd** %11, align 8
  store i64 0, i64* %14, align 8
  %19 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %17, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.ice_aqc_add_txqs* %20, %struct.ice_aqc_add_txqs** %16, align 8
  %21 = load i32, i32* @ice_aqc_opc_add_txqs, align 4
  %22 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %17, i32 %21)
  %23 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %9, align 8
  %24 = icmp ne %struct.ice_aqc_add_tx_qgrp* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %26, i32* %6, align 4
  br label %84

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ICE_LAN_TXQ_MAX_QGRPS, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %32, i32* %6, align 4
  br label %84

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = mul i64 %34, 12
  store i64 %35, i64* %13, align 8
  %36 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %9, align 8
  store %struct.ice_aqc_add_tx_qgrp* %36, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %59, %33
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %43 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %42, i32 0, i32 1
  %44 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %43, align 8
  store %struct.ice_aqc_add_txqs_perq* %44, %struct.ice_aqc_add_txqs_perq** %18, align 8
  %45 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %46 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %14, align 8
  %52 = load %struct.ice_aqc_add_txqs_perq*, %struct.ice_aqc_add_txqs_perq** %18, align 8
  %53 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %54 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ice_aqc_add_txqs_perq, %struct.ice_aqc_add_txqs_perq* %52, i64 %56
  %58 = bitcast %struct.ice_aqc_add_txqs_perq* %57 to %struct.ice_aqc_add_tx_qgrp*
  store %struct.ice_aqc_add_tx_qgrp* %58, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  br label %59

59:                                               ; preds = %41
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %37

62:                                               ; preds = %37
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add nsw i64 %64, %65
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %69, i32* %6, align 4
  br label %84

70:                                               ; preds = %62
  %71 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %72 = call i32 @cpu_to_le16(i32 %71)
  %73 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %17, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.ice_aqc_add_txqs*, %struct.ice_aqc_add_txqs** %16, align 8
  %78 = getelementptr inbounds %struct.ice_aqc_add_txqs, %struct.ice_aqc_add_txqs* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %80 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %11, align 8
  %83 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %79, %struct.ice_aq_desc* %17, %struct.ice_aqc_add_tx_qgrp* %80, i64 %81, %struct.ice_sq_cd* %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %70, %68, %31, %25
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_add_tx_qgrp*, i64, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
