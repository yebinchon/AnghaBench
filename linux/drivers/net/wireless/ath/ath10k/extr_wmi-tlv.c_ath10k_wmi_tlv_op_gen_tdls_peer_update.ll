; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_tdls_peer_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_tdls_peer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tdls_peer_update_cmd_arg = type { i32, i32, i32 }
%struct.wmi_tdls_peer_capab_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.wmi_channel_arg = type { i32 }
%struct.wmi_tdls_peer_update_cmd = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_tdls_peer_capab = type { i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wmi_channel = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_TDLS_PEER_UPDATE_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_TDLS_PEER_CAPABILITIES = common dso_local global i32 0, align 4
@WMI_TDLS_MAX_SUPP_OPER_CLASSES = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_STRUCT = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_CHANNEL = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"wmi tlv tdls peer update vdev %i state %d n_chans %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_channel_arg*)* @ath10k_wmi_tlv_op_gen_tdls_peer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_tdls_peer_update(%struct.ath10k* %0, %struct.wmi_tdls_peer_update_cmd_arg* %1, %struct.wmi_tdls_peer_capab_arg* %2, %struct.wmi_channel_arg* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.wmi_tdls_peer_update_cmd_arg*, align 8
  %8 = alloca %struct.wmi_tdls_peer_capab_arg*, align 8
  %9 = alloca %struct.wmi_channel_arg*, align 8
  %10 = alloca %struct.wmi_tdls_peer_update_cmd*, align 8
  %11 = alloca %struct.wmi_tdls_peer_capab*, align 8
  %12 = alloca %struct.wmi_channel*, align 8
  %13 = alloca %struct.wmi_tlv*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.wmi_tdls_peer_update_cmd_arg* %1, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  store %struct.wmi_tdls_peer_capab_arg* %2, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  store %struct.wmi_channel_arg* %3, %struct.wmi_channel_arg** %9, align 8
  %19 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %20 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 184, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %17, align 4
  %26 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %27 = load i32, i32* %17, align 4
  %28 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %14, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.sk_buff* @ERR_PTR(i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %5, align 8
  br label %248

35:                                               ; preds = %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = bitcast i8* %40 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %41, %struct.wmi_tlv** %13, align 8
  %42 = load i32, i32* @WMI_TLV_TAG_STRUCT_TDLS_PEER_UPDATE_CMD, align 4
  %43 = call i8* @__cpu_to_le16(i32 %42)
  %44 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %45 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = call i8* @__cpu_to_le16(i32 24)
  %47 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %48 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %50 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.wmi_tdls_peer_update_cmd*
  store %struct.wmi_tdls_peer_update_cmd* %53, %struct.wmi_tdls_peer_update_cmd** %10, align 8
  %54 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %55 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @__cpu_to_le32(i32 %56)
  %58 = load %struct.wmi_tdls_peer_update_cmd*, %struct.wmi_tdls_peer_update_cmd** %10, align 8
  %59 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd, %struct.wmi_tdls_peer_update_cmd* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.wmi_tdls_peer_update_cmd*, %struct.wmi_tdls_peer_update_cmd** %10, align 8
  %61 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd, %struct.wmi_tdls_peer_update_cmd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %65 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ether_addr_copy(i32 %63, i32 %66)
  %68 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %69 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @__cpu_to_le32(i32 %70)
  %72 = load %struct.wmi_tdls_peer_update_cmd*, %struct.wmi_tdls_peer_update_cmd** %10, align 8
  %73 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd, %struct.wmi_tdls_peer_update_cmd* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = getelementptr i8, i8* %74, i64 24
  store i8* %75, i8** %16, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr i8, i8* %76, i64 24
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = bitcast i8* %78 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %79, %struct.wmi_tlv** %13, align 8
  %80 = load i32, i32* @WMI_TLV_TAG_STRUCT_TDLS_PEER_CAPABILITIES, align 4
  %81 = call i8* @__cpu_to_le16(i32 %80)
  %82 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %83 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = call i8* @__cpu_to_le16(i32 88)
  %85 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %86 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %88 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = bitcast i8* %90 to %struct.wmi_tdls_peer_capab*
  store %struct.wmi_tdls_peer_capab* %91, %struct.wmi_tdls_peer_capab** %11, align 8
  %92 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %93 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %96 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ath10k_wmi_tlv_prepare_peer_qos(i32 %94, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i8* @__cpu_to_le32(i32 %99)
  %101 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %102 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %101, i32 0, i32 10
  store i8* %100, i8** %102, align 8
  %103 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %104 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @__cpu_to_le32(i32 %105)
  %107 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %108 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %110 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @__cpu_to_le32(i32 %111)
  %113 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %114 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %113, i32 0, i32 8
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %116 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @__cpu_to_le32(i32 %117)
  %119 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %120 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %122 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @__cpu_to_le32(i32 %123)
  %125 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %126 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  %127 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %128 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @__cpu_to_le32(i32 %129)
  %131 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %132 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  %133 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %134 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @__cpu_to_le32(i32 %135)
  %137 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %138 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  store i32 0, i32* %18, align 4
  br label %139

139:                                              ; preds = %157, %35
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @WMI_TDLS_MAX_SUPP_OPER_CLASSES, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %145 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %144, i32 0, i32 9
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %152 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  br label %157

157:                                              ; preds = %143
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %18, align 4
  br label %139

160:                                              ; preds = %139
  %161 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %162 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @__cpu_to_le32(i32 %163)
  %165 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %166 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %168 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @__cpu_to_le32(i32 %169)
  %171 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %172 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %174 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @__cpu_to_le32(i32 %175)
  %177 = load %struct.wmi_tdls_peer_capab*, %struct.wmi_tdls_peer_capab** %11, align 8
  %178 = getelementptr inbounds %struct.wmi_tdls_peer_capab, %struct.wmi_tdls_peer_capab* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** %16, align 8
  %180 = getelementptr i8, i8* %179, i64 24
  store i8* %180, i8** %16, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = getelementptr i8, i8* %181, i64 88
  store i8* %182, i8** %16, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = bitcast i8* %183 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %184, %struct.wmi_tlv** %13, align 8
  %185 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %186 = call i8* @__cpu_to_le16(i32 %185)
  %187 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %188 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %190 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i8* @__cpu_to_le16(i32 %194)
  %196 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %197 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** %16, align 8
  %199 = getelementptr i8, i8* %198, i64 24
  store i8* %199, i8** %16, align 8
  store i32 0, i32* %18, align 4
  br label %200

200:                                              ; preds = %231, %160
  %201 = load i32, i32* %18, align 4
  %202 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %203 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %234

206:                                              ; preds = %200
  %207 = load i8*, i8** %16, align 8
  %208 = bitcast i8* %207 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %208, %struct.wmi_tlv** %13, align 8
  %209 = load i32, i32* @WMI_TLV_TAG_STRUCT_CHANNEL, align 4
  %210 = call i8* @__cpu_to_le16(i32 %209)
  %211 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %212 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  %213 = call i8* @__cpu_to_le16(i32 4)
  %214 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %215 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %217 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = inttoptr i64 %218 to i8*
  %220 = bitcast i8* %219 to %struct.wmi_channel*
  store %struct.wmi_channel* %220, %struct.wmi_channel** %12, align 8
  %221 = load %struct.wmi_channel*, %struct.wmi_channel** %12, align 8
  %222 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %222, i64 %224
  %226 = call i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel* %221, %struct.wmi_channel_arg* %225)
  %227 = load i8*, i8** %16, align 8
  %228 = getelementptr i8, i8* %227, i64 24
  store i8* %228, i8** %16, align 8
  %229 = load i8*, i8** %16, align 8
  %230 = getelementptr i8, i8* %229, i64 4
  store i8* %230, i8** %16, align 8
  br label %231

231:                                              ; preds = %206
  %232 = load i32, i32* %18, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %18, align 4
  br label %200

234:                                              ; preds = %200
  %235 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %236 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %237 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %238 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %241 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %244 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @ath10k_dbg(%struct.ath10k* %235, i32 %236, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %239, i32 %242, i32 %245)
  %247 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %247, %struct.sk_buff** %5, align 8
  br label %248

248:                                              ; preds = %234, %31
  %249 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %249
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath10k_wmi_tlv_prepare_peer_qos(i32, i32) #1

declare dso_local i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel*, %struct.wmi_channel_arg*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
