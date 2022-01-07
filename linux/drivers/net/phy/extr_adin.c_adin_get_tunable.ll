; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_get_tunable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_get_tunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_tunable = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_tunable*, i8*)* @adin_get_tunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_get_tunable(%struct.phy_device* %0, %struct.ethtool_tunable* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.ethtool_tunable*, align 8
  %7 = alloca i8*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store %struct.ethtool_tunable* %1, %struct.ethtool_tunable** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.ethtool_tunable*, %struct.ethtool_tunable** %6, align 8
  %9 = getelementptr inbounds %struct.ethtool_tunable, %struct.ethtool_tunable* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %15
  ]

11:                                               ; preds = %3
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @adin_get_downshift(%struct.phy_device* %12, i8* %13)
  store i32 %14, i32* %4, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @adin_get_edpd(%struct.phy_device* %16, i8* %17)
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15, %11
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @adin_get_downshift(%struct.phy_device*, i8*) #1

declare dso_local i32 @adin_get_edpd(%struct.phy_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
