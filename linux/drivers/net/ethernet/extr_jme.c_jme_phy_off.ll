; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_phy_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_phy_off(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = call i32 @jme_mdio_read(i32 %6, i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @BMCR_PDOWN, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @jme_mdio_write(i32 %18, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @new_phy_power_ctrl(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %33 = call i32 @jme_new_phy_off(%struct.jme_adapter* %32)
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @jme_mdio_write(i32, i32, i32, i32) #1

declare dso_local i64 @new_phy_power_ctrl(i32) #1

declare dso_local i32 @jme_new_phy_off(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
