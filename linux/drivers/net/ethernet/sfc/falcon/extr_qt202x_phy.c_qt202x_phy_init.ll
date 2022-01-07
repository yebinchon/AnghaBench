; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_qt202x_phy.c_qt202x_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_qt202x_phy.c_qt202x_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64, i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PHY init failed\0A\00", align 1
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"PHY ID reg %x (OUI %06x model %02x revision %x)\0A\00", align 1
@PHY_TYPE_QT2025C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @qt202x_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt202x_phy_init(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = call i32 @qt202x_reset_phy(%struct.ef4_nic* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = load i32, i32* @probe, align 4
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_err(%struct.ef4_nic* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %20 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %21 = call i32 @ef4_mdio_read_id(%struct.ef4_nic* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %23 = load i32, i32* @probe, align 4
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %25 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ef4_mdio_id_oui(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ef4_mdio_id_model(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ef4_mdio_id_rev(i32 %32)
  %34 = call i32 @netif_info(%struct.ef4_nic* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33)
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %36 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PHY_TYPE_QT2025C, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %18
  %41 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %42 = call i32 @qt2025c_firmware_id(%struct.ef4_nic* %41)
  br label %43

43:                                               ; preds = %40, %18
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @qt202x_reset_phy(%struct.ef4_nic*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_mdio_read_id(%struct.ef4_nic*, i32) #1

declare dso_local i32 @netif_info(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ef4_mdio_id_oui(i32) #1

declare dso_local i32 @ef4_mdio_id_model(i32) #1

declare dso_local i32 @ef4_mdio_id_rev(i32) #1

declare dso_local i32 @qt2025c_firmware_id(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
