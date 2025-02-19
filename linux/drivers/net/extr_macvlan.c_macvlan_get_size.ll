; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @macvlan_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @macvlan_get_size(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macvlan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %4)
  store %struct.macvlan_dev* %5, %struct.macvlan_dev** %3, align 8
  %6 = call i64 @nla_total_size(i32 4)
  %7 = add i64 0, %6
  %8 = call i64 @nla_total_size(i32 2)
  %9 = add i64 %7, %8
  %10 = call i64 @nla_total_size(i32 4)
  %11 = add i64 %9, %10
  %12 = load %struct.macvlan_dev*, %struct.macvlan_dev** %3, align 8
  %13 = call i64 @macvlan_get_size_mac(%struct.macvlan_dev* %12)
  %14 = add i64 %11, %13
  ret i64 %14
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @macvlan_get_size_mac(%struct.macvlan_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
