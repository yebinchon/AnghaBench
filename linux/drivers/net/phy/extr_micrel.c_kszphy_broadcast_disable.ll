; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_broadcast_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_broadcast_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_KSZPHY_OMSO = common dso_local global i32 0, align 4
@KSZPHY_OMSO_B_CAST_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to disable broadcast address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @kszphy_broadcast_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kszphy_broadcast_disable(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = load i32, i32* @MII_KSZPHY_OMSO, align 4
  %6 = call i32 @phy_read(%struct.phy_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = load i32, i32* @MII_KSZPHY_OMSO, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @KSZPHY_OMSO_B_CAST_OFF, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @phy_write(%struct.phy_device* %11, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %10, %9
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = call i32 @phydev_err(%struct.phy_device* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
