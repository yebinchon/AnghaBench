; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_status.c_uvc_event_entity_find_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_status.c_uvc_event_entity_find_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.uvc_entity = type { i32, %struct.uvc_control* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uvc_control* (%struct.uvc_entity*, i64)* @uvc_event_entity_find_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uvc_control* @uvc_event_entity_find_ctrl(%struct.uvc_entity* %0, i64 %1) #0 {
  %3 = alloca %struct.uvc_control*, align 8
  %4 = alloca %struct.uvc_entity*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_entity* %0, %struct.uvc_entity** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.uvc_entity*, %struct.uvc_entity** %4, align 8
  %9 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %8, i32 0, i32 1
  %10 = load %struct.uvc_control*, %struct.uvc_control** %9, align 8
  store %struct.uvc_control* %10, %struct.uvc_control** %6, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.uvc_entity*, %struct.uvc_entity** %4, align 8
  %14 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %19 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  store %struct.uvc_control* %25, %struct.uvc_control** %3, align 8
  br label %33

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %31 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %30, i32 1
  store %struct.uvc_control* %31, %struct.uvc_control** %6, align 8
  br label %11

32:                                               ; preds = %11
  store %struct.uvc_control* null, %struct.uvc_control** %3, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.uvc_control*, %struct.uvc_control** %3, align 8
  ret %struct.uvc_control* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
