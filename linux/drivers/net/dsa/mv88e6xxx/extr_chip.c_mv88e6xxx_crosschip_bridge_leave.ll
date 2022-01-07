; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_crosschip_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_crosschip_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to remap cross-chip Port VLAN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, %struct.net_device*)* @mv88e6xxx_crosschip_bridge_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_crosschip_bridge_leave(%struct.dsa_switch* %0, i32 %1, i32 %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 1
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  store %struct.mv88e6xxx_chip* %12, %struct.mv88e6xxx_chip** %9, align 8
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %14 = call i32 @mv88e6xxx_has_pvt(%struct.mv88e6xxx_chip* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %33

17:                                               ; preds = %4
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %19 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %18)
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @mv88e6xxx_pvt_map(%struct.mv88e6xxx_chip* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %27 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %32 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %31)
  br label %33

33:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @mv88e6xxx_has_pvt(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i64 @mv88e6xxx_pvt_map(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
