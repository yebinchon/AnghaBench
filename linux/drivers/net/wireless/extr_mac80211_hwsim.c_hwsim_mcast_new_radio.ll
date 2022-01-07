; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_mcast_new_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_mcast_new_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.hwsim_new_radio_params = type { i32 }
%struct.sk_buff = type { i32 }

@GENLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hwsim_genl_family = common dso_local global i32 0, align 4
@HWSIM_CMD_NEW_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.genl_info*, %struct.hwsim_new_radio_params*)* @hwsim_mcast_new_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwsim_mcast_new_radio(i32 %0, %struct.genl_info* %1, %struct.hwsim_new_radio_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.hwsim_new_radio_params*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.hwsim_new_radio_params* %2, %struct.hwsim_new_radio_params** %6, align 8
  %9 = load i32, i32* @GENLMSG_DEFAULT_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @genlmsg_new(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* @HWSIM_CMD_NEW_RADIO, align 4
  %18 = call i8* @genlmsg_put(%struct.sk_buff* %16, i32 0, i32 0, i32* @hwsim_genl_family, i32 0, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %6, align 8
  %26 = call i64 @append_radio_msg(%struct.sk_buff* %23, i32 %24, %struct.hwsim_new_radio_params* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @genlmsg_end(%struct.sk_buff* %30, i8* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = call i32 @hwsim_mcast_config_msg(%struct.sk_buff* %33, %struct.genl_info* %34)
  br label %39

36:                                               ; preds = %28, %21
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @nlmsg_free(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %36, %29, %14
  ret void
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @append_radio_msg(%struct.sk_buff*, i32, %struct.hwsim_new_radio_params*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @hwsim_mcast_config_msg(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
