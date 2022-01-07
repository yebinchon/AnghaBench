; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_check_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_check_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i64, i32 }

@PHY_RUNNING = common dso_local global i64 0, align 8
@PHY_NOLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @phy_check_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_check_link_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 3
  %7 = call i32 @mutex_is_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = call i32 @phy_read_status(%struct.phy_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_RUNNING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i64, i64* @PHY_RUNNING, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = call i32 @phy_link_up(%struct.phy_device* %39)
  br label %59

41:                                               ; preds = %29, %24
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PHY_NOLINK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i64, i64* @PHY_NOLINK, align 8
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %57 = call i32 @phy_link_down(%struct.phy_device* %56, i32 1)
  br label %58

58:                                               ; preds = %52, %46, %41
  br label %59

59:                                               ; preds = %58, %35
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %22, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @phy_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_link_up(%struct.phy_device*) #1

declare dso_local i32 @phy_link_down(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
