; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_up_cmd = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wmi mgmt vdev up id 0x%x assoc id %d bssid %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32*)* @ath10k_wmi_op_gen_vdev_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_vdev_up(%struct.ath10k* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wmi_vdev_up_cmd*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %13 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %12, i32 24)
  store %struct.sk_buff* %13, %struct.sk_buff** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.wmi_vdev_up_cmd*
  store %struct.wmi_vdev_up_cmd* %24, %struct.wmi_vdev_up_cmd** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @__cpu_to_le32(i32 %25)
  %27 = load %struct.wmi_vdev_up_cmd*, %struct.wmi_vdev_up_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.wmi_vdev_up_cmd, %struct.wmi_vdev_up_cmd* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @__cpu_to_le32(i32 %29)
  %31 = load %struct.wmi_vdev_up_cmd*, %struct.wmi_vdev_up_cmd** %10, align 8
  %32 = getelementptr inbounds %struct.wmi_vdev_up_cmd, %struct.wmi_vdev_up_cmd* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.wmi_vdev_up_cmd*, %struct.wmi_vdev_up_cmd** %10, align 8
  %34 = getelementptr inbounds %struct.wmi_vdev_up_cmd, %struct.wmi_vdev_up_cmd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @ether_addr_copy(i32 %36, i32* %37)
  %39 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %40 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ath10k_dbg(%struct.ath10k* %39, i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %5, align 8
  br label %46

46:                                               ; preds = %20, %16
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %47
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
