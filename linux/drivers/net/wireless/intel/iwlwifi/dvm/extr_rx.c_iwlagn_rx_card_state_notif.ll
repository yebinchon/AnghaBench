; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_card_state_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_card_state_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_card_state_notif = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Card state received: HW:%s SW:%s CT:%s\0A\00", align 1
@HW_CARD_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Kill\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@SW_CARD_DISABLED = common dso_local global i32 0, align 4
@CT_CARD_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Reached\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Not reached\00", align 1
@CSR_UCODE_DRV_GP1_SET = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@HBUS_TARG_MBX_C = common dso_local global i32 0, align 4
@HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED = common dso_local global i32 0, align 4
@RXON_CARD_DISABLED = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_rx_card_state_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_rx_card_state_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_card_state_notif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %5, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_card_state_notif*
  store %struct.iwl_card_state_notif* %15, %struct.iwl_card_state_notif** %6, align 8
  %16 = load %struct.iwl_card_state_notif*, %struct.iwl_card_state_notif** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_card_state_notif, %struct.iwl_card_state_notif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HW_CARD_DISABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SW_CARD_DISABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CT_CARD_DISABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_priv* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %35, i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SW_CARD_DISABLED, align 4
  %45 = load i32, i32* @HW_CARD_DISABLED, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CT_CARD_DISABLED, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %2
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %56 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %57 = call i32 @iwl_write32(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @HBUS_TARG_MBX_C, align 4
  %62 = load i32, i32* @HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED, align 4
  %63 = call i32 @iwl_write_direct32(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @RXON_CARD_DISABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %51
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %73 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED, align 4
  %74 = call i32 @iwl_write32(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %76 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HBUS_TARG_MBX_C, align 4
  %79 = load i32, i32* @HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED, align 4
  %80 = call i32 @iwl_write_direct32(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %51
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @CT_CARD_DISABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %88 = call i32 @iwl_tt_enter_ct_kill(%struct.iwl_priv* %87)
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %2
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @CT_CARD_DISABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %97 = call i32 @iwl_tt_exit_ct_kill(%struct.iwl_priv* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @HW_CARD_DISABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %106 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %105, i32 0, i32 0
  %107 = call i32 @set_bit(i32 %104, i64* %106)
  br label %113

108:                                              ; preds = %98
  %109 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %110 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %111 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %110, i32 0, i32 0
  %112 = call i32 @clear_bit(i32 %109, i64* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @RXON_CARD_DISABLED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %120 = call i32 @iwl_scan_cancel(%struct.iwl_priv* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %123 = call i64 @test_bit(i32 %122, i64* %8)
  %124 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %126 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %125, i32 0, i32 0
  %127 = call i64 @test_bit(i32 %124, i64* %126)
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %131 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %137 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %136, i32 0, i32 0
  %138 = call i64 @test_bit(i32 %135, i64* %137)
  %139 = call i32 @wiphy_rfkill_set_hw_state(i32 %134, i64 %138)
  br label %140

140:                                              ; preds = %129, %121
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_priv*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(i32, i32, i32) #1

declare dso_local i32 @iwl_tt_enter_ct_kill(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_tt_exit_ct_kill(%struct.iwl_priv*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @iwl_scan_cancel(%struct.iwl_priv*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
