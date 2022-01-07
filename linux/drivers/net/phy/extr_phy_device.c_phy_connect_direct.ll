; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_connect_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_connect_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.phy_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_connect_direct(%struct.net_device* %0, %struct.phy_device* %1, void (%struct.net_device*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca void (%struct.net_device*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.phy_device* %1, %struct.phy_device** %7, align 8
  store void (%struct.net_device*)* %2, void (%struct.net_device*)** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %39

16:                                               ; preds = %4
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @phy_attach_direct(%struct.net_device* %17, %struct.phy_device* %18, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %30 = load void (%struct.net_device*)*, void (%struct.net_device*)** %8, align 8
  %31 = call i32 @phy_prepare_link(%struct.phy_device* %29, void (%struct.net_device*)* %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %33 = call i64 @phy_interrupt_is_valid(%struct.phy_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %37 = call i32 @phy_request_interrupt(%struct.phy_device* %36)
  br label %38

38:                                               ; preds = %35, %28
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %26, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @phy_attach_direct(%struct.net_device*, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_prepare_link(%struct.phy_device*, void (%struct.net_device*)*) #1

declare dso_local i64 @phy_interrupt_is_valid(%struct.phy_device*) #1

declare dso_local i32 @phy_request_interrupt(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
