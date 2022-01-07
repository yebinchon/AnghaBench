; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @team_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %12 = load i64, i64* @IFLA_ADDRESS, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp eq %struct.nlattr* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 @eth_hw_addr_random(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %16, %5
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @register_netdevice(%struct.net_device* %20)
  ret i32 %21
}

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
