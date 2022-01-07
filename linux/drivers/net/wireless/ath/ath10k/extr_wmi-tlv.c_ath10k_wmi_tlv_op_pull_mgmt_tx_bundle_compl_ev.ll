; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_mgmt_tx_bundle_compl_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_mgmt_tx_bundle_compl_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg = type { i32, i32, i64, i64, i32 }
%struct.wmi_tlv_tx_bundle_compl_parse = type { i32, i32, i64, i64, i32* }

@ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@WMI_SERVICE_TX_DATA_ACK_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*)* @ath10k_wmi_tlv_op_pull_mgmt_tx_bundle_compl_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_mgmt_tx_bundle_compl_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*, align 8
  %8 = alloca %struct.wmi_tlv_tx_bundle_compl_parse, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %2, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg** %7, align 8
  %10 = bitcast %struct.wmi_tlv_tx_bundle_compl_parse* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse, align 4
  %19 = call i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %11, i32 %14, i32 %17, i32 %18, %struct.wmi_tlv_tx_bundle_compl_parse* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ath10k_warn(%struct.ath10k* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %31, %27
  %40 = load i32, i32* @EPROTO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %73

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg** %7, align 8
  %47 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg** %7, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg** %7, align 8
  %55 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg** %7, align 8
  %59 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @WMI_SERVICE_TX_DATA_ACK_RSSI, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @test_bit(i32 %60, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %42
  %68 = getelementptr inbounds %struct.wmi_tlv_tx_bundle_compl_parse, %struct.wmi_tlv_tx_bundle_compl_parse* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg*, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg** %7, align 8
  %71 = getelementptr inbounds %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg, %struct.wmi_tlv_mgmt_tx_bundle_compl_ev_arg* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %42
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %39, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_tlv_iter(%struct.ath10k*, i32, i32, i32, %struct.wmi_tlv_tx_bundle_compl_parse*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i64 @test_bit(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
