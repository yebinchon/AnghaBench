; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_cortina.c_cortina_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_cortina.c_cortina_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32 }

@VILLA_GLOBAL_GPIO_1_INTS = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @cortina_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cortina_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = load i32, i32* @VILLA_GLOBAL_GPIO_1_INTS, align 4
  %7 = call i32 @cortina_read_reg(%struct.phy_device* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* @SPEED_10000, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @DUPLEX_FULL, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %28

25:                                               ; preds = %12
  %26 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @cortina_read_reg(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
