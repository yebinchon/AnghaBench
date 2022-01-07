; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_scan_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_scan_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, %struct.mwifiex_chan_scan_param_set* }
%struct.mwifiex_scan_cmd_config = type { i64, i64* }
%struct.mwifiex_ie_types_chan_list_param_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mwifiex_chan_scan_param_set = type { i32, i32, i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"info: Scan: Null detect: %p, %p, %p\0A\00", align 1
@TLV_TYPE_CHANLIST = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"info: Scan: Chan(%3d), Radio(%d),\09Mode(%d, %d), Dur(%d)\0A\00", align 1
@MWIFIEX_PASSIVE_SCAN = common dso_local global i32 0, align 4
@MWIFIEX_DISABLE_CHAN_FILT = common dso_local global i32 0, align 4
@MWIFIEX_MAX_TOTAL_SCAN_TIME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"total scan time %dms\09is over limit (%dms), scan skipped\0A\00", align 1
@HostCmd_CMD_802_11_SCAN_EXT = common dso_local global i64 0, align 8
@HostCmd_CMD_802_11_SCAN = common dso_local global i64 0, align 8
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i64, i64, %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_chan_scan_param_set*)* @mwifiex_scan_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_scan_channel_list(%struct.mwifiex_private* %0, i64 %1, i64 %2, %struct.mwifiex_scan_cmd_config* %3, %struct.mwifiex_ie_types_chan_list_param_set* %4, %struct.mwifiex_chan_scan_param_set* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mwifiex_scan_cmd_config*, align 8
  %12 = alloca %struct.mwifiex_ie_types_chan_list_param_set*, align 8
  %13 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  %14 = alloca %struct.mwifiex_adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  %17 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.mwifiex_scan_cmd_config* %3, %struct.mwifiex_scan_cmd_config** %11, align 8
  store %struct.mwifiex_ie_types_chan_list_param_set* %4, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  store %struct.mwifiex_chan_scan_param_set* %5, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 1
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %25, align 8
  store %struct.mwifiex_adapter* %26, %struct.mwifiex_adapter** %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %28 = icmp ne %struct.mwifiex_scan_cmd_config* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %31 = icmp ne %struct.mwifiex_ie_types_chan_list_param_set* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %34 = icmp ne %struct.mwifiex_chan_scan_param_set* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %32, %29, %6
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 1
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %37, align 8
  %39 = load i32, i32* @ERROR, align 4
  %40 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %41 = ptrtoint %struct.mwifiex_scan_cmd_config* %40 to i64
  %42 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %43 = ptrtoint %struct.mwifiex_ie_types_chan_list_param_set* %42 to i64
  %44 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %45 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i64, i64, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %38, i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %43, %struct.mwifiex_chan_scan_param_set* %44)
  store i32 -1, i32* %7, align 4
  br label %257

46:                                               ; preds = %32
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %48 = call i32 @mwifiex_11h_get_csa_closed_channel(%struct.mwifiex_private* %47)
  %49 = load i32, i32* @TLV_TYPE_CHANLIST, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %52 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  store %struct.mwifiex_chan_scan_param_set* %54, %struct.mwifiex_chan_scan_param_set** %16, align 8
  br label %55

55:                                               ; preds = %251, %46
  %56 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %57 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %252

60:                                               ; preds = %55
  store i64 0, i64* %18, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %23, align 8
  %61 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %62 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  store %struct.mwifiex_chan_scan_param_set* %64, %struct.mwifiex_chan_scan_param_set** %17, align 8
  store i64 0, i64* %22, align 8
  br label %65

65:                                               ; preds = %201, %88, %60
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %71 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i64, i64* %22, align 8
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %74, %69, %65
  %79 = phi i1 [ false, %69 ], [ false, %65 ], [ %77, %74 ]
  br i1 %79, label %80, label %202

80:                                               ; preds = %78
  %81 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %82 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %85 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %90 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %89, i32 1
  store %struct.mwifiex_chan_scan_param_set* %90, %struct.mwifiex_chan_scan_param_set** %16, align 8
  br label %65

