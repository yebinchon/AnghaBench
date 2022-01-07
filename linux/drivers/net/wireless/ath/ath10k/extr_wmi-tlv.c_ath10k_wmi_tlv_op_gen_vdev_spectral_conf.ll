; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_spectral_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_spectral_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_spectral_conf_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_vdev_spectral_conf_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VDEV_SPECTRAL_CONFIGURE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_spectral_conf_arg*)* @ath10k_wmi_tlv_op_gen_vdev_spectral_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_vdev_spectral_conf(%struct.ath10k* %0, %struct.wmi_vdev_spectral_conf_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_vdev_spectral_conf_arg*, align 8
  %6 = alloca %struct.wmi_vdev_spectral_conf_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wmi_tlv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_vdev_spectral_conf_arg* %1, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  store i64 176, i64* %10, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %11, i64 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  br label %154

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %26, %struct.wmi_tlv** %8, align 8
  %27 = load i32, i32* @WMI_TLV_TAG_STRUCT_VDEV_SPECTRAL_CONFIGURE_CMD, align 4
  %28 = call i8* @__cpu_to_le16(i32 %27)
  %29 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %30 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = call i8* @__cpu_to_le16(i32 152)
  %32 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %33 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %35 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.wmi_vdev_spectral_conf_cmd*
  store %struct.wmi_vdev_spectral_conf_cmd* %38, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %39 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %40 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %39, i32 0, i32 18
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @__cpu_to_le32(i32 %41)
  %43 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %43, i32 0, i32 18
  store i8* %42, i8** %44, align 8
  %45 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %49, i32 0, i32 17
  store i8* %48, i8** %50, align 8
  %51 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %52 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @__cpu_to_le32(i32 %53)
  %55 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %55, i32 0, i32 16
  store i8* %54, i8** %56, align 8
  %57 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %58 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @__cpu_to_le32(i32 %59)
  %61 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %61, i32 0, i32 15
  store i8* %60, i8** %62, align 8
  %63 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %64 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @__cpu_to_le32(i32 %65)
  %67 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %67, i32 0, i32 14
  store i8* %66, i8** %68, align 8
  %69 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %70 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @__cpu_to_le32(i32 %71)
  %73 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %73, i32 0, i32 13
  store i8* %72, i8** %74, align 8
  %75 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %76 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @__cpu_to_le32(i32 %77)
  %79 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %82 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @__cpu_to_le32(i32 %83)
  %85 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %85, i32 0, i32 11
  store i8* %84, i8** %86, align 8
  %87 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %88 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @__cpu_to_le32(i32 %89)
  %91 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %91, i32 0, i32 10
  store i8* %90, i8** %92, align 8
  %93 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %94 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @__cpu_to_le32(i32 %95)
  %97 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %98 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %97, i32 0, i32 9
  store i8* %96, i8** %98, align 8
  %99 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %100 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @__cpu_to_le32(i32 %101)
  %103 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %104 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %106 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @__cpu_to_le32(i32 %107)
  %109 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  %111 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %112 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @__cpu_to_le32(i32 %113)
  %115 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %118 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @__cpu_to_le32(i32 %119)
  %121 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %122 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %124 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @__cpu_to_le32(i32 %125)
  %127 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %128 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %130 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @__cpu_to_le32(i32 %131)
  %133 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %134 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %136 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @__cpu_to_le32(i32 %137)
  %139 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %140 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %142 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @__cpu_to_le32(i32 %143)
  %145 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %146 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.wmi_vdev_spectral_conf_arg*, %struct.wmi_vdev_spectral_conf_arg** %5, align 8
  %148 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @__cpu_to_le32(i32 %149)
  %151 = load %struct.wmi_vdev_spectral_conf_cmd*, %struct.wmi_vdev_spectral_conf_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_cmd, %struct.wmi_vdev_spectral_conf_cmd* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %153, %struct.sk_buff** %3, align 8
  br label %154

154:                                              ; preds = %20, %16
  %155 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %155
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
