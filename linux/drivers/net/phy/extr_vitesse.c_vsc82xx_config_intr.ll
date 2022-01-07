; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc82xx_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc82xx_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MII_VSC8244_IMASK = common dso_local global i32 0, align 4
@PHY_ID_VSC8234 = common dso_local global i64 0, align 8
@PHY_ID_VSC8244 = common dso_local global i64 0, align 8
@PHY_ID_VSC8572 = common dso_local global i64 0, align 8
@PHY_ID_VSC8601 = common dso_local global i64 0, align 8
@MII_VSC8244_IMASK_MASK = common dso_local global i32 0, align 4
@MII_VSC8221_IMASK_MASK = common dso_local global i32 0, align 4
@MII_VSC8244_ISTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc82xx_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc82xx_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = load i32, i32* @MII_VSC8244_IMASK, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PHY_ID_VSC8234, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %10
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PHY_ID_VSC8244, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PHY_ID_VSC8572, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PHY_ID_VSC8601, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36, %28, %20, %10
  %45 = load i32, i32* @MII_VSC8244_IMASK_MASK, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @MII_VSC8221_IMASK_MASK, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @phy_write(%struct.phy_device* %11, i32 %12, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %1
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = load i32, i32* @MII_VSC8244_ISTAT, align 4
  %54 = call i32 @phy_read(%struct.phy_device* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %51
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = load i32, i32* @MII_VSC8244_IMASK, align 4
  %62 = call i32 @phy_write(%struct.phy_device* %60, i32 %61, i32 0)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %48
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
