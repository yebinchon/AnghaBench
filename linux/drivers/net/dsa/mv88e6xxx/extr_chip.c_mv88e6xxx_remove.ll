; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32 }
%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdio_device*)* @mv88e6xxx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_remove(%struct.mdio_device* %0) #0 {
  %2 = alloca %struct.mdio_device*, align 8
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %2, align 8
  %5 = load %struct.mdio_device*, %struct.mdio_device** %2, align 8
  %6 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %5, i32 0, i32 0
  %7 = call %struct.dsa_switch* @dev_get_drvdata(i32* %6)
  store %struct.dsa_switch* %7, %struct.dsa_switch** %3, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 0
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  store %struct.mv88e6xxx_chip* %10, %struct.mv88e6xxx_chip** %4, align 8
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %12 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %19 = call i32 @mv88e6xxx_hwtstamp_free(%struct.mv88e6xxx_chip* %18)
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %21 = call i32 @mv88e6xxx_ptp_free(%struct.mv88e6xxx_chip* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %24 = call i32 @mv88e6xxx_phy_destroy(%struct.mv88e6xxx_chip* %23)
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %26 = call i32 @mv88e6xxx_unregister_switch(%struct.mv88e6xxx_chip* %25)
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %28 = call i32 @mv88e6xxx_mdios_unregister(%struct.mv88e6xxx_chip* %27)
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %30 = call i32 @mv88e6xxx_g1_vtu_prob_irq_free(%struct.mv88e6xxx_chip* %29)
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %32 = call i32 @mv88e6xxx_g1_atu_prob_irq_free(%struct.mv88e6xxx_chip* %31)
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %41 = call i32 @mv88e6xxx_g2_irq_free(%struct.mv88e6xxx_chip* %40)
  br label %42

42:                                               ; preds = %39, %22
  %43 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %44 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %49 = call i32 @mv88e6xxx_g1_irq_free(%struct.mv88e6xxx_chip* %48)
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %52 = call i32 @mv88e6xxx_irq_poll_free(%struct.mv88e6xxx_chip* %51)
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

declare dso_local %struct.dsa_switch* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mv88e6xxx_hwtstamp_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_ptp_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_phy_destroy(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_unregister_switch(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_mdios_unregister(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_prob_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_prob_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_irq_poll_free(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
