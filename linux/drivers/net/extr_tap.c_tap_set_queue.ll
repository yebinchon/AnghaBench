; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_set_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_set_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_dev = type { i64, i64, i64, i32, i32, i32, %struct.file*, i32, i32*, i32 }
%struct.file = type { %struct.tap_queue* }
%struct.tap_queue = type { i64, i64, i64, i32, i32, i32, %struct.file*, i32, i32*, i32 }

@MAX_TAP_QUEUES = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_dev*, %struct.file*, %struct.tap_queue*)* @tap_set_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_set_queue(%struct.tap_dev* %0, %struct.file* %1, %struct.tap_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tap_dev*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.tap_queue*, align 8
  store %struct.tap_dev* %0, %struct.tap_dev** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.tap_queue* %2, %struct.tap_queue** %7, align 8
  %8 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %9 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX_TAP_QUEUES, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %18 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %21 = bitcast %struct.tap_dev* %20 to %struct.tap_queue*
  %22 = call i32 @rcu_assign_pointer(i32 %19, %struct.tap_queue* %21)
  %23 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %24 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %27 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %32 = call i32 @rcu_assign_pointer(i32 %30, %struct.tap_queue* %31)
  %33 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %34 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %33, i32 0, i32 7
  %35 = call i32 @sock_hold(i32* %34)
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %38 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %37, i32 0, i32 6
  store %struct.file* %36, %struct.file** %38, align 8
  %39 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %40 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %43 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %45 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %44, i32 0, i32 3
  store i32 1, i32* %45, align 8
  %46 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  store %struct.tap_queue* %46, %struct.tap_queue** %48, align 8
  %49 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %50 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %49, i32 0, i32 5
  %51 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %52 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %51, i32 0, i32 4
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %55 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.tap_dev*, %struct.tap_dev** %5, align 8
  %59 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %16, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tap_queue*) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
