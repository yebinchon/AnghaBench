; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i64, i64, %struct.b43_phy_g* }
%struct.b43_phy_g = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@B43_PHY_RFOVER = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_gphy_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_g*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  store %struct.b43_phy* %11, %struct.b43_phy** %5, align 8
  %12 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 3
  %14 = load %struct.b43_phy_g*, %struct.b43_phy_g** %13, align 8
  store %struct.b43_phy_g* %14, %struct.b43_phy_g** %6, align 8
  %15 = call i32 (...) @might_sleep()
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %2
  %19 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %97

24:                                               ; preds = %18
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = call i32 @b43_phy_write(%struct.b43_wldev* %25, i32 21, i32 32768)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 21, i32 52224)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %31 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 192, i32 0
  %36 = call i32 @b43_phy_write(%struct.b43_wldev* %29, i32 21, i32 %35)
  %37 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %38 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %24
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = load i32, i32* @B43_PHY_RFOVER, align 4
  %45 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %46 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @b43_phy_write(%struct.b43_wldev* %43, i32 %44, i32 %48)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %52 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %53 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %50, i32 %51, i32 %55)
  %57 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %58 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %42, %24
  %61 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %64, i32 6, i32 1)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %66, i32 %67, i32 0)
  br label %97

69:                                               ; preds = %2
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_PHY_RFOVER, align 4
  %72 = call i32 @b43_phy_read(%struct.b43_wldev* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %75 = call i32 @b43_phy_read(%struct.b43_wldev* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %78 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %82 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %85 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = load i32, i32* @B43_PHY_RFOVER, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, 140
  %91 = call i32 @b43_phy_write(%struct.b43_wldev* %87, i32 %88, i32 %90)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 65395
  %96 = call i32 @b43_phy_write(%struct.b43_wldev* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %23, %69, %60
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_gphy_channel_switch(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
