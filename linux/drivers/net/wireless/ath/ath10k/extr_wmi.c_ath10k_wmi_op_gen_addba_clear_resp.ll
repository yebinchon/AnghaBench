; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_addba_clear_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_addba_clear_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_addba_clear_resp_cmd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wmi addba clear resp vdev_id 0x%X mac_addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32*)* @ath10k_wmi_op_gen_addba_clear_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_addba_clear_resp(%struct.ath10k* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wmi_addba_clear_resp_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.sk_buff* @ERR_PTR(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  br label %46

16:                                               ; preds = %3
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %17, i32 8)
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sk_buff* @ERR_PTR(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  br label %46

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.wmi_addba_clear_resp_cmd*
  store %struct.wmi_addba_clear_resp_cmd* %29, %struct.wmi_addba_clear_resp_cmd** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__cpu_to_le32(i32 %30)
  %32 = load %struct.wmi_addba_clear_resp_cmd*, %struct.wmi_addba_clear_resp_cmd** %8, align 8
  %33 = getelementptr inbounds %struct.wmi_addba_clear_resp_cmd, %struct.wmi_addba_clear_resp_cmd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wmi_addba_clear_resp_cmd*, %struct.wmi_addba_clear_resp_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.wmi_addba_clear_resp_cmd, %struct.wmi_addba_clear_resp_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ether_addr_copy(i32 %37, i32* %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %41 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ath10k_dbg(%struct.ath10k* %40, i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42, i32* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %4, align 8
  br label %46

46:                                               ; preds = %25, %21, %12
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %47
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
