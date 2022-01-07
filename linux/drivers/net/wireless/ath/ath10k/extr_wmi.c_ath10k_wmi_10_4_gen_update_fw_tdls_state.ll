; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_gen_update_fw_tdls_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_gen_update_fw_tdls_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_10_4_tdls_set_state_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY = common dso_local global i32 0, align 4
@WMI_TDLS_ENABLE_ACTIVE = common dso_local global i32 0, align 4
@WMI_TDLS_ENABLE_PASSIVE = common dso_local global i32 0, align 4
@WMI_SERVICE_TDLS_UAPSD_BUFFER_STA = common dso_local global i32 0, align 4
@WMI_TDLS_BUFFER_STA_EN = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wmi update fw tdls state %d for vdev %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_10_4_gen_update_fw_tdls_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_4_gen_update_fw_tdls_state(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_10_4_tdls_set_state_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %11, i32 120)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sk_buff* @ERR_PTR(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  br label %104

19:                                               ; preds = %3
  %20 = load i32, i32* @WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY, align 4
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WMI_TDLS_ENABLE_ACTIVE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WMI_TDLS_ENABLE_PASSIVE, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %27, %19
  %34 = load i32, i32* @WMI_SERVICE_TDLS_UAPSD_BUFFER_STA, align 4
  %35 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @test_bit(i32 %34, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @WMI_TDLS_BUFFER_STA_EN, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.wmi_10_4_tdls_set_state_cmd*
  store %struct.wmi_10_4_tdls_set_state_cmd* %49, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %52, i32 0, i32 14
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @__cpu_to_le32(i32 %54)
  %56 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %56, i32 0, i32 13
  store i8* %55, i8** %57, align 8
  %58 = call i8* @__cpu_to_le32(i32 5000)
  %59 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %59, i32 0, i32 12
  store i8* %58, i8** %60, align 8
  %61 = call i8* @__cpu_to_le32(i32 100)
  %62 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %62, i32 0, i32 11
  store i8* %61, i8** %63, align 8
  %64 = call i8* @__cpu_to_le32(i32 5)
  %65 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %66 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %65, i32 0, i32 10
  store i8* %64, i8** %66, align 8
  %67 = call i8* @__cpu_to_le32(i32 -75)
  %68 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %68, i32 0, i32 9
  store i8* %67, i8** %69, align 8
  %70 = call i8* @__cpu_to_le32(i32 -20)
  %71 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i8* @__cpu_to_le32(i32 %73)
  %75 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %76 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = call i8* @__cpu_to_le32(i32 2)
  %78 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = call i8* @__cpu_to_le32(i32 5000)
  %81 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %82 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = call i8* @__cpu_to_le32(i32 15)
  %84 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = call i8* @__cpu_to_le32(i32 0)
  %87 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %88 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = call i8* @__cpu_to_le32(i32 10)
  %90 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %91 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = call i8* @__cpu_to_le32(i32 10)
  %93 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %94 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = call i8* @__cpu_to_le32(i32 96)
  %96 = load %struct.wmi_10_4_tdls_set_state_cmd*, %struct.wmi_10_4_tdls_set_state_cmd** %8, align 8
  %97 = getelementptr inbounds %struct.wmi_10_4_tdls_set_state_cmd, %struct.wmi_10_4_tdls_set_state_cmd* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %99 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ath10k_dbg(%struct.ath10k* %98, i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %4, align 8
  br label %104

104:                                              ; preds = %45, %15
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %105
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
