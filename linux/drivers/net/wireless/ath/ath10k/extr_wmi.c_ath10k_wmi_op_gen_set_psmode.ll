; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_set_psmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_set_psmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_sta_powersave_mode_cmd = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wmi set powersave id 0x%x mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_op_gen_set_psmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_set_psmode(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_sta_powersave_mode_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %11 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %10, i32 16)
  store %struct.sk_buff* %11, %struct.sk_buff** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.sk_buff* @ERR_PTR(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.wmi_sta_powersave_mode_cmd*
  store %struct.wmi_sta_powersave_mode_cmd* %22, %struct.wmi_sta_powersave_mode_cmd** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @__cpu_to_le32(i32 %23)
  %25 = load %struct.wmi_sta_powersave_mode_cmd*, %struct.wmi_sta_powersave_mode_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.wmi_sta_powersave_mode_cmd, %struct.wmi_sta_powersave_mode_cmd* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @__cpu_to_le32(i32 %27)
  %29 = load %struct.wmi_sta_powersave_mode_cmd*, %struct.wmi_sta_powersave_mode_cmd** %8, align 8
  %30 = getelementptr inbounds %struct.wmi_sta_powersave_mode_cmd, %struct.wmi_sta_powersave_mode_cmd* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %32 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ath10k_dbg(%struct.ath10k* %31, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  br label %37

37:                                               ; preds = %18, %14
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %38
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
