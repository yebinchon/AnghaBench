; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_get_phy_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_get_phy_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }
%struct.phy_c45_device_ids = type { i32 }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32*, i32, %struct.phy_c45_device_ids*)* @get_phy_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phy_id(%struct.mii_bus* %0, i32 %1, i32* %2, i32 %3, %struct.phy_c45_device_ids* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.phy_c45_device_ids*, align 8
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.phy_c45_device_ids* %4, %struct.phy_c45_device_ids** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %20 = call i32 @get_phy_c45_ids(%struct.mii_bus* %16, i32 %17, i32* %18, %struct.phy_c45_device_ids* %19)
  store i32 %20, i32* %6, align 4
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MII_PHYSID1, align 4
  %25 = call i32 @mdiobus_read(%struct.mii_bus* %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  store i32 %45, i32* %6, align 4
  br label %64

46:                                               ; preds = %21
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 16
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MII_PHYSID2, align 4
  %53 = call i32 @mdiobus_read(%struct.mii_bus* %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %64

59:                                               ; preds = %46
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %56, %44, %15
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @get_phy_c45_ids(%struct.mii_bus*, i32, i32*, %struct.phy_c45_device_ids*) #1

declare dso_local i32 @mdiobus_read(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
