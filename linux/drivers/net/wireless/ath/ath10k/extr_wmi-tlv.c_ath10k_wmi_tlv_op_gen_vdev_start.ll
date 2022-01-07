; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_start_request_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.wmi_tlv_vdev_start_cmd = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.wmi_channel = type { i32 }
%struct.wmi_tlv = type { i8*, i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_VDEV_START_HIDDEN_SSID = common dso_local global i32 0, align 4
@WMI_VDEV_START_PMF_ENABLED = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VDEV_START_REQUEST_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_CHANNEL = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_STRUCT = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wmi tlv vdev start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)* @ath10k_wmi_tlv_op_gen_vdev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_vdev_start(%struct.ath10k* %0, %struct.wmi_vdev_start_request_arg* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.wmi_vdev_start_request_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_tlv_vdev_start_cmd*, align 8
  %9 = alloca %struct.wmi_channel*, align 8
  %10 = alloca %struct.wmi_tlv*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.wmi_vdev_start_request_arg* %1, %struct.wmi_vdev_start_request_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %16 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %21 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.sk_buff* @ERR_PTR(i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %4, align 8
  br label %200

34:                                               ; preds = %25
  %35 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %36 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %38, 4
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.sk_buff* @ERR_PTR(i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %4, align 8
  br label %200

47:                                               ; preds = %34
  store i64 148, i64* %12, align 8
  %48 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %48, i64 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %11, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.sk_buff* @ERR_PTR(i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  br label %200

57:                                               ; preds = %47
  %58 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %59 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @WMI_VDEV_START_HIDDEN_SSID, align 4
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %68 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @WMI_VDEV_START_PMF_ENABLED, align 4
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = bitcast i8* %80 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %81, %struct.wmi_tlv** %10, align 8
  %82 = load i32, i32* @WMI_TLV_TAG_STRUCT_VDEV_START_REQUEST_CMD, align 4
  %83 = call i8* @__cpu_to_le16(i32 %82)
  %84 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %85 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = call i8* @__cpu_to_le16(i32 72)
  %87 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %88 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %90 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = bitcast i8* %92 to %struct.wmi_tlv_vdev_start_cmd*
  store %struct.wmi_tlv_vdev_start_cmd* %93, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %94 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %95 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @__cpu_to_le32(i32 %96)
  %98 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %99 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %101 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @__cpu_to_le32(i32 %102)
  %104 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %105 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %107 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @__cpu_to_le32(i32 %108)
  %110 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %111 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i8* @__cpu_to_le32(i32 %112)
  %114 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %115 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %117 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @__cpu_to_le32(i32 %118)
  %120 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %121 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %123 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @__cpu_to_le32(i32 %124)
  %126 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %127 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %129 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @__cpu_to_le32(i32 %130)
  %132 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %133 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %135 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %75
  %139 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %140 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @__cpu_to_le32(i32 %141)
  %143 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %144 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  %146 = load %struct.wmi_tlv_vdev_start_cmd*, %struct.wmi_tlv_vdev_start_cmd** %8, align 8
  %147 = getelementptr inbounds %struct.wmi_tlv_vdev_start_cmd, %struct.wmi_tlv_vdev_start_cmd* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %151 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %154 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @memcpy(i32 %149, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %138, %75
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr i8, i8* %158, i64 24
  store i8* %159, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr i8, i8* %160, i64 72
  store i8* %161, i8** %13, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = bitcast i8* %162 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %163, %struct.wmi_tlv** %10, align 8
  %164 = load i32, i32* @WMI_TLV_TAG_STRUCT_CHANNEL, align 4
  %165 = call i8* @__cpu_to_le16(i32 %164)
  %166 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %167 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = call i8* @__cpu_to_le16(i32 4)
  %169 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %170 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %172 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i8*
  %175 = bitcast i8* %174 to %struct.wmi_channel*
  store %struct.wmi_channel* %175, %struct.wmi_channel** %9, align 8
  %176 = load %struct.wmi_channel*, %struct.wmi_channel** %9, align 8
  %177 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %178 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %177, i32 0, i32 7
  %179 = call i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel* %176, i32* %178)
  %180 = load i8*, i8** %13, align 8
  %181 = getelementptr i8, i8* %180, i64 24
  store i8* %181, i8** %13, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = getelementptr i8, i8* %182, i64 4
  store i8* %183, i8** %13, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = bitcast i8* %184 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %185, %struct.wmi_tlv** %10, align 8
  %186 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %187 = call i8* @__cpu_to_le16(i32 %186)
  %188 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %189 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %191 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %190, i32 0, i32 0
  store i8* null, i8** %191, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = getelementptr i8, i8* %192, i64 24
  store i8* %193, i8** %13, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = getelementptr i8, i8* %194, i64 0
  store i8* %195, i8** %13, align 8
  %196 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %197 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %198 = call i32 @ath10k_dbg(%struct.ath10k* %196, i32 %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %199 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %199, %struct.sk_buff** %4, align 8
  br label %200

200:                                              ; preds = %157, %53, %43, %30
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %201
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel*, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
