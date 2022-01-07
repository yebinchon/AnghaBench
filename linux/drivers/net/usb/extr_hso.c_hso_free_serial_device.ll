; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_free_serial_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_free_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.hso_serial = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_device*)* @hso_free_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_serial_device(%struct.hso_device* %0) #0 {
  %2 = alloca %struct.hso_device*, align 8
  %3 = alloca %struct.hso_serial*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %2, align 8
  %4 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %5 = bitcast %struct.hso_device* %4 to %struct.hso_serial*
  %6 = call %struct.hso_serial* @dev2ser(%struct.hso_serial* %5)
  store %struct.hso_serial* %6, %struct.hso_serial** %3, align 8
  %7 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %8 = icmp ne %struct.hso_serial* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %12 = call i32 @hso_serial_common_free(%struct.hso_serial* %11)
  %13 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %14 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %19 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %24 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %32 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @hso_free_shared_int(%struct.TYPE_2__* %33)
  br label %41

35:                                               ; preds = %17
  %36 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %37 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41, %10
  %43 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %44 = call i32 @hso_free_tiomget(%struct.hso_serial* %43)
  %45 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %46 = call i32 @kfree(%struct.hso_serial* %45)
  %47 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %48 = bitcast %struct.hso_device* %47 to %struct.hso_serial*
  %49 = call i32 @kfree(%struct.hso_serial* %48)
  br label %50

50:                                               ; preds = %42, %9
  ret void
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.hso_serial*) #1

declare dso_local i32 @hso_serial_common_free(%struct.hso_serial*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hso_free_shared_int(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hso_free_tiomget(%struct.hso_serial*) #1

declare dso_local i32 @kfree(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
