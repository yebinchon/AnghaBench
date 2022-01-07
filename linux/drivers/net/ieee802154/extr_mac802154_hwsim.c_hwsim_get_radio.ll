; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_get_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_get_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hwsim_phy = type { i32 }
%struct.netlink_callback = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@hwsim_genl_family = common dso_local global i32 0, align 4
@MAC802154_HWSIM_CMD_GET_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hwsim_phy*, i32, i32, %struct.netlink_callback*, i32)* @hwsim_get_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_get_radio(%struct.sk_buff* %0, %struct.hwsim_phy* %1, i32 %2, i32 %3, %struct.netlink_callback* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hwsim_phy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netlink_callback*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.hwsim_phy* %1, %struct.hwsim_phy** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.netlink_callback* %4, %struct.netlink_callback** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @MAC802154_HWSIM_CMD_GET_RADIO, align 4
  %23 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32* @hwsim_genl_family, i32 %21, i32 %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %52

29:                                               ; preds = %6
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %12, align 8
  %31 = icmp ne %struct.netlink_callback* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %12, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %39 = call i32 @append_radio_msg(%struct.sk_buff* %37, %struct.hwsim_phy* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @genlmsg_end(%struct.sk_buff* %44, i8* %45)
  store i32 0, i32* %7, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @genlmsg_cancel(%struct.sk_buff* %48, i8* %49)
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %43, %26
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i32 @append_radio_msg(%struct.sk_buff*, %struct.hwsim_phy*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
