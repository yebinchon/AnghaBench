; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_release_and_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_release_and_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bonding = type { i32 }

@IFF_DISABLE_NETPOLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Destroying bond\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @bond_release_and_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_release_and_destroy(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bonding* @netdev_priv(%struct.net_device* %7)
  store %struct.bonding* %8, %struct.bonding** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @__bond_release_one(%struct.net_device* %9, %struct.net_device* %10, i32 0, i32 1)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.bonding*, %struct.bonding** %5, align 8
  %16 = call i32 @bond_has_slaves(%struct.bonding* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @IFF_DISABLE_NETPOLL, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netdev_info(%struct.net_device* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.bonding*, %struct.bonding** %5, align 8
  %27 = call i32 @bond_remove_proc_entry(%struct.bonding* %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @unregister_netdevice(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %18, %14, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__bond_release_one(%struct.net_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @bond_has_slaves(%struct.bonding*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @bond_remove_proc_entry(%struct.bonding*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
