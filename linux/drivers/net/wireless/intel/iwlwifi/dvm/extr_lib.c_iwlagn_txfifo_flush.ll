; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_txfifo_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_txfifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_txfifo_flush_cmd_v3 = type { i32, i32 }
%struct.iwl_txfifo_flush_cmd_v2 = type { i32, i32 }

@IWL_DROP_ALL = common dso_local global i32 0, align 4
@IWL_SCD_VO_MSK = common dso_local global i32 0, align 4
@IWL_SCD_VI_MSK = common dso_local global i32 0, align 4
@IWL_SCD_BE_MSK = common dso_local global i32 0, align 4
@IWL_SCD_BK_MSK = common dso_local global i32 0, align 4
@IWL_SCD_MGMT_MSK = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i32 0, align 4
@IWL_PAN_SCD_VO_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_VI_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_BE_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_BK_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_MGMT_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_MULTICAST_MSK = common dso_local global i32 0, align 4
@IWL_AGG_TX_QUEUE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"queue control: 0x%x\0A\00", align 1
@REPLY_TXFIFO_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_txfifo_flush(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_txfifo_flush_cmd_v3, align 4
  %7 = alloca %struct.iwl_txfifo_flush_cmd_v2, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd_v3, %struct.iwl_txfifo_flush_cmd_v3* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd_v3, %struct.iwl_txfifo_flush_cmd_v3* %6, i32 0, i32 1
  %11 = load i32, i32* @IWL_DROP_ALL, align 4
  %12 = call i32 @cpu_to_le16(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd_v2, %struct.iwl_txfifo_flush_cmd_v2* %7, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd_v2, %struct.iwl_txfifo_flush_cmd_v2* %7, i32 0, i32 1
  %15 = load i32, i32* @IWL_DROP_ALL, align 4
  %16 = call i32 @cpu_to_le16(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @IWL_SCD_VO_MSK, align 4
  %18 = load i32, i32* @IWL_SCD_VI_MSK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IWL_SCD_BE_MSK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IWL_SCD_BK_MSK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IWL_SCD_MGMT_MSK, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @IWL_RXON_CTX_BSS, align 4
  %30 = call i64 @BIT(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load i32, i32* @IWL_PAN_SCD_VO_MSK, align 4
  %34 = load i32, i32* @IWL_PAN_SCD_VI_MSK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IWL_PAN_SCD_BE_MSK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IWL_PAN_SCD_BK_MSK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IWL_PAN_SCD_MGMT_MSK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IWL_PAN_SCD_MULTICAST_MSK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %32, %2
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @IWL_AGG_TX_QUEUE_MSK, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @cpu_to_le32(i32 %66)
  %68 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd_v3, %struct.iwl_txfifo_flush_cmd_v3* %6, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @cpu_to_le16(i32 %69)
  %71 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd_v2, %struct.iwl_txfifo_flush_cmd_v2* %7, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IWL_UCODE_API(i32 %76)
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %62
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %81 = load i32, i32* @REPLY_TXFIFO_FLUSH, align 4
  %82 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %80, i32 %81, i32 0, i32 8, %struct.iwl_txfifo_flush_cmd_v3* %6)
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %62
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %85 = load i32, i32* @REPLY_TXFIFO_FLUSH, align 4
  %86 = bitcast %struct.iwl_txfifo_flush_cmd_v2* %7 to %struct.iwl_txfifo_flush_cmd_v3*
  %87 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %84, i32 %85, i32 0, i32 8, %struct.iwl_txfifo_flush_cmd_v3* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @IWL_UCODE_API(i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_txfifo_flush_cmd_v3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
