; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_get_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_get_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EF4_FC_AUTO = common dso_local global i32 0, align 4
@EF4_FC_RX = common dso_local global i32 0, align 4
@EF4_FC_TX = common dso_local global i32 0, align 4
@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_LPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_mdio_get_pause(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %4 = load i32, i32* @EF4_FC_AUTO, align 4
  %5 = load i32, i32* @EF4_FC_RX, align 4
  %6 = load i32, i32* @EF4_FC_TX, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EF4_FC_AUTO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %22 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MDIO_DEVS_AN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %32 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mii_advertise_flowctrl(i32 %33)
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %36 = load i32, i32* @MDIO_MMD_AN, align 4
  %37 = load i32, i32* @MDIO_AN_LPA, align 4
  %38 = call i32 @ef4_mdio_read(%struct.ef4_nic* %35, i32 %36, i32 %37)
  %39 = call i32 @mii_resolve_flowctrl_fdx(i32 %34, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %20, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
