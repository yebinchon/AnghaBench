; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i32, i32, i32, i64, i32 }
%struct.cmd_ctrl_node = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_cmd_ds_command = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"PREP_CMD: adapter is NULL\0A\00", align 1
@MWIFIEX_IS_SUSPENDED = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PREP_CMD: device in suspended state\0A\00", align 1
@MWIFIEX_IS_HS_ENABLING = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_HS_CFG_ENH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"PREP_CMD: host entering sleep state\0A\00", align 1
@MWIFIEX_SURPRISE_REMOVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"PREP_CMD: card is removed\0A\00", align 1
@MWIFIEX_IS_CMD_TIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"PREP_CMD: FW is in bad state\0A\00", align 1
@MWIFIEX_HW_STATUS_RESET = common dso_local global i64 0, align 8
@HostCmd_CMD_FUNC_INIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"PREP_CMD: FW in reset state\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Ignoring commands in manufacturing mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"PREP_CMD: no free cmd node\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"PREP_CMD: no free cmd buf\0A\00", align 1
@CMD_F_HOSTCMD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"PREP_CMD: cmd %#x preparation failed\0A\00", align 1
@HostCmd_CMD_802_11_SCAN = common dso_local global i64 0, align 8
@HostCmd_CMD_802_11_SCAN_EXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private* %0, i64 %1, i64 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mwifiex_adapter*, align 8
  %16 = alloca %struct.cmd_ctrl_node*, align 8
  %17 = alloca %struct.host_cmd_ds_command*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %19, align 8
  store %struct.mwifiex_adapter* %20, %struct.mwifiex_adapter** %15, align 8
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %22 = icmp ne %struct.mwifiex_adapter* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

25:                                               ; preds = %6
  %26 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 5
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %32, i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

35:                                               ; preds = %25
  %36 = load i32, i32* @MWIFIEX_IS_HS_ENABLING, align 4
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %38 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %37, i32 0, i32 5
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @HostCmd_CMD_802_11_HS_CFG_ENH, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %46, i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

49:                                               ; preds = %41, %35
  %50 = load i32, i32* @MWIFIEX_SURPRISE_REMOVED, align 4
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %51, i32 0, i32 5
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %56, i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

59:                                               ; preds = %49
  %60 = load i32, i32* @MWIFIEX_IS_CMD_TIMEDOUT, align 4
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %62 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %61, i32 0, i32 5
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %66, i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

69:                                               ; preds = %59
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MWIFIEX_HW_STATUS_RESET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @HostCmd_CMD_FUNC_INIT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %81 = load i32, i32* @ERROR, align 4
  %82 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %80, i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %94 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

97:                                               ; preds = %89, %84
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %99 = call %struct.cmd_ctrl_node* @mwifiex_get_cmd_node(%struct.mwifiex_adapter* %98)
  store %struct.cmd_ctrl_node* %99, %struct.cmd_ctrl_node** %16, align 8
  %100 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %101 = icmp ne %struct.cmd_ctrl_node* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %104 = load i32, i32* @ERROR, align 4
  %105 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %103, i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

106:                                              ; preds = %97
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %108 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @mwifiex_init_cmd_node(%struct.mwifiex_private* %107, %struct.cmd_ctrl_node* %108, i64 %109, i8* %110, i32 %111)
  %113 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %114 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = icmp ne %struct.TYPE_2__* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %106
  %118 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %119 = load i32, i32* @ERROR, align 4
  %120 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %118, i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %213

121:                                              ; preds = %106
  %122 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %123 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = call i32 @skb_put_zero(%struct.TYPE_2__* %124, i32 16)
  %126 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %127 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.host_cmd_ds_command*
  store %struct.host_cmd_ds_command* %131, %struct.host_cmd_ds_command** %17, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @cpu_to_le16(i64 %132)
  %134 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %17, align 8
  %135 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %17, align 8
  %137 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %121
  %141 = load i64, i64* %9, align 8
  switch i64 %141, label %150 [
    i64 128, label %142
    i64 131, label %142
    i64 130, label %142
    i64 129, label %142
    i64 132, label %142
    i64 133, label %142
  ]

142:                                              ; preds = %140, %140, %140, %140, %140, %140
  %143 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i8*, i8** %12, align 8
  %148 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %17, align 8
  %149 = call i32 @mwifiex_uap_prepare_cmd(%struct.mwifiex_private* %143, i64 %144, i64 %145, i32 %146, i8* %147, %struct.host_cmd_ds_command* %148)
  store i32 %149, i32* %14, align 4
  br label %158

150:                                              ; preds = %140
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i8*, i8** %12, align 8
  %156 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %17, align 8
  %157 = call i32 @mwifiex_sta_prepare_cmd(%struct.mwifiex_private* %151, i64 %152, i64 %153, i32 %154, i8* %155, %struct.host_cmd_ds_command* %156)
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %150, %142
  br label %169

159:                                              ; preds = %121
  %160 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %161 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %17, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @mwifiex_cmd_host_cmd(%struct.mwifiex_private* %160, %struct.host_cmd_ds_command* %161, i8* %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* @CMD_F_HOSTCMD, align 4
  %165 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %166 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %159, %158
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %174 = load i32, i32* @ERROR, align 4
  %175 = load i64, i64* %9, align 8
  %176 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %173, i32 %174, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i64 %175)
  %177 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %178 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %179 = call i32 @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter* %177, %struct.cmd_ctrl_node* %178)
  store i32 -1, i32* %7, align 4
  br label %213

180:                                              ; preds = %169
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @HostCmd_CMD_802_11_SCAN, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* @HostCmd_CMD_802_11_SCAN_EXT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184, %180
  %189 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %190 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %191 = call i32 @mwifiex_queue_scan_cmd(%struct.mwifiex_private* %189, %struct.cmd_ctrl_node* %190)
  br label %211

192:                                              ; preds = %184
  %193 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %194 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %195 = call i32 @mwifiex_insert_cmd_to_pending_q(%struct.mwifiex_adapter* %193, %struct.cmd_ctrl_node* %194)
  %196 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %197 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %200 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %199, i32 0, i32 1
  %201 = call i32 @queue_work(i32 %198, i32* %200)
  %202 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %203 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %192
  %207 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %208 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %16, align 8
  %209 = call i32 @mwifiex_wait_queue_complete(%struct.mwifiex_adapter* %207, %struct.cmd_ctrl_node* %208)
  store i32 %209, i32* %14, align 4
  br label %210

210:                                              ; preds = %206, %192
  br label %211

211:                                              ; preds = %210, %188
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %211, %172, %117, %102, %92, %79, %65, %55, %45, %31, %23
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.cmd_ctrl_node* @mwifiex_get_cmd_node(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_init_cmd_node(%struct.mwifiex_private*, %struct.cmd_ctrl_node*, i64, i8*, i32) #1

declare dso_local i32 @skb_put_zero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @mwifiex_uap_prepare_cmd(%struct.mwifiex_private*, i64, i64, i32, i8*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_sta_prepare_cmd(%struct.mwifiex_private*, i64, i64, i32, i8*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_cmd_host_cmd(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_insert_cmd_to_free_q(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @mwifiex_queue_scan_cmd(%struct.mwifiex_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @mwifiex_insert_cmd_to_pending_q(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mwifiex_wait_queue_complete(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
