; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_put_uapsd_ac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_put_uapsd_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_sta_uapsd_auto_trig_arg = type { i32, i32, i32, i32, i32 }
%struct.wmi_sta_uapsd_auto_trig_param = type { i8*, i8*, i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@WMI_TLV_TAG_STRUCT_STA_UAPSD_AUTO_TRIG_PARAM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"wmi tlv vdev sta uapsd auto trigger ac %d prio %d svc int %d susp int %d delay int %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ath10k*, i8*, %struct.wmi_sta_uapsd_auto_trig_arg*)* @ath10k_wmi_tlv_put_uapsd_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ath10k_wmi_tlv_put_uapsd_ac(%struct.ath10k* %0, i8* %1, %struct.wmi_sta_uapsd_auto_trig_arg* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wmi_sta_uapsd_auto_trig_arg*, align 8
  %7 = alloca %struct.wmi_sta_uapsd_auto_trig_param*, align 8
  %8 = alloca %struct.wmi_tlv*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wmi_sta_uapsd_auto_trig_arg* %2, %struct.wmi_sta_uapsd_auto_trig_arg** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %10, %struct.wmi_tlv** %8, align 8
  %11 = load i32, i32* @WMI_TLV_TAG_STRUCT_STA_UAPSD_AUTO_TRIG_PARAM, align 4
  %12 = call i8* @__cpu_to_le16(i32 %11)
  %13 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %14 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = call i8* @__cpu_to_le16(i32 40)
  %16 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %17 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %19 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.wmi_sta_uapsd_auto_trig_param*
  store %struct.wmi_sta_uapsd_auto_trig_param* %22, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %23 = load %struct.wmi_sta_uapsd_auto_trig_arg*, %struct.wmi_sta_uapsd_auto_trig_arg** %6, align 8
  %24 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_arg, %struct.wmi_sta_uapsd_auto_trig_arg* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @__cpu_to_le32(i32 %25)
  %27 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %28 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.wmi_sta_uapsd_auto_trig_arg*, %struct.wmi_sta_uapsd_auto_trig_arg** %6, align 8
  %30 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_arg, %struct.wmi_sta_uapsd_auto_trig_arg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %34 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_sta_uapsd_auto_trig_arg*, %struct.wmi_sta_uapsd_auto_trig_arg** %6, align 8
  %36 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_arg, %struct.wmi_sta_uapsd_auto_trig_arg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__cpu_to_le32(i32 %37)
  %39 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %40 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.wmi_sta_uapsd_auto_trig_arg*, %struct.wmi_sta_uapsd_auto_trig_arg** %6, align 8
  %42 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_arg, %struct.wmi_sta_uapsd_auto_trig_arg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @__cpu_to_le32(i32 %43)
  %45 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %46 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.wmi_sta_uapsd_auto_trig_arg*, %struct.wmi_sta_uapsd_auto_trig_arg** %6, align 8
  %48 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_arg, %struct.wmi_sta_uapsd_auto_trig_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @__cpu_to_le32(i32 %49)
  %51 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %52 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %55 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %56 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %59 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %62 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %65 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.wmi_sta_uapsd_auto_trig_param*, %struct.wmi_sta_uapsd_auto_trig_param** %7, align 8
  %68 = getelementptr inbounds %struct.wmi_sta_uapsd_auto_trig_param, %struct.wmi_sta_uapsd_auto_trig_param* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @ath10k_dbg(%struct.ath10k* %53, i32 %54, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %60, i8* %63, i8* %66, i8* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr i8, i8* %71, i64 24
  %73 = getelementptr i8, i8* %72, i64 40
  ret i8* %73
}

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
