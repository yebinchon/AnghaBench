; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nic = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@phy_82552_v = common dso_local global i64 0, align 8
@E100_82552_LED_OVERRIDE = common dso_local global i32 0, align 4
@MII_LED_CONTROL = common dso_local global i32 0, align 4
@E100_82552_LED_ON = common dso_local global i32 0, align 4
@mac_82559_D101M = common dso_local global i32 0, align 4
@E100_82552_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e100_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nic* @netdev_priv(%struct.net_device* %9)
  store %struct.nic* %10, %struct.nic** %6, align 8
  %11 = load %struct.nic*, %struct.nic** %6, align 8
  %12 = getelementptr inbounds %struct.nic, %struct.nic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @phy_82552_v, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @E100_82552_LED_OVERRIDE, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MII_LED_CONTROL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %54 [
    i32 131, label %23
    i32 128, label %24
    i32 129, label %42
    i32 130, label %53
  ]

23:                                               ; preds = %20
  store i32 2, i32* %3, align 4
  br label %63

24:                                               ; preds = %20
  %25 = load %struct.nic*, %struct.nic** %6, align 8
  %26 = getelementptr inbounds %struct.nic, %struct.nic* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @phy_82552_v, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @E100_82552_LED_ON, align 4
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.nic*, %struct.nic** %6, align 8
  %34 = getelementptr inbounds %struct.nic, %struct.nic* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @mac_82559_D101M, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 7, i32 5
  br label %40

40:                                               ; preds = %32, %30
  %41 = phi i32 [ %31, %30 ], [ %39, %32 ]
  store i32 %41, i32* %8, align 4
  br label %54

42:                                               ; preds = %20
  %43 = load %struct.nic*, %struct.nic** %6, align 8
  %44 = getelementptr inbounds %struct.nic, %struct.nic* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @phy_82552_v, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @E100_82552_LED_OFF, align 4
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 4, %50 ]
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %20, %53, %51, %40
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.nic*, %struct.nic** %6, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mdio_write(%struct.net_device* %55, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
