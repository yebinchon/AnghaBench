; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_4_op_gen_bb_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_4_op_gen_bb_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_bb_timing_cfg_arg = type { i32, i32 }
%struct.wmi_pdev_bb_timing_cfg_cmd = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"wmi pdev bb_tx_timing 0x%x bb_xpa_timing 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_bb_timing_cfg_arg*)* @ath10k_wmi_10_2_4_op_gen_bb_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_2_4_op_gen_bb_timing(%struct.ath10k* %0, %struct.wmi_bb_timing_cfg_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_bb_timing_cfg_arg*, align 8
  %6 = alloca %struct.wmi_pdev_bb_timing_cfg_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_bb_timing_cfg_arg* %1, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %8, i32 16)
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.sk_buff* @ERR_PTR(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.wmi_pdev_bb_timing_cfg_cmd*
  store %struct.wmi_pdev_bb_timing_cfg_cmd* %20, %struct.wmi_pdev_bb_timing_cfg_cmd** %6, align 8
  %21 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %22 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @__cpu_to_le32(i32 %23)
  %25 = load %struct.wmi_pdev_bb_timing_cfg_cmd*, %struct.wmi_pdev_bb_timing_cfg_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.wmi_pdev_bb_timing_cfg_cmd, %struct.wmi_pdev_bb_timing_cfg_cmd* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %28 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @__cpu_to_le32(i32 %29)
  %31 = load %struct.wmi_pdev_bb_timing_cfg_cmd*, %struct.wmi_pdev_bb_timing_cfg_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.wmi_pdev_bb_timing_cfg_cmd, %struct.wmi_pdev_bb_timing_cfg_cmd* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %35 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %36 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %39 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ath10k_dbg(%struct.ath10k* %33, i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %3, align 8
  br label %43

43:                                               ; preds = %16, %12
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %44
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
