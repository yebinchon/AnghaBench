; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i64, i32, i32 }

@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @genphy_c45_read_link(%struct.phy_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* @SPEED_UNKNOWN, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AUTONEG_ENABLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %11
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = call i32 @genphy_c45_read_lpa(%struct.phy_device* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %27
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = call i32 @phy_resolve_aneg_linkmode(%struct.phy_device* %35)
  br label %40

37:                                               ; preds = %11
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = call i32 @genphy_c45_read_pma(%struct.phy_device* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %32, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @genphy_c45_read_link(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_read_lpa(%struct.phy_device*) #1

declare dso_local i32 @phy_resolve_aneg_linkmode(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_read_pma(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
