; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9031_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9031_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}* }

@MII_STAT1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ksz9031_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9031_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @genphy_read_status(%struct.phy_device* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = load i32, i32* @MII_STAT1000, align 4
  %15 = call i32 @phy_read(%struct.phy_device* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @phy_init_hw(%struct.phy_device* %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.phy_device*)**
  %29 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %28, align 8
  %30 = icmp ne i32 (%struct.phy_device*)* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = call i64 @phy_interrupt_is_valid(%struct.phy_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.phy_device*)**
  %41 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %40, align 8
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 %41(%struct.phy_device* %42)
  br label %44

44:                                               ; preds = %35, %31, %19
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = call i32 @genphy_config_aneg(%struct.phy_device* %45)
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_init_hw(%struct.phy_device*) #1

declare dso_local i64 @phy_interrupt_is_valid(%struct.phy_device*) #1

declare dso_local i32 @genphy_config_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