91:                                               ; preds = %80
  %92 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %93 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %23, align 8
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 1
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %96, align 8
  %98 = load i32, i32* @INFO, align 4
  %99 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %100 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %104 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %107 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %112 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MWIFIEX_DISABLE_CHAN_FILT, align 4
  %115 = and i32 %113, %114
  %116 = ashr i32 %115, 1
  %117 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %118 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @le16_to_cpu(i64 %119)
  %121 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i64, i64, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %97, i32 %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %102, i64 %105, i32 %110, i32 %116, i64 %120)
  %122 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %123 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %18, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %128 = call i32 @memcpy(i64 %126, %struct.mwifiex_chan_scan_param_set* %127, i32 8)
  %129 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %130 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = call i32 @le16_unaligned_add_cpu(i64* %131, i32 8)
  %133 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %134 = bitcast %struct.mwifiex_ie_types_chan_list_param_set* %133 to i64*
  %135 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %136 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = ptrtoint i64* %134 to i64
  %139 = ptrtoint i64* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 8
  %142 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %143 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %12, align 8
  %145 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @le16_to_cpu(i64 %147)
  %149 = add i64 16, %148
  %150 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %151 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load i64, i64* %18, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %18, align 8
  %156 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %157 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @le16_to_cpu(i64 %158)
  %160 = load i64, i64* %21, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %91
  %165 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %166 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %179, label %169

169:                                              ; preds = %164
  %170 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %171 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 6
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %176 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 11
  br i1 %178, label %179, label %180

179:                                              ; preds = %174, %169, %164
  store i64 1, i64* %22, align 8
  br label %180

180:                                              ; preds = %179, %174, %91
  %181 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %182 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %181, i32 1
  store %struct.mwifiex_chan_scan_param_set* %182, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %183 = load i64, i64* %10, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %180
  %186 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %187 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %192 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 6
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %16, align 8
  %197 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 11
  br i1 %199, label %200, label %201

200:                                              ; preds = %195, %190, %185
  store i64 1, i64* %22, align 8
  br label %201

201:                                              ; preds = %200, %195, %180
  br label %65

202:                                              ; preds = %78
  %203 = load i64, i64* %21, align 8
  %204 = load i64, i64* @MWIFIEX_MAX_TOTAL_SCAN_TIME, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %208 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %207, i32 0, i32 1
  %209 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %208, align 8
  %210 = load i32, i32* @ERROR, align 4
  %211 = load i64, i64* %21, align 8
  %212 = load i64, i64* @MWIFIEX_MAX_TOTAL_SCAN_TIME, align 8
  %213 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i64, i64, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %209, i32 %210, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %211, i64 %212)
  store i32 -1, i32* %15, align 4
  br label %252

214:                                              ; preds = %202
  %215 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %216 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %217 = load i64, i64* %23, align 8
  %218 = call i64 @mwifiex_append_rate_tlv(%struct.mwifiex_private* %215, %struct.mwifiex_scan_cmd_config* %216, i64 %217)
  store i64 %218, i64* %19, align 8
  %219 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %17, align 8
  %220 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %221 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %220, i32 0, i32 1
  %222 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %221, align 8
  %223 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %222, i32 0, i32 1
  store %struct.mwifiex_chan_scan_param_set* %219, %struct.mwifiex_chan_scan_param_set** %223, align 8
  %224 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %225 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %224, i32 0, i32 1
  %226 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %225, align 8
  %227 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %214
  %231 = load i64, i64* @HostCmd_CMD_802_11_SCAN_EXT, align 8
  store i64 %231, i64* %20, align 8
  br label %234

232:                                              ; preds = %214
  %233 = load i64, i64* @HostCmd_CMD_802_11_SCAN, align 8
  store i64 %233, i64* %20, align 8
  br label %234

234:                                              ; preds = %232, %230
  %235 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %236 = load i64, i64* %20, align 8
  %237 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %238 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %239 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %235, i64 %236, i32 %237, i32 0, %struct.mwifiex_scan_cmd_config* %238, i32 0)
  store i32 %239, i32* %15, align 4
  %240 = load i64, i64* %19, align 8
  %241 = add i64 4, %240
  %242 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %243 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %234
  %249 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  %250 = call i32 @mwifiex_cancel_pending_scan_cmd(%struct.mwifiex_adapter* %249)
  br label %252

251:                                              ; preds = %234
  br label %55

252:                                              ; preds = %248, %206, %55
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 -1, i32* %7, align 4
  br label %257

256:                                              ; preds = %252
  store i32 0, i32* %7, align 4
  br label %257

257:                                              ; preds = %256, %255, %35
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @mwifiex_11h_get_csa_closed_channel(%struct.mwifiex_private*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @memcpy(i64, %struct.mwifiex_chan_scan_param_set*, i32) #1

declare dso_local i32 @le16_unaligned_add_cpu(i64*, i32) #1

declare dso_local i64 @mwifiex_append_rate_tlv(%struct.mwifiex_private*, %struct.mwifiex_scan_cmd_config*, i64) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i64, i32, i32, %struct.mwifiex_scan_cmd_config*, i32) #1

declare dso_local i32 @mwifiex_cancel_pending_scan_cmd(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
