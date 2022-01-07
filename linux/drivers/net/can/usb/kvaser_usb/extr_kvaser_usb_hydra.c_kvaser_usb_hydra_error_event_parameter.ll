; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_error_event_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_error_event_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"CMD_START_CHIP_REQ error in parameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"CMD_STOP_CHIP_REQ error in parameter\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"CMD_FLUSH_QUEUE error in parameter\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Set bittiming failed. Error in parameter\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Set data bittiming failed. Error in parameter\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Unhandled parameter error event cmd_no (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_error_event_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_error_event_parameter(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %5 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  switch i32 %9, label %40 [
    i32 129, label %10
    i32 128, label %16
    i32 132, label %22
    i32 130, label %28
    i32 131, label %34
  ]

10:                                               ; preds = %2
  %11 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %12 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_warn(i32* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_warn(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %24 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_warn(i32* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %30 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_warn(i32* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %36 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_warn(i32* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %42 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = call i32 (i32*, i8*, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %40, %34, %28, %22, %16, %10
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
