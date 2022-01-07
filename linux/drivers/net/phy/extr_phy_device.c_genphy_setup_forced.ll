; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_setup_forced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_setup_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i64, i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_setup_forced(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 3
  store i64 0, i64* %5, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* @SPEED_1000, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @BMCR_SPEED1000, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i64, i64* @SPEED_100, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @BMCR_SPEED100, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i64, i64* @DUPLEX_FULL, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @BMCR_FULLDPLX, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %40 = load i32, i32* @MII_BMCR, align 4
  %41 = load i32, i32* @BMCR_LOOPBACK, align 4
  %42 = load i32, i32* @BMCR_ISOLATE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BMCR_PDOWN, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @phy_modify(%struct.phy_device* %39, i32 %40, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
