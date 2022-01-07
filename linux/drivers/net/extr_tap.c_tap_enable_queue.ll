; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_enable_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_enable_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_dev = type { i64, i32* }
%struct.file = type { i32 }
%struct.tap_queue = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_dev*, %struct.file*, %struct.tap_queue*)* @tap_enable_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_enable_queue(%struct.tap_dev* %0, %struct.file* %1, %struct.tap_queue* %2) #0 {
  %4 = alloca %struct.tap_dev*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tap_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.tap_dev* %0, %struct.tap_dev** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.tap_queue* %2, %struct.tap_queue** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %12 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %38

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %17 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %21 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %26 = call i32 @rcu_assign_pointer(i32 %24, %struct.tap_queue* %25)
  %27 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %28 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %31 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %33 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %35 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %16, %15
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tap_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
