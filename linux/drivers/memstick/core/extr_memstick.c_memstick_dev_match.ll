; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_dev_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.memstick_device_id = type { i32, i64, i64, i64 }

@MEMSTICK_MATCH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, %struct.memstick_device_id*)* @memstick_dev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memstick_dev_match(%struct.memstick_dev* %0, %struct.memstick_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca %struct.memstick_device_id*, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store %struct.memstick_device_id* %1, %struct.memstick_device_id** %5, align 8
  %6 = load %struct.memstick_device_id*, %struct.memstick_device_id** %5, align 8
  %7 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MEMSTICK_MATCH_ALL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.memstick_device_id*, %struct.memstick_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %17 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = load %struct.memstick_device_id*, %struct.memstick_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %26 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.memstick_device_id*, %struct.memstick_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %35 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %42

40:                                               ; preds = %30, %21, %12
  br label %41

41:                                               ; preds = %40, %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
