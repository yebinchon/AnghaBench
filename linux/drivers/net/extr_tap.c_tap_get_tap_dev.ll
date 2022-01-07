; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_tap_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_tap_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_dev = type { i32 }
%struct.tap_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tap_dev* (%struct.tap_queue*)* @tap_get_tap_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tap_dev* @tap_get_tap_dev(%struct.tap_queue* %0) #0 {
  %2 = alloca %struct.tap_queue*, align 8
  %3 = alloca %struct.tap_dev*, align 8
  store %struct.tap_queue* %0, %struct.tap_queue** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %6 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.tap_dev* @rtnl_dereference(i32 %7)
  store %struct.tap_dev* %8, %struct.tap_dev** %3, align 8
  %9 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %10 = icmp ne %struct.tap_dev* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %13 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_hold(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  ret %struct.tap_dev* %17
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.tap_dev* @rtnl_dereference(i32) #1

declare dso_local i32 @dev_hold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
