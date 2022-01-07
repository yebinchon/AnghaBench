; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.dp83640_private* }
%struct.dp83640_private = type { %struct.dp83640_clock* }
%struct.dp83640_clock = type { i32, i32, i32, i64 }

@PAGE4 = common dso_local global i32 0, align 4
@PTP_CTL = common dso_local global i32 0, align 4
@PTP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83640_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83640_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.dp83640_private*, align 8
  %4 = alloca %struct.dp83640_clock*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load %struct.dp83640_private*, %struct.dp83640_private** %6, align 8
  store %struct.dp83640_private* %7, %struct.dp83640_private** %3, align 8
  %8 = load %struct.dp83640_private*, %struct.dp83640_private** %3, align 8
  %9 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %8, i32 0, i32 0
  %10 = load %struct.dp83640_clock*, %struct.dp83640_clock** %9, align 8
  store %struct.dp83640_clock* %10, %struct.dp83640_clock** %4, align 8
  %11 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %12 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %17 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %16, i32 0, i32 2
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %22 = call i32 @recalibrate(%struct.dp83640_clock* %21)
  br label %35

23:                                               ; preds = %15, %1
  %24 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %25 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %28 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %29 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @enable_broadcast(%struct.phy_device* %27, i32 %30, i32 1)
  %32 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %33 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %23, %20
  %36 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %37 = call i32 @enable_status_frames(%struct.phy_device* %36, i32 1)
  %38 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %39 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %42 = load i32, i32* @PAGE4, align 4
  %43 = load i32, i32* @PTP_CTL, align 4
  %44 = load i32, i32* @PTP_ENABLE, align 4
  %45 = call i32 @ext_write(i32 0, %struct.phy_device* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %47 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret i32 0
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @recalibrate(%struct.dp83640_clock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @enable_broadcast(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @enable_status_frames(%struct.phy_device*, i32) #1

declare dso_local i32 @ext_write(i32, %struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
