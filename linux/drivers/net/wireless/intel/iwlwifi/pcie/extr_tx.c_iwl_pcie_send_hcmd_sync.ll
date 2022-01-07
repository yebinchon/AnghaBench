; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_send_hcmd_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_send_hcmd_sync.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_host_cmd*)* @iwl_pcie_send_hcmd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_send_hcmd_sync(%struct.iwl_trans* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %6, align 8
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 2
  %14 = load %struct.iwl_txq**, %struct.iwl_txq*** %13, align 8
  %15 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %14, i64 %17
  %19 = load %struct.iwl_txq*, %struct.iwl_txq** %18, align 8
  store %struct.iwl_txq* %19, %struct.iwl_txq** %7, align 8
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %21, i32 %24)
  %26 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %28, i32 0, i32 0
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %32 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %31, i32 %34)
  %36 = call i64 @WARN(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %209

41:                                               ; preds = %2
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %44 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %43, i32 %46)
  %48 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %50 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %51 = call i32 @iwl_pcie_enqueue_hcmd(%struct.iwl_trans* %49, %struct.iwl_host_cmd* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %57, i32 0, i32 0
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %62 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %61, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %209

69:                                               ; preds = %41
  %70 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %74 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %74, i32 0, i32 0
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %81 = call i32 @wait_event_timeout(i32 %72, i32 %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %69
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %87 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %86, i32 %89)
  %91 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %92 = call i32 @jiffies_to_msecs(i32 %91)
  %93 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %95 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %99 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %103 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %104 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %103, i32 0, i32 0
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %107 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %108 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %107, i32 %110)
  %112 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @ETIMEDOUT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %9, align 4
  %115 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %116 = call i32 @iwl_trans_pcie_sync_nmi(%struct.iwl_trans* %115)
  br label %177

117:                                              ; preds = %69
  %118 = load i32, i32* @STATUS_FW_ERROR, align 4
  %119 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %120 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %119, i32 0, i32 0
  %121 = call i64 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %125 = call i32 @iwl_trans_pcie_dump_regs(%struct.iwl_trans* %124)
  %126 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %127 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %128 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %129 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %127, i32 %130)
  %132 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = call i32 (...) @dump_stack()
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %9, align 4
  br label %177

136:                                              ; preds = %117
  %137 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %138 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %146 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %145, i32 0, i32 0
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %151 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %152 = load i32, i32* @ERFKILL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %9, align 4
  br label %177

154:                                              ; preds = %143, %136
  %155 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %156 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CMD_WANT_SKB, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %154
  %162 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %163 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %168 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %169 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %170 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %168, i32 %171)
  %173 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %9, align 4
  br label %177

176:                                              ; preds = %161, %154
  store i32 0, i32* %3, align 4
  br label %209

177:                                              ; preds = %166, %149, %123, %84
  %178 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %179 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CMD_WANT_SKB, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %177
  %185 = load i32, i32* @CMD_WANT_SKB, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %188 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, %186
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %184, %177
  %198 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %199 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %204 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %203)
  %205 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %206 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %205, i32 0, i32 1
  store i32* null, i32** %206, align 8
  br label %207

207:                                              ; preds = %202, %197
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %176, %54, %38
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_get_cmd_string(%struct.iwl_trans*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_enqueue_hcmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @iwl_trans_pcie_sync_nmi(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_trans_pcie_dump_regs(%struct.iwl_trans*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
