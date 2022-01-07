; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@container_list_lock = common dso_local global i32 0, align 4
@enclosure_null_callbacks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enclosure_unregister(%struct.enclosure_device* %0) #0 {
  %2 = alloca %struct.enclosure_device*, align 8
  %3 = alloca i32, align 4
  store %struct.enclosure_device* %0, %struct.enclosure_device** %2, align 8
  %4 = call i32 @mutex_lock(i32* @container_list_lock)
  %5 = load %struct.enclosure_device*, %struct.enclosure_device** %2, align 8
  %6 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %5, i32 0, i32 4
  %7 = call i32 @list_del(i32* %6)
  %8 = call i32 @mutex_unlock(i32* @container_list_lock)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.enclosure_device*, %struct.enclosure_device** %2, align 8
  %12 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.enclosure_device*, %struct.enclosure_device** %2, align 8
  %17 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.enclosure_device*, %struct.enclosure_device** %2, align 8
  %27 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @device_unregister(i32* %32)
  br label %34

34:                                               ; preds = %25, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load %struct.enclosure_device*, %struct.enclosure_device** %2, align 8
  %40 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %39, i32 0, i32 2
  store i32* @enclosure_null_callbacks, i32** %40, align 8
  %41 = load %struct.enclosure_device*, %struct.enclosure_device** %2, align 8
  %42 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %41, i32 0, i32 1
  %43 = call i32 @device_unregister(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
