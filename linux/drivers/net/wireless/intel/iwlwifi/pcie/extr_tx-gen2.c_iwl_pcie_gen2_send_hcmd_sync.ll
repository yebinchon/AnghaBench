; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_send_hcmd_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_send_hcmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_host_cmd = type { i32, i32*, i32 }
%struct.iwl_trans_pcie = type { i64, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Attempting to send sync command %s\0A\00", align 1
@STATUS_SYNC_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Command %s: a command is already active!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Setting HCMD_ACTIVE for command %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", align 1
@HOST_COMPLETE_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Error sending %s: time out after %dms.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Current CMD queue read_ptr %d write_ptr %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"FW error in SYNC CMD %s\0A\00", align 1
@CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@STATUS_RFKILL_OPMODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"RFKILL in SYNC CMD... no rsp\0A\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Error: Response NULL in '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_host_cmd*)* @iwl_pcie_gen2_send_hcmd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_gen2_send_hcmd_sync(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwl_txq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %6, align 8
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %14 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @iwl_get_cmd_string(%struct.iwl_trans* %13, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 2
  %20 = load %struct.iwl_txq**, %struct.iwl_txq*** %19, align 8
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %20, i64 %23
  %25 = load %struct.iwl_txq*, %struct.iwl_txq** %24, align 8
  store %struct.iwl_txq* %25, %struct.iwl_txq** %8, align 8
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %30, i32 0, i32 0
  %32 = call i32 @test_and_set_bit(i32 %29, i32* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @WARN(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %183

39:                                               ; preds = %2
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %44 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %45 = call i32 @iwl_pcie_gen2_enqueue_hcmd(%struct.iwl_trans* %43, %struct.iwl_host_cmd* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (%struct.iwl_trans*, i8*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %183

59:                                               ; preds = %39
  %60 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %61 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %64, i32 0, i32 0
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %71 = call i32 @wait_event_timeout(i32 %62, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %59
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %78 = call i32 @jiffies_to_msecs(i32 %77)
  %79 = call i32 (%struct.iwl_trans*, i8*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %76, i32 %78)
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %81 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %82 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.iwl_trans*, i8*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %85, i32 %88)
  %90 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %91 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %91, i32 0, i32 0
  %93 = call i32 @clear_bit(i32 %90, i32* %92)
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %100 = call i32 @iwl_trans_pcie_sync_nmi(%struct.iwl_trans* %99)
  br label %151

101:                                              ; preds = %59
  %102 = load i32, i32* @STATUS_FW_ERROR, align 4
  %103 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %104 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %103, i32 0, i32 0
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (%struct.iwl_trans*, i8*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  %111 = call i32 (...) @dump_stack()
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %151

114:                                              ; preds = %101
  %115 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %123 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %124 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %123, i32 0, i32 0
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %129 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i32, i32* @ERFKILL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %151

132:                                              ; preds = %121, %114
  %133 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %134 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CMD_WANT_SKB, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %132
  %140 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 (%struct.iwl_trans*, i8*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %151

150:                                              ; preds = %139, %132
  store i32 0, i32* %3, align 4
  br label %183

151:                                              ; preds = %144, %127, %107, %74
  %152 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %153 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CMD_WANT_SKB, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %151
  %159 = load i32, i32* @CMD_WANT_SKB, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %162 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %160
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %158, %151
  %172 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %173 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %178 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %177)
  %179 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %180 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %179, i32 0, i32 1
  store i32* null, i32** %180, align 8
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %150, %48, %36
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i8* @iwl_get_cmd_string(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i8*) #1

declare dso_local i64 @WARN(i32, i8*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_gen2_enqueue_hcmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i8*, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @iwl_trans_pcie_sync_nmi(%struct.iwl_trans*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
