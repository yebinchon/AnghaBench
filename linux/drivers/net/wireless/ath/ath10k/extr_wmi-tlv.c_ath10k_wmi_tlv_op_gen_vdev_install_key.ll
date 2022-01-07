; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_install_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_install_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i64* }
%struct.wmi_vdev_install_key_arg = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.wmi_vdev_install_key_cmd = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@WMI_CIPHER_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VDEV_INSTALL_KEY_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wmi tlv vdev install key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_install_key_arg*)* @ath10k_wmi_tlv_op_gen_vdev_install_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_vdev_install_key(%struct.ath10k* %0, %struct.wmi_vdev_install_key_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_vdev_install_key_arg*, align 8
  %6 = alloca %struct.wmi_vdev_install_key_cmd*, align 8
  %7 = alloca %struct.wmi_tlv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_vdev_install_key_arg* %1, %struct.wmi_vdev_install_key_arg** %5, align 8
  %11 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %12 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @WMI_CIPHER_NONE, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %13, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %23 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.sk_buff* @ERR_PTR(i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  br label %187

30:                                               ; preds = %21, %2
  %31 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %32 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @WMI_CIPHER_NONE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %33, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %43 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.sk_buff* @ERR_PTR(i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %3, align 8
  br label %187

50:                                               ; preds = %41, %30
  %51 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %52 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @roundup(i64 %53, i32 4)
  %55 = sext i32 %54 to i64
  %56 = add i64 112, %55
  store i64 %56, i64* %9, align 8
  %57 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %57, i64 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.sk_buff* @ERR_PTR(i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %3, align 8
  br label %187

66:                                               ; preds = %50
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast i8* %71 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %72, %struct.wmi_tlv** %7, align 8
  %73 = load i32, i32* @WMI_TLV_TAG_STRUCT_VDEV_INSTALL_KEY_CMD, align 4
  %74 = call i8* @__cpu_to_le16(i32 %73)
  %75 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %76 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = call i8* @__cpu_to_le16(i32 64)
  %78 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %79 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %81 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = bitcast i8* %83 to %struct.wmi_vdev_install_key_cmd*
  store %struct.wmi_vdev_install_key_cmd* %84, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %85 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %86 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @__cpu_to_le32(i64 %87)
  %89 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %92 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @__cpu_to_le32(i64 %93)
  %95 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %98 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @__cpu_to_le32(i64 %99)
  %101 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %102 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %104 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @__cpu_to_le32(i64 %105)
  %107 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %110 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @__cpu_to_le32(i64 %111)
  %113 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %116 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @__cpu_to_le32(i64 %117)
  %119 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %120 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %122 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @__cpu_to_le32(i64 %123)
  %125 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %126 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %128 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %66
  %132 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %133 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %137 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ether_addr_copy(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %131, %66
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr i8, i8* %141, i64 24
  store i8* %142, i8** %10, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr i8, i8* %143, i64 64
  store i8* %144, i8** %10, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = bitcast i8* %145 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %146, %struct.wmi_tlv** %7, align 8
  %147 = load i32, i32* @WMI_TLV_TAG_ARRAY_BYTE, align 4
  %148 = call i8* @__cpu_to_le16(i32 %147)
  %149 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %150 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %152 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @roundup(i64 %153, i32 4)
  %155 = call i8* @__cpu_to_le16(i32 %154)
  %156 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %157 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %159 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %140
  %163 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %164 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %167 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %170 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @memcpy(i64 %165, i32 %168, i64 %171)
  br label %173

173:                                              ; preds = %162, %140
  %174 = load i8*, i8** %10, align 8
  %175 = getelementptr i8, i8* %174, i64 24
  store i8* %175, i8** %10, align 8
  %176 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %177 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @roundup(i64 %178, i32 4)
  %180 = load i8*, i8** %10, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr i8, i8* %180, i64 %181
  store i8* %182, i8** %10, align 8
  %183 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %184 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %185 = call i32 @ath10k_dbg(%struct.ath10k* %183, i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %186 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %186, %struct.sk_buff** %3, align 8
  br label %187

187:                                              ; preds = %173, %62, %46, %26
  %188 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %188
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
