; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c___set_linkmode_max_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c___set_linkmode_max_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_setting = type { i64, i32 }

@settings = common dso_local global %struct.phy_setting* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @__set_linkmode_max_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_linkmode_max_speed(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.phy_setting*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.phy_setting*, %struct.phy_setting** @settings, align 8
  store %struct.phy_setting* %7, %struct.phy_setting** %5, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.phy_setting*, %struct.phy_setting** @settings, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.phy_setting* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.phy_setting*, %struct.phy_setting** %5, align 8
  %15 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.phy_setting*, %struct.phy_setting** %5, align 8
  %21 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = call i32 @linkmode_clear_bit(i32 %22, i64* %23)
  br label %26

25:                                               ; preds = %13
  br label %32

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load %struct.phy_setting*, %struct.phy_setting** %5, align 8
  %31 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %30, i32 1
  store %struct.phy_setting* %31, %struct.phy_setting** %5, align 8
  br label %8

32:                                               ; preds = %25, %8
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.phy_setting*) #1

declare dso_local i32 @linkmode_clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
