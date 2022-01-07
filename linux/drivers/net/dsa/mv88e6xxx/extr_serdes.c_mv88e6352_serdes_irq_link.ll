; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6352_serdes_irq_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6352_serdes_irq_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.dsa_switch* }
%struct.dsa_switch = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e6xxx_chip*, i32)* @mv88e6352_serdes_irq_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6352_serdes_irq_link(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %10 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %9, i32 0, i32 0
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %10, align 8
  store %struct.dsa_switch* %11, %struct.dsa_switch** %5, align 8
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %13 = load i32, i32* @MII_BMSR, align 4
  %14 = call i32 @mv88e6352_serdes_read(%struct.mv88e6xxx_chip* %12, i32 %13, i32* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %20 = load i32, i32* @MII_BMSR, align 4
  %21 = call i32 @mv88e6352_serdes_read(%struct.mv88e6xxx_chip* %19, i32 %20, i32* %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BMSR_LSTATUS, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dsa_port_phylink_mac_change(%struct.dsa_switch* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %24, %17
  ret void
}

declare dso_local i32 @mv88e6352_serdes_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @dsa_port_phylink_mac_change(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
