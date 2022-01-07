; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_reset_phy_processor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_reset_phy_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_JMICRON_JMC250 = common dso_local global i64 0, align 8
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_reset_phy_processor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_reset_phy_processor(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MII_ADVERTISE, align 4
  %12 = load i32, i32* @ADVERTISE_ALL, align 4
  %13 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @jme_mdio_write(i32 %6, i32 %10, i32 %11, i32 %16)
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMC250, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MII_CTRL1000, align 4
  %34 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %35 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @jme_mdio_write(i32 %28, i32 %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MII_BMCR, align 4
  %47 = call i32 @jme_mdio_read(i32 %41, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MII_BMCR, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @BMCR_RESET, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @jme_mdio_write(i32 %50, i32 %54, i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @jme_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
