; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_configure_msg_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_configure_msg_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@C_CAN_MSG_OBJ_RX_FIRST = common dso_local global i32 0, align 4
@C_CAN_NO_OF_OBJECTS = common dso_local global i32 0, align 4
@IF_RX = common dso_local global i32 0, align 4
@C_CAN_MSG_OBJ_RX_LAST = common dso_local global i32 0, align 4
@IF_MCONT_RCV = common dso_local global i32 0, align 4
@IF_MCONT_RCV_EOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @c_can_configure_msg_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_configure_msg_objects(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load i32, i32* @C_CAN_MSG_OBJ_RX_FIRST, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @C_CAN_NO_OF_OBJECTS, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @IF_RX, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @c_can_inval_msg_object(%struct.net_device* %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %5

17:                                               ; preds = %5
  %18 = load i32, i32* @C_CAN_MSG_OBJ_RX_FIRST, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %29, %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @C_CAN_MSG_OBJ_RX_LAST, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load i32, i32* @IF_RX, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IF_MCONT_RCV, align 4
  %28 = call i32 @c_can_setup_receive_object(%struct.net_device* %24, i32 %25, i32 %26, i32 0, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @IF_RX, align 4
  %35 = load i32, i32* @C_CAN_MSG_OBJ_RX_LAST, align 4
  %36 = load i32, i32* @IF_MCONT_RCV_EOB, align 4
  %37 = call i32 @c_can_setup_receive_object(%struct.net_device* %33, i32 %34, i32 %35, i32 0, i32 0, i32 %36)
  ret void
}

declare dso_local i32 @c_can_inval_msg_object(%struct.net_device*, i32, i32) #1

declare dso_local i32 @c_can_setup_receive_object(%struct.net_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
