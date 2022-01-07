; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_ext_resource_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_ext_resource_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_ext_resource_config_10_4_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_SERVICE_TDLS_UAPSD_SLEEP_STA = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_TDLS_SLEEP_STA = common dso_local global i32 0, align 4
@WMI_NO_COEX_VERSION_SUPPORT = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_TDLS_VDEVS = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_TDLS_BUFFER_STA = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"wmi ext resource config host type %d firmware feature bitmap %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_10_4_ext_resource_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_4_ext_resource_config(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_ext_resource_config_10_4_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %11, i32 88)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sk_buff* @ERR_PTR(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  br label %79

19:                                               ; preds = %3
  %20 = load i32, i32* @WMI_SERVICE_TDLS_UAPSD_SLEEP_STA, align 4
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @TARGET_10_4_NUM_TDLS_SLEEP_STA, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.wmi_ext_resource_config_10_4_cmd*
  store %struct.wmi_ext_resource_config_10_4_cmd* %33, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @__cpu_to_le32(i32 %34)
  %36 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %37 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @__cpu_to_le32(i32 %38)
  %40 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = call i8* @__cpu_to_le32(i32 -1)
  %43 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %43, i32 0, i32 8
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @WMI_NO_COEX_VERSION_SUPPORT, align 4
  %46 = call i8* @__cpu_to_le32(i32 %45)
  %47 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = call i8* @__cpu_to_le32(i32 -1)
  %50 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = call i8* @__cpu_to_le32(i32 -1)
  %53 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %54 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = call i8* @__cpu_to_le32(i32 -1)
  %56 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @TARGET_10_4_NUM_TDLS_VDEVS, align 4
  %59 = call i8* @__cpu_to_le32(i32 %58)
  %60 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = call i8* @__cpu_to_le32(i32 20)
  %63 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @__cpu_to_le32(i32 %65)
  %67 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %68 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @TARGET_10_4_NUM_TDLS_BUFFER_STA, align 4
  %70 = call i8* @__cpu_to_le32(i32 %69)
  %71 = load %struct.wmi_ext_resource_config_10_4_cmd*, %struct.wmi_ext_resource_config_10_4_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.wmi_ext_resource_config_10_4_cmd, %struct.wmi_ext_resource_config_10_4_cmd* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %74 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @ath10k_dbg(%struct.ath10k* %73, i32 %74, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %4, align 8
  br label %79

79:                                               ; preds = %29, %15
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %80
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
