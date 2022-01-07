; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_update_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_M1011_PHY_STATUS = common dso_local global i32 0, align 4
@REGISTER_LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @marvell_update_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_update_link(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = load i32, i32* @MII_M1011_PHY_STATUS, align 4
  %12 = call i32 @phy_read(%struct.phy_device* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %9
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @REGISTER_LINK_STATUS, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = call i32 @genphy_update_link(%struct.phy_device* %30)
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @genphy_update_link(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
