; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_read_status_page_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_read_status_page_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, i64, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_read_status_page_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_read_status_page_fixed(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BMCR, align 4
  %7 = call i32 @phy_read(%struct.phy_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BMCR_FULLDPLX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @DUPLEX_FULL, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @DUPLEX_HALF, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BMCR_SPEED1000, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @SPEED_1000, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %48

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BMCR_SPEED100, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @SPEED_100, align 4
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  br label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @SPEED_10, align 4
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @linkmode_zero(i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %48, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
