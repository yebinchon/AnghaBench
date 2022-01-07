; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c___bond_opt_set_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c___bond_opt_set_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bond_opt_value = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@NETDEV_CHANGEINFODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bond_opt_set_notify(%struct.bonding* %0, i32 %1, %struct.bond_opt_value* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bond_opt_value*, align 8
  %7 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bond_opt_value* %2, %struct.bond_opt_value** %6, align 8
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.bonding*, %struct.bonding** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.bond_opt_value*, %struct.bond_opt_value** %6, align 8
  %14 = call i32 @__bond_opt_set(%struct.bonding* %11, i32 %12, %struct.bond_opt_value* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %3
  %18 = load %struct.bonding*, %struct.bonding** %4, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NETREG_REGISTERED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @NETDEV_CHANGEINFODATA, align 4
  %27 = load %struct.bonding*, %struct.bonding** %4, align 8
  %28 = getelementptr inbounds %struct.bonding, %struct.bonding* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @call_netdevice_notifiers(i32 %26, %struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %25, %17, %3
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @__bond_opt_set(%struct.bonding*, i32, %struct.bond_opt_value*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
