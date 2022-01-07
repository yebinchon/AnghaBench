; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_stop_serial_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_stop_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }
%struct.hso_serial = type { i32, %struct.hso_tiocmget*, %struct.TYPE_2__*, %struct.urb*, i64, i64*, %struct.urb** }
%struct.hso_tiocmget = type { %struct.urb*, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.urb* }
%struct.urb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_device*)* @hso_stop_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_stop_serial_device(%struct.hso_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca %struct.hso_tiocmget*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %3, align 8
  %8 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %9 = call %struct.hso_serial* @dev2ser(%struct.hso_device* %8)
  store %struct.hso_serial* %9, %struct.hso_serial** %5, align 8
  %10 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %11 = icmp ne %struct.hso_serial* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %120

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %19 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %24 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %23, i32 0, i32 6
  %25 = load %struct.urb**, %struct.urb*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.urb*, %struct.urb** %25, i64 %27
  %29 = load %struct.urb*, %struct.urb** %28, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %33 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %32, i32 0, i32 6
  %34 = load %struct.urb**, %struct.urb*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.urb*, %struct.urb** %34, i64 %36
  %38 = load %struct.urb*, %struct.urb** %37, align 8
  %39 = call i32 @usb_kill_urb(%struct.urb* %38)
  %40 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %31, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %16

50:                                               ; preds = %16
  %51 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %52 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %54 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %53, i32 0, i32 3
  %55 = load %struct.urb*, %struct.urb** %54, align 8
  %56 = icmp ne %struct.urb* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %59 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %58, i32 0, i32 3
  %60 = load %struct.urb*, %struct.urb** %59, align 8
  %61 = call i32 @usb_kill_urb(%struct.urb* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %64 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %69 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %74 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %67
  %80 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %81 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %89 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load %struct.urb*, %struct.urb** %91, align 8
  store %struct.urb* %92, %struct.urb** %7, align 8
  %93 = load %struct.urb*, %struct.urb** %7, align 8
  %94 = icmp ne %struct.urb* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.urb*, %struct.urb** %7, align 8
  %97 = call i32 @usb_kill_urb(%struct.urb* %96)
  br label %98

98:                                               ; preds = %95, %87
  br label %99

99:                                               ; preds = %98, %79, %67
  %100 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %101 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %99, %62
  %106 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %107 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %106, i32 0, i32 1
  %108 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %107, align 8
  store %struct.hso_tiocmget* %108, %struct.hso_tiocmget** %6, align 8
  %109 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %110 = icmp ne %struct.hso_tiocmget* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %113 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %112, i32 0, i32 1
  %114 = call i32 @wake_up_interruptible(i32* %113)
  %115 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %116 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %115, i32 0, i32 0
  %117 = load %struct.urb*, %struct.urb** %116, align 8
  %118 = call i32 @usb_kill_urb(%struct.urb* %117)
  br label %119

119:                                              ; preds = %111, %105
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %12
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.hso_device*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
