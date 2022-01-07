; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"powering down PHY\0A\00", align 1
@B44_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_PHY_PDOWN = common dso_local global i32 0, align 4
@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@B44_CHIP_RESET_FULL = common dso_local global i32 0, align 4
@B44_CHIP_RESET_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_halt(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %3 = load %struct.b44*, %struct.b44** %2, align 8
  %4 = call i32 @b44_disable_ints(%struct.b44* %3)
  %5 = load %struct.b44*, %struct.b44** %2, align 8
  %6 = call i32 @b44_phy_reset(%struct.b44* %5)
  %7 = load %struct.b44*, %struct.b44** %2, align 8
  %8 = getelementptr inbounds %struct.b44, %struct.b44* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netdev_info(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.b44*, %struct.b44** %2, align 8
  %12 = load i32, i32* @B44_MAC_CTRL, align 4
  %13 = load i32, i32* @MAC_CTRL_PHY_PDOWN, align 4
  %14 = call i32 @bw32(%struct.b44* %11, i32 %12, i32 %13)
  %15 = load %struct.b44*, %struct.b44** %2, align 8
  %16 = getelementptr inbounds %struct.b44, %struct.b44* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.b44*, %struct.b44** %2, align 8
  %23 = load i32, i32* @B44_CHIP_RESET_FULL, align 4
  %24 = call i32 @b44_chip_reset(%struct.b44* %22, i32 %23)
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.b44*, %struct.b44** %2, align 8
  %27 = load i32, i32* @B44_CHIP_RESET_PARTIAL, align 4
  %28 = call i32 @b44_chip_reset(%struct.b44* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @b44_disable_ints(%struct.b44*) #1

declare dso_local i32 @b44_phy_reset(%struct.b44*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_chip_reset(%struct.b44*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
