; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_pktlog_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_pktlog_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_pdev_pktlog_enable_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_PKTLOG_ANY = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wmi enable pktlog filter 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32)* @ath10k_wmi_op_gen_pktlog_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_pktlog_enable(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_pdev_pktlog_enable_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %8, i32 4)
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.sk_buff* @ERR_PTR(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* @ATH10K_PKTLOG_ANY, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.wmi_pdev_pktlog_enable_cmd*
  store %struct.wmi_pdev_pktlog_enable_cmd* %23, %struct.wmi_pdev_pktlog_enable_cmd** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @__cpu_to_le32(i32 %24)
  %26 = load %struct.wmi_pdev_pktlog_enable_cmd*, %struct.wmi_pdev_pktlog_enable_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.wmi_pdev_pktlog_enable_cmd, %struct.wmi_pdev_pktlog_enable_cmd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %29 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ath10k_dbg(%struct.ath10k* %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %33

33:                                               ; preds = %16, %12
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %34
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
