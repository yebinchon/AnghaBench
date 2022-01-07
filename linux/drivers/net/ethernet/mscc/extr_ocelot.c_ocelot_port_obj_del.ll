; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_obj_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_obj_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*)* @ocelot_port_obj_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_obj_del(%struct.net_device* %0, %struct.switchdev_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_obj*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %8 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 128, label %10
    i32 129, label %15
  ]

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %13 = call i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj* %12)
  %14 = call i32 @ocelot_port_vlan_del_vlan(%struct.net_device* %11, i32 %13)
  store i32 %14, i32* %6, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %18 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %17)
  %19 = call i32 @ocelot_port_obj_del_mdb(%struct.net_device* %16, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %15, %10
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ocelot_port_vlan_del_vlan(%struct.net_device*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj*) #1

declare dso_local i32 @ocelot_port_obj_del_mdb(%struct.net_device*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
