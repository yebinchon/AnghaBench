; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to power off SERDES\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @mv88e6xxx_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_port_disable(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  store %struct.mv88e6xxx_chip* %8, %struct.mv88e6xxx_chip** %5, align 8
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %10 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %9)
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @mv88e6xxx_serdes_power(%struct.mv88e6xxx_chip* %11, i32 %12, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %22 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %21)
  ret void
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i64 @mv88e6xxx_serdes_power(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
