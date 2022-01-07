; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_an_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_an_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*, i32)* }
%struct.TYPE_4__ = type { i32 }

@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_RESV = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_ENABLE = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_RESTART = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_XNP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_mdio_an_reconfigure(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MDIO_DEVS_AN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* @ADVERTISE_CSMA, align 4
  %15 = load i32, i32* @ADVERTISE_RESV, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ADVERTISED_Pause, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %29 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %40 = load i32, i32* @MDIO_MMD_AN, align 4
  %41 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ef4_mdio_write(%struct.ef4_nic* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %45 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ef4_nic*, i32)*, i32 (%struct.ef4_nic*, i32)** %47, align 8
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %50 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %51 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %48(%struct.ef4_nic* %49, i32 %52)
  %54 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %55 = load i32, i32* @MDIO_MMD_AN, align 4
  %56 = load i32, i32* @MDIO_CTRL1, align 4
  %57 = call i32 @ef4_mdio_read(%struct.ef4_nic* %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @MDIO_AN_CTRL1_ENABLE, align 4
  %59 = load i32, i32* @MDIO_AN_CTRL1_RESTART, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @MDIO_AN_CTRL1_XNP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %66 = load i32, i32* @MDIO_MMD_AN, align 4
  %67 = load i32, i32* @MDIO_CTRL1, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ef4_mdio_write(%struct.ef4_nic* %65, i32 %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ef4_mdio_write(%struct.ef4_nic*, i32, i32, i32) #1

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
