; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_error_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_error_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Received CAN error event for cmd_no (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unhandled error event (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_error_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_error_event(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %5 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %24 [
    i32 128, label %9
    i32 129, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %11 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %12 = call i32 @kvaser_usb_hydra_error_event_parameter(%struct.kvaser_usb* %10, %struct.kvaser_cmd* %11)
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %15 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %24, %13, %9
  ret void
}

declare dso_local i32 @kvaser_usb_hydra_error_event_parameter(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
