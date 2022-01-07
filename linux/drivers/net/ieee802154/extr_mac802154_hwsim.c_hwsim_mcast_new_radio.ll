; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_mcast_new_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_mcast_new_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.hwsim_phy = type { i32 }
%struct.sk_buff = type { i32 }

@GENLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hwsim_genl_family = common dso_local global i32 0, align 4
@MAC802154_HWSIM_CMD_NEW_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genl_info*, %struct.hwsim_phy*)* @hwsim_mcast_new_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwsim_mcast_new_radio(%struct.genl_info* %0, %struct.hwsim_phy* %1) #0 {
  %3 = alloca %struct.genl_info*, align 8
  %4 = alloca %struct.hwsim_phy*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %3, align 8
  store %struct.hwsim_phy* %1, %struct.hwsim_phy** %4, align 8
  %7 = load i32, i32* @GENLMSG_DEFAULT_SIZE, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sk_buff* @genlmsg_new(i32 %7, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @MAC802154_HWSIM_CMD_NEW_RADIO, align 4
  %16 = call i8* @genlmsg_put(%struct.sk_buff* %14, i32 0, i32 0, i32* @hwsim_genl_family, i32 0, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.hwsim_phy*, %struct.hwsim_phy** %4, align 8
  %23 = call i64 @append_radio_msg(%struct.sk_buff* %21, %struct.hwsim_phy* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %33

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @genlmsg_end(%struct.sk_buff* %27, i8* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %32 = call i32 @hwsim_mcast_config_msg(%struct.sk_buff* %30, %struct.genl_info* %31)
  br label %39

33:                                               ; preds = %25, %19
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @genlmsg_cancel(%struct.sk_buff* %34, i8* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @nlmsg_free(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %33, %26, %12
  ret void
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @append_radio_msg(%struct.sk_buff*, %struct.hwsim_phy*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @hwsim_mcast_config_msg(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
