; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to remap in-chip Port VLAN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.net_device*)* @mv88e6xxx_port_bridge_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_port_bridge_leave(%struct.dsa_switch* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  store %struct.mv88e6xxx_chip* %10, %struct.mv88e6xxx_chip** %7, align 8
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %12 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %11)
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i64 @mv88e6xxx_bridge_map(%struct.mv88e6xxx_chip* %13, %struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @mv88e6xxx_port_vlan_map(%struct.mv88e6xxx_chip* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %3
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %24 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %29 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %28)
  ret void
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i64 @mv88e6xxx_bridge_map(%struct.mv88e6xxx_chip*, %struct.net_device*) #1

declare dso_local i64 @mv88e6xxx_port_vlan_map(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
