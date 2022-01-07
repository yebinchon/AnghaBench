; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_peer_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_peer_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wmi_tlv_peer_assoc_cmd = type { %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.wmi_vht_rate_set = type { i8*, i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_SUPPORTED_RATES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_PEER_ASSOC_COMPLETE_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VHT_RATE_SET = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wmi tlv peer assoc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_wmi_tlv_op_gen_peer_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_peer_assoc(%struct.ath10k* %0, %struct.wmi_peer_assoc_complete_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %6 = alloca %struct.wmi_tlv_peer_assoc_cmd*, align 8
  %7 = alloca %struct.wmi_vht_rate_set*, align 8
  %8 = alloca %struct.wmi_tlv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_peer_assoc_complete_arg* %1, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %14 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %15 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  br label %303

22:                                               ; preds = %2
  %23 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %24 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %23, i32 0, i32 14
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MAX_SUPPORTED_RATES, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.sk_buff* @ERR_PTR(i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %303

33:                                               ; preds = %22
  %34 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %35 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX_SUPPORTED_RATES, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.sk_buff* @ERR_PTR(i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %303

44:                                               ; preds = %33
  %45 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %45, i32 0, i32 14
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @roundup(i32 %48, i32 4)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %51 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %50, i32 0, i32 13
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @roundup(i32 %53, i32 4)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add i64 24, %55
  %57 = add i64 152, %56
  %58 = load i64, i64* %12, align 8
  %59 = add i64 24, %58
  %60 = add i64 %57, %59
  %61 = add i64 %60, 56
  store i64 %61, i64* %10, align 8
  %62 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %62, i64 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %9, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %44
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.sk_buff* @ERR_PTR(i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %3, align 8
  br label %303

71:                                               ; preds = %44
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = bitcast i8* %76 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %77, %struct.wmi_tlv** %8, align 8
  %78 = load i32, i32* @WMI_TLV_TAG_STRUCT_PEER_ASSOC_COMPLETE_CMD, align 4
  %79 = call i8* @__cpu_to_le16(i32 %78)
  %80 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %81 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = call i8* @__cpu_to_le16(i32 128)
  %83 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %84 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %86 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = bitcast i8* %88 to %struct.wmi_tlv_peer_assoc_cmd*
  store %struct.wmi_tlv_peer_assoc_cmd* %89, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %90 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %91 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @__cpu_to_le32(i32 %92)
  %94 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %95 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %94, i32 0, i32 15
  store i8* %93, i8** %95, align 8
  %96 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %97 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %96, i32 0, i32 16
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  %102 = call i8* @__cpu_to_le32(i32 %101)
  %103 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %104 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %103, i32 0, i32 14
  store i8* %102, i8** %104, align 8
  %105 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %106 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @__cpu_to_le32(i32 %107)
  %109 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %109, i32 0, i32 13
  store i8* %108, i8** %110, align 8
  %111 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %112 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @__cpu_to_le32(i32 %113)
  %115 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %115, i32 0, i32 12
  store i8* %114, i8** %116, align 8
  %117 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %118 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @__cpu_to_le32(i32 %119)
  %121 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %122 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %121, i32 0, i32 11
  store i8* %120, i8** %122, align 8
  %123 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %124 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @__cpu_to_le32(i32 %125)
  %127 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %128 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %130 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @__cpu_to_le32(i32 %131)
  %133 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %134 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %133, i32 0, i32 9
  store i8* %132, i8** %134, align 8
  %135 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %136 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @__cpu_to_le32(i32 %137)
  %139 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %140 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %139, i32 0, i32 8
  store i8* %138, i8** %140, align 8
  %141 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %142 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @__cpu_to_le32(i32 %143)
  %145 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %146 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %145, i32 0, i32 7
  store i8* %144, i8** %146, align 8
  %147 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %148 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @__cpu_to_le32(i32 %149)
  %151 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %154 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @__cpu_to_le32(i32 %155)
  %157 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %158 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %157, i32 0, i32 5
  store i8* %156, i8** %158, align 8
  %159 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %160 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @__cpu_to_le32(i32 %161)
  %163 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %164 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %166 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @__cpu_to_le32(i32 %167)
  %169 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %170 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %172 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %171, i32 0, i32 14
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @__cpu_to_le32(i32 %174)
  %176 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %177 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %179 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %178, i32 0, i32 13
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @__cpu_to_le32(i32 %181)
  %183 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %184 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.wmi_tlv_peer_assoc_cmd*, %struct.wmi_tlv_peer_assoc_cmd** %6, align 8
  %186 = getelementptr inbounds %struct.wmi_tlv_peer_assoc_cmd, %struct.wmi_tlv_peer_assoc_cmd* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %190 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ether_addr_copy(i32 %188, i32 %191)
  %193 = load i8*, i8** %13, align 8
  %194 = getelementptr i8, i8* %193, i64 24
  store i8* %194, i8** %13, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = getelementptr i8, i8* %195, i64 128
  store i8* %196, i8** %13, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = bitcast i8* %197 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %198, %struct.wmi_tlv** %8, align 8
  %199 = load i32, i32* @WMI_TLV_TAG_ARRAY_BYTE, align 4
  %200 = call i8* @__cpu_to_le16(i32 %199)
  %201 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %202 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %201, i32 0, i32 2
  store i8* %200, i8** %202, align 8
  %203 = load i64, i64* %11, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i8* @__cpu_to_le16(i32 %204)
  %206 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %207 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %209 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %212 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %211, i32 0, i32 14
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %216 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %215, i32 0, i32 14
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @memcpy(i64 %210, i32 %214, i32 %218)
  %220 = load i8*, i8** %13, align 8
  %221 = getelementptr i8, i8* %220, i64 24
  store i8* %221, i8** %13, align 8
  %222 = load i64, i64* %11, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = getelementptr i8, i8* %223, i64 %222
  store i8* %224, i8** %13, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = bitcast i8* %225 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %226, %struct.wmi_tlv** %8, align 8
  %227 = load i32, i32* @WMI_TLV_TAG_ARRAY_BYTE, align 4
  %228 = call i8* @__cpu_to_le16(i32 %227)
  %229 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %230 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %229, i32 0, i32 2
  store i8* %228, i8** %230, align 8
  %231 = load i64, i64* %12, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i8* @__cpu_to_le16(i32 %232)
  %234 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %235 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  %236 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %237 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %240 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %239, i32 0, i32 13
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %244 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %243, i32 0, i32 13
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @memcpy(i64 %238, i32 %242, i32 %246)
  %248 = load i8*, i8** %13, align 8
  %249 = getelementptr i8, i8* %248, i64 24
  store i8* %249, i8** %13, align 8
  %250 = load i64, i64* %12, align 8
  %251 = load i8*, i8** %13, align 8
  %252 = getelementptr i8, i8* %251, i64 %250
  store i8* %252, i8** %13, align 8
  %253 = load i8*, i8** %13, align 8
  %254 = bitcast i8* %253 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %254, %struct.wmi_tlv** %8, align 8
  %255 = load i32, i32* @WMI_TLV_TAG_STRUCT_VHT_RATE_SET, align 4
  %256 = call i8* @__cpu_to_le16(i32 %255)
  %257 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %258 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  %259 = call i8* @__cpu_to_le16(i32 32)
  %260 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %261 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %263 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = inttoptr i64 %264 to i8*
  %266 = bitcast i8* %265 to %struct.wmi_vht_rate_set*
  store %struct.wmi_vht_rate_set* %266, %struct.wmi_vht_rate_set** %7, align 8
  %267 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %268 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %267, i32 0, i32 12
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @__cpu_to_le32(i32 %270)
  %272 = load %struct.wmi_vht_rate_set*, %struct.wmi_vht_rate_set** %7, align 8
  %273 = getelementptr inbounds %struct.wmi_vht_rate_set, %struct.wmi_vht_rate_set* %272, i32 0, i32 3
  store i8* %271, i8** %273, align 8
  %274 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %275 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %274, i32 0, i32 12
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @__cpu_to_le32(i32 %277)
  %279 = load %struct.wmi_vht_rate_set*, %struct.wmi_vht_rate_set** %7, align 8
  %280 = getelementptr inbounds %struct.wmi_vht_rate_set, %struct.wmi_vht_rate_set* %279, i32 0, i32 2
  store i8* %278, i8** %280, align 8
  %281 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %282 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %281, i32 0, i32 12
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i8* @__cpu_to_le32(i32 %284)
  %286 = load %struct.wmi_vht_rate_set*, %struct.wmi_vht_rate_set** %7, align 8
  %287 = getelementptr inbounds %struct.wmi_vht_rate_set, %struct.wmi_vht_rate_set* %286, i32 0, i32 1
  store i8* %285, i8** %287, align 8
  %288 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %289 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %288, i32 0, i32 12
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @__cpu_to_le32(i32 %291)
  %293 = load %struct.wmi_vht_rate_set*, %struct.wmi_vht_rate_set** %7, align 8
  %294 = getelementptr inbounds %struct.wmi_vht_rate_set, %struct.wmi_vht_rate_set* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  %295 = load i8*, i8** %13, align 8
  %296 = getelementptr i8, i8* %295, i64 24
  store i8* %296, i8** %13, align 8
  %297 = load i8*, i8** %13, align 8
  %298 = getelementptr i8, i8* %297, i64 32
  store i8* %298, i8** %13, align 8
  %299 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %300 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %301 = call i32 @ath10k_dbg(%struct.ath10k* %299, i32 %300, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %302 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %302, %struct.sk_buff** %3, align 8
  br label %303

303:                                              ; preds = %71, %67, %40, %29, %18
  %304 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %304
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
