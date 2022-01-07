; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_peer_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_peer_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_peer_set_param_cmd = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wmi vdev %d peer 0x%pM set param %d value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32)* @ath10k_wmi_op_gen_peer_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_peer_set_param(%struct.ath10k* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_peer_set_param_cmd*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %15 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %14, i32 32)
  store %struct.sk_buff* %15, %struct.sk_buff** %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  br label %53

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.wmi_peer_set_param_cmd*
  store %struct.wmi_peer_set_param_cmd* %26, %struct.wmi_peer_set_param_cmd** %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @__cpu_to_le32(i32 %27)
  %29 = load %struct.wmi_peer_set_param_cmd*, %struct.wmi_peer_set_param_cmd** %12, align 8
  %30 = getelementptr inbounds %struct.wmi_peer_set_param_cmd, %struct.wmi_peer_set_param_cmd* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = load %struct.wmi_peer_set_param_cmd*, %struct.wmi_peer_set_param_cmd** %12, align 8
  %34 = getelementptr inbounds %struct.wmi_peer_set_param_cmd, %struct.wmi_peer_set_param_cmd* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = load %struct.wmi_peer_set_param_cmd*, %struct.wmi_peer_set_param_cmd** %12, align 8
  %38 = getelementptr inbounds %struct.wmi_peer_set_param_cmd, %struct.wmi_peer_set_param_cmd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wmi_peer_set_param_cmd*, %struct.wmi_peer_set_param_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.wmi_peer_set_param_cmd, %struct.wmi_peer_set_param_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ether_addr_copy(i32 %42, i32* %43)
  %45 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %46 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ath10k_dbg(%struct.ath10k* %45, i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %47, i32* %48, i32 %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %6, align 8
  br label %53

53:                                               ; preds = %22, %18
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %54
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
