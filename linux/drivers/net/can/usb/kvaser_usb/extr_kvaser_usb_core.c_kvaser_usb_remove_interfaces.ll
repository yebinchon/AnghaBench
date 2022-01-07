; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_remove_interfaces.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_remove_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*)* @kvaser_usb_remove_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_remove_interfaces(%struct.kvaser_usb* %0) #0 {
  %2 = alloca %struct.kvaser_usb*, align 8
  %3 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %7 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %12 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %31

20:                                               ; preds = %10
  %21 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @unregister_candev(i32 %29)
  br label %31

31:                                               ; preds = %20, %19
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  %35 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %36 = call i32 @kvaser_usb_unlink_all_urbs(%struct.kvaser_usb* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %64, %34
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %40 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %45 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %64

53:                                               ; preds = %43
  %54 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %55 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @free_candev(i32 %62)
  br label %64

64:                                               ; preds = %53, %52
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %37

67:                                               ; preds = %37
  ret void
}

declare dso_local i32 @unregister_candev(i32) #1

declare dso_local i32 @kvaser_usb_unlink_all_urbs(%struct.kvaser_usb*) #1

declare dso_local i32 @free_candev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
