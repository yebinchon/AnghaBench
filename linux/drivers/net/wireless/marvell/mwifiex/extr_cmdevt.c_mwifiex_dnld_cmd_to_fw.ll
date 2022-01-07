; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_dnld_cmd_to_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_dnld_cmd_to_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i64, i32, i32, %struct.TYPE_14__, i32, %struct.cmd_ctrl_node*, %struct.TYPE_13__, i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i64*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.mwifiex_adapter*, i32, %struct.TYPE_15__*, i32*)* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.cmd_ctrl_node = type { i64, %struct.TYPE_15__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.host_cmd_ds_command = type { i64, i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"DNLD_CMD: host_cmd is null\09or cmd size is 0, not sending\0A\00", align 1
@MWIFIEX_HW_STATUS_RESET = common dso_local global i64 0, align 8
@HostCmd_CMD_FUNC_SHUTDOWN = common dso_local global i64 0, align 8
@HostCmd_CMD_FUNC_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"DNLD_CMD: FW in reset state, ignore cmd %#x\0A\00", align 1
@CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\0A\00", align 1
@S_DS_GEN = common dso_local global i32 0, align 4
@CMD_D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"cmd buffer:\00", align 1
@MWIFIEX_USB = common dso_local global i64 0, align 8
@MWIFIEX_TYPE_LEN = common dso_local global i32 0, align 4
@MWIFIEX_USB_TYPE_CMD = common dso_local global i32 0, align 4
@MWIFIEX_USB_EP_CMD_EVENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MWIFIEX_TYPE_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"DNLD_CMD: host to card failed\0A\00", align 1
@DBG_CMD_NUM = common dso_local global i32 0, align 4
@HostCmd_CMD_FW_DUMP_EVENT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MWIFIEX_TIMER_10S = common dso_local global i32 0, align 4
@HostCmd_CMD_ID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cmd_ctrl_node*)* @mwifiex_dnld_cmd_to_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_dnld_cmd_to_fw(%struct.mwifiex_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cmd_ctrl_node*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_cmd_ds_command*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %5, align 8
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 0
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  store %struct.mwifiex_adapter* %13, %struct.mwifiex_adapter** %6, align 8
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %15 = icmp ne %struct.mwifiex_adapter* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %18 = icmp ne %struct.cmd_ctrl_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store i32 -1, i32* %3, align 4
  br label %339

20:                                               ; preds = %16
  %21 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %22 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.host_cmd_ds_command*
  store %struct.host_cmd_ds_command* %26, %struct.host_cmd_ds_command** %8, align 8
  %27 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %28 = icmp eq %struct.host_cmd_ds_command* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29, %20
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %35, i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %39 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %48 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %49 = call i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %47, %struct.cmd_ctrl_node* %48)
  store i32 -1, i32* %3, align 4
  br label %339

50:                                               ; preds = %29
  %51 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %52 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @le16_to_cpu(i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %57 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %59 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @le16_to_cpu(i64 %60)
  store i64 %61, i64* %10, align 8
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MWIFIEX_HW_STATUS_RESET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %50
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @HostCmd_CMD_FUNC_SHUTDOWN, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @HostCmd_CMD_FUNC_INIT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %76, i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %81 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %82 = call i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %80, %struct.cmd_ctrl_node* %81)
  %83 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 11
  %88 = call i32 @queue_work(i32 %85, i32* %87)
  store i32 -1, i32* %3, align 4
  br label %339

89:                                               ; preds = %71, %67, %50
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %98 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %103 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @HostCmd_SET_SEQ_NO_BSS_INFO(i32 %96, i32 %101, i32 %106)
  %108 = call i64 @cpu_to_le16(i32 %107)
  %109 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %110 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %111, i32 0, i32 5
  %113 = call i32 @spin_lock_bh(i32* %112)
  %114 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %115 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %116 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %115, i32 0, i32 6
  store %struct.cmd_ctrl_node* %114, %struct.cmd_ctrl_node** %116, align 8
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %118 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %117, i32 0, i32 5
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %121 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %89
  %128 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %129 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @skb_trim(%struct.TYPE_15__* %130, i64 %131)
  br label %154

133:                                              ; preds = %89
  %134 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %135 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %134, i32 0, i32 1
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %143 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %142, i32 0, i32 1
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %147 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %145, %150
  %152 = call i32 @skb_put(%struct.TYPE_15__* %144, i64 %151)
  br label %153

153:                                              ; preds = %141, %133
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %156 = load i32, i32* @CMD, align 4
  %157 = load i64, i64* %9, align 8
  %158 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %159 = bitcast %struct.host_cmd_ds_command* %158 to i32*
  %160 = load i32, i32* @S_DS_GEN, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i32 @get_unaligned_le16(i32* %162)
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %166 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @le16_to_cpu(i64 %167)
  %169 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %155, i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %157, i32 %163, i64 %164, i64 %168)
  %170 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %171 = load i32, i32* @CMD_D, align 4
  %172 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter* %170, i32 %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.host_cmd_ds_command* %172, i64 %173)
  %175 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %176 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @MWIFIEX_USB, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %218

