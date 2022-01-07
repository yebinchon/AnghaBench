; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_attr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_attr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.switchdev_trans = type { i32 }
%struct.ocelot_port = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)* @ocelot_port_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_attr_set(%struct.net_device* %0, %struct.switchdev_attr* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_attr*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca %struct.ocelot_port*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_attr* %1, %struct.switchdev_attr** %5, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %9)
  store %struct.ocelot_port* %10, %struct.ocelot_port** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %12 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %51 [
    i32 128, label %14
    i32 131, label %22
    i32 129, label %29
    i32 130, label %41
  ]

14:                                               ; preds = %3
  %15 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %16 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %17 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %18 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ocelot_port_attr_stp_state_set(%struct.ocelot_port* %15, %struct.switchdev_trans* %16, i32 %20)
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %24 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %25 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ocelot_port_attr_ageing_set(%struct.ocelot_port* %23, i32 %27)
  br label %54

29:                                               ; preds = %3
  %30 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %31 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %35 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %37 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %40 = call i32 @ocelot_vlan_port_apply(i32 %38, %struct.ocelot_port* %39)
  br label %54

41:                                               ; preds = %3
  %42 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %43 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %44 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @ocelot_port_attr_mc_set(%struct.ocelot_port* %42, i32 %49)
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %41, %29, %22, %14
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_port_attr_stp_state_set(%struct.ocelot_port*, %struct.switchdev_trans*, i32) #1

declare dso_local i32 @ocelot_port_attr_ageing_set(%struct.ocelot_port*, i32) #1

declare dso_local i32 @ocelot_vlan_port_apply(i32, %struct.ocelot_port*) #1

declare dso_local i32 @ocelot_port_attr_mc_set(%struct.ocelot_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
