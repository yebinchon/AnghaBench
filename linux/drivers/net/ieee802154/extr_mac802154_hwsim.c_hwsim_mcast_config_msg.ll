; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_mcast_config_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_mcast_config_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }

@hwsim_genl_family = common dso_local global i32 0, align 4
@HWSIM_MCGRP_CONFIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.genl_info*)* @hwsim_mcast_config_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwsim_mcast_config_msg(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %5 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %6 = icmp ne %struct.genl_info* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %10 = load i32, i32* @HWSIM_MCGRP_CONFIG, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @genl_notify(i32* @hwsim_genl_family, %struct.sk_buff* %8, %struct.genl_info* %9, i32 %10, i32 %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = load i32, i32* @HWSIM_MCGRP_CONFIG, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @genlmsg_multicast(i32* @hwsim_genl_family, %struct.sk_buff* %14, i32 0, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %7
  ret void
}

declare dso_local i32 @genl_notify(i32*, %struct.sk_buff*, %struct.genl_info*, i32, i32) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
