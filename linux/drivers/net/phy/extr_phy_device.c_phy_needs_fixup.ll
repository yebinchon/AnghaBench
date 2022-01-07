; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_needs_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_needs_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.phy_fixup = type { i32, i32, i32 }

@PHY_ANY_ID = common dso_local global i32 0, align 4
@PHY_ANY_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.phy_fixup*)* @phy_needs_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_needs_fixup(%struct.phy_device* %0, %struct.phy_fixup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.phy_fixup*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.phy_fixup* %1, %struct.phy_fixup** %5, align 8
  %6 = load %struct.phy_fixup*, %struct.phy_fixup** %5, align 8
  %7 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = call i32 @phydev_name(%struct.phy_device* %9)
  %11 = call i64 @strcmp(i32 %8, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.phy_fixup*, %struct.phy_fixup** %5, align 8
  %15 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PHY_ANY_ID, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.phy_fixup*, %struct.phy_fixup** %5, align 8
  %24 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.phy_fixup*, %struct.phy_fixup** %5, align 8
  %27 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.phy_fixup*, %struct.phy_fixup** %5, align 8
  %34 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %29, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load %struct.phy_fixup*, %struct.phy_fixup** %5, align 8
  %40 = getelementptr inbounds %struct.phy_fixup, %struct.phy_fixup* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PHY_ANY_UID, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %22
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
