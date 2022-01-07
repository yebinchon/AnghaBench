; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.phy_device = type { i32, i32, i32, i32 }

@TG3_PHYFLG_IS_CONNECTED = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_start(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca %struct.phy_device*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = getelementptr inbounds %struct.tg3, %struct.tg3* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.phy_device* @mdiobus_get_phy(i32 %14, i32 %17)
  store %struct.phy_device* %18, %struct.phy_device** %3, align 8
  %19 = load %struct.tg3*, %struct.tg3** %2, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %11
  %26 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tg3*, %struct.tg3** %2, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tg3*, %struct.tg3** %2, align 8
  %39 = getelementptr inbounds %struct.tg3, %struct.tg3* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tg3*, %struct.tg3** %2, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tg3*, %struct.tg3** %2, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %25, %11
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = call i32 @phy_start(%struct.phy_device* %59)
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = call i32 @phy_start_aneg(%struct.phy_device* %61)
  br label %63

63:                                               ; preds = %58, %10
  ret void
}

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
