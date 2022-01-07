; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_free_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_free_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_dev = type { i32 }
%struct.major_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_free_minor(i32 %0, %struct.tap_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tap_dev*, align 8
  %5 = alloca %struct.major_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tap_dev* %1, %struct.tap_dev** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @MAJOR(i32 %7)
  %9 = call %struct.major_info* @tap_get_major(i32 %8)
  store %struct.major_info* %9, %struct.major_info** %5, align 8
  %10 = load %struct.major_info*, %struct.major_info** %5, align 8
  %11 = icmp ne %struct.major_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.major_info*, %struct.major_info** %5, align 8
  %15 = getelementptr inbounds %struct.major_info, %struct.major_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.major_info*, %struct.major_info** %5, align 8
  %23 = getelementptr inbounds %struct.major_info, %struct.major_info* %22, i32 0, i32 1
  %24 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %25 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @idr_remove(i32* %23, i32 %26)
  %28 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %29 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %13
  %31 = load %struct.major_info*, %struct.major_info** %5, align 8
  %32 = getelementptr inbounds %struct.major_info, %struct.major_info* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %12
  %35 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.major_info* @tap_get_major(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
