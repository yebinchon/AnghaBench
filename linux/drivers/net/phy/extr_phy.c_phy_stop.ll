; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"called from state %s\0A\00", align 1
@PHY_HALTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_stop(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = call i32 @phy_is_started(%struct.phy_device* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @phy_state_to_str(i32 %9)
  %11 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @PHY_HALTED, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @phy_state_machine(i32* %24)
  %26 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %27 = call i32 @phy_stop_machine(%struct.phy_device* %26)
  br label %28

28:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @phy_is_started(%struct.phy_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @phy_state_to_str(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_state_machine(i32*) #1

declare dso_local i32 @phy_stop_machine(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