180:                                              ; preds = %154
  %181 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %182 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %181, i32 0, i32 1
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = load i32, i32* @MWIFIEX_TYPE_LEN, align 4
  %185 = call i32 @skb_push(%struct.TYPE_15__* %183, i32 %184)
  %186 = load i32, i32* @MWIFIEX_USB_TYPE_CMD, align 4
  %187 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %188 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %187, i32 0, i32 1
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @put_unaligned_le32(i32 %186, i64 %191)
  %193 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %194 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  %195 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %196 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %195, i32 0, i32 9
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32 (%struct.mwifiex_adapter*, i32, %struct.TYPE_15__*, i32*)*, i32 (%struct.mwifiex_adapter*, i32, %struct.TYPE_15__*, i32*)** %197, align 8
  %199 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %200 = load i32, i32* @MWIFIEX_USB_EP_CMD_EVENT, align 4
  %201 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %202 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %201, i32 0, i32 1
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = call i32 %198(%struct.mwifiex_adapter* %199, i32 %200, %struct.TYPE_15__* %203, i32* null)
  store i32 %204, i32* %7, align 4
  %205 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %206 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %205, i32 0, i32 1
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = load i32, i32* @MWIFIEX_TYPE_LEN, align 4
  %209 = call i32 @skb_pull(%struct.TYPE_15__* %207, i32 %208)
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @EBUSY, align 4
  %212 = sub nsw i32 0, %211
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %180
  %215 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %216 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %215, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %216, align 8
  br label %217

217:                                              ; preds = %214, %180
  br label %243

218:                                              ; preds = %154
  %219 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %220 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %219, i32 0, i32 1
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %223 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @skb_push(%struct.TYPE_15__* %221, i32 %224)
  %226 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %227 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i32 (%struct.mwifiex_adapter*, i32, %struct.TYPE_15__*, i32*)*, i32 (%struct.mwifiex_adapter*, i32, %struct.TYPE_15__*, i32*)** %228, align 8
  %230 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %231 = load i32, i32* @MWIFIEX_TYPE_CMD, align 4
  %232 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %233 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %232, i32 0, i32 1
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = call i32 %229(%struct.mwifiex_adapter* %230, i32 %231, %struct.TYPE_15__* %234, i32* null)
  store i32 %235, i32* %7, align 4
  %236 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %237 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %236, i32 0, i32 1
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %240 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @skb_pull(%struct.TYPE_15__* %238, i32 %241)
  br label %243

243:                                              ; preds = %218, %217
  %244 = load i32, i32* %7, align 4
  %245 = icmp eq i32 %244, -1
  br i1 %245, label %246, label %286

246:                                              ; preds = %243
  %247 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %248 = load i32, i32* @ERROR, align 4
  %249 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %247, i32 %248, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %250 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %251 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @MWIFIEX_USB, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %257 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %256, i32 0, i32 2
  store i32 0, i32* %257, align 8
  br label %258

258:                                              ; preds = %255, %246
  %259 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %260 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %265 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  store i32 -1, i32* %266, align 8
  br label %267

267:                                              ; preds = %263, %258
  %268 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %269 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %270 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %269, i32 0, i32 6
  %271 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %270, align 8
  %272 = call i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %268, %struct.cmd_ctrl_node* %271)
  %273 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %274 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %273, i32 0, i32 5
  %275 = call i32 @spin_lock_bh(i32* %274)
  %276 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %277 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %276, i32 0, i32 6
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %277, align 8
  %278 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %279 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %278, i32 0, i32 5
  %280 = call i32 @spin_unlock_bh(i32* %279)
  %281 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %282 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 8
  store i32 -1, i32* %3, align 4
  br label %339

286:                                              ; preds = %243
  %287 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %288 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  %292 = load i32, i32* @DBG_CMD_NUM, align 4
  %293 = srem i32 %291, %292
  %294 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %295 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  store i32 %293, i32* %296, align 8
  %297 = load i64, i64* %9, align 8
  %298 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %299 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 2
  %301 = load i64*, i64** %300, align 8
  %302 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %303 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %301, i64 %306
  store i64 %297, i64* %307, align 8
  %308 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %309 = bitcast %struct.host_cmd_ds_command* %308 to i32*
  %310 = load i32, i32* @S_DS_GEN, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = call i32 @get_unaligned_le16(i32* %312)
  %314 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %315 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %319 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %317, i64 %322
  store i32 %313, i32* %323, align 4
  %324 = load i64, i64* %9, align 8
  %325 = load i64, i64* @HostCmd_CMD_FW_DUMP_EVENT, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %335

327:                                              ; preds = %286
  %328 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %329 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %328, i32 0, i32 3
  %330 = load i64, i64* @jiffies, align 8
  %331 = load i32, i32* @MWIFIEX_TIMER_10S, align 4
  %332 = call i64 @msecs_to_jiffies(i32 %331)
  %333 = add nsw i64 %330, %332
  %334 = call i32 @mod_timer(i32* %329, i64 %333)
  br label %335

335:                                              ; preds = %327, %286
  %336 = load i64, i64* @HostCmd_CMD_ID_MASK, align 8
  %337 = load i64, i64* %9, align 8
  %338 = and i64 %337, %336
  store i64 %338, i64* %9, align 8
  store i32 0, i32* %3, align 4
  br label %339

339:                                              ; preds = %335, %267, %75, %46, %19
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter*, %struct.cmd_ctrl_node*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @HostCmd_SET_SEQ_NO_BSS_INFO(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_trim(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @skb_put(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter*, i32, i8*, %struct.host_cmd_ds_command*, i64) #1

declare dso_local i32 @skb_push(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i64) #1

declare dso_local i32 @skb_pull(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
