; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_dev_get_by_tap_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_dev_get_by_tap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.major_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tap_dev* (i32, i32)* @dev_get_by_tap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tap_dev* @dev_get_by_tap_file(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tap_dev*, align 8
  %7 = alloca %struct.major_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.major_info* @tap_get_major(i32 %9)
  store %struct.major_info* %10, %struct.major_info** %7, align 8
  %11 = load %struct.major_info*, %struct.major_info** %7, align 8
  %12 = icmp ne %struct.major_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.tap_dev* null, %struct.tap_dev** %6, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.major_info*, %struct.major_info** %7, align 8
  %16 = getelementptr inbounds %struct.major_info, %struct.major_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.major_info*, %struct.major_info** %7, align 8
  %19 = getelementptr inbounds %struct.major_info, %struct.major_info* %18, i32 0, i32 1
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.tap_dev* @idr_find(i32* %19, i32 %20)
  store %struct.tap_dev* %21, %struct.tap_dev** %6, align 8
  %22 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %23 = icmp ne %struct.tap_dev* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %26 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @dev_hold(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %24, %14
  %31 = load %struct.major_info*, %struct.major_info** %7, align 8
  %32 = getelementptr inbounds %struct.major_info, %struct.major_info* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %13
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  ret %struct.tap_dev* %36
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.major_info* @tap_get_major(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tap_dev* @idr_find(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
