; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_mdio_ctrl_phy_82552_v.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_mdio_ctrl_phy_82552_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_BMCR = common dso_local global i64 0, align 8
@mdi_write = common dso_local global i64 0, align 8
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i64, i64, i64, i32)* @mdio_ctrl_phy_82552_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_ctrl_phy_82552_v(%struct.nic* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.nic*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @MII_BMCR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %5
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @mdi_write, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @BMCR_ANRESTART, align 4
  %22 = load i32, i32* @BMCR_ANENABLE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.nic*, %struct.nic** %6, align 8
  %28 = getelementptr inbounds %struct.nic, %struct.nic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nic*, %struct.nic** %6, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MII_ADVERTISE, align 4
  %35 = call i32 @mdio_read(i32 %29, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ADVERTISE_100FULL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load i32, i32* @BMCR_SPEED100, align 4
  %42 = load i32, i32* @BMCR_FULLDPLX, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %56

46:                                               ; preds = %26
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @ADVERTISE_100HALF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @BMCR_SPEED100, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %19
  br label %58

58:                                               ; preds = %57, %15, %5
  %59 = load %struct.nic*, %struct.nic** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @mdio_ctrl_hw(%struct.nic* %59, i64 %60, i64 %61, i64 %62, i32 %63)
  ret i32 %64
}

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @mdio_ctrl_hw(%struct.nic*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
