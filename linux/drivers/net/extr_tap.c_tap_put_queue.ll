; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_put_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_put_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32, i32, i32, i64 }
%struct.tap_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tap_queue*)* @tap_put_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tap_put_queue(%struct.tap_queue* %0) #0 {
  %2 = alloca %struct.tap_queue*, align 8
  %3 = alloca %struct.tap_dev*, align 8
  store %struct.tap_queue* %0, %struct.tap_queue** %2, align 8
  %4 = call i32 (...) @rtnl_lock()
  %5 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %6 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.tap_dev* @rtnl_dereference(i32 %7)
  store %struct.tap_dev* %8, %struct.tap_dev** %3, align 8
  %9 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %10 = icmp ne %struct.tap_dev* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %13 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %18 = call i32 @tap_disable_queue(%struct.tap_queue* %17)
  %19 = call i32 @BUG_ON(i32 %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %22 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %26 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @RCU_INIT_POINTER(i32 %27, i32* null)
  %29 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %30 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %29, i32 0, i32 0
  %31 = call i32 @sock_put(i32* %30)
  %32 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %33 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %32, i32 0, i32 1
  %34 = call i32 @list_del_init(i32* %33)
  br label %35

35:                                               ; preds = %20, %1
  %36 = call i32 (...) @rtnl_unlock()
  %37 = call i32 (...) @synchronize_rcu()
  %38 = load %struct.tap_queue*, %struct.tap_queue** %2, align 8
  %39 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %38, i32 0, i32 0
  %40 = call i32 @sock_put(i32* %39)
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.tap_dev* @rtnl_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tap_disable_queue(%struct.tap_queue*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @sock_put(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
