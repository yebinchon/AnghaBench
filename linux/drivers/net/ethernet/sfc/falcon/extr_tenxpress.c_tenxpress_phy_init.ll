; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*)* }

@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@TENXPRESS_REQUIRED_DEVS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @tenxpress_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tenxpress_phy_init(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %6 = call %struct.TYPE_4__* @falcon_board(%struct.ef4_nic* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %9, align 8
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = call i32 %10(%struct.ef4_nic* %11)
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %1
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %21 = load i32, i32* @TENXPRESS_REQUIRED_DEVS, align 4
  %22 = call i32 @ef4_mdio_wait_reset_mmds(%struct.ef4_nic* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %19
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %29 = load i32, i32* @TENXPRESS_REQUIRED_DEVS, align 4
  %30 = call i32 @ef4_mdio_check_mmds(%struct.ef4_nic* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %38 = call i32 @tenxpress_init(%struct.ef4_nic* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %36
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %46 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ef4_link_set_wanted_fc(%struct.ef4_nic* %44, i32 %47)
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %50 = call i32 @ef4_mdio_an_reconfigure(%struct.ef4_nic* %49)
  %51 = load i32, i32* @HZ, align 4
  %52 = sdiv i32 %51, 5
  %53 = call i32 @schedule_timeout_uninterruptible(i32 %52)
  %54 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %55 = call i32 @falcon_reset_xaui(%struct.ef4_nic* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %41, %33, %25
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_4__* @falcon_board(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_mdio_wait_reset_mmds(%struct.ef4_nic*, i32) #1

declare dso_local i32 @ef4_mdio_check_mmds(%struct.ef4_nic*, i32) #1

declare dso_local i32 @tenxpress_init(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_link_set_wanted_fc(%struct.ef4_nic*, i32) #1

declare dso_local i32 @ef4_mdio_an_reconfigure(%struct.ef4_nic*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @falcon_reset_xaui(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
