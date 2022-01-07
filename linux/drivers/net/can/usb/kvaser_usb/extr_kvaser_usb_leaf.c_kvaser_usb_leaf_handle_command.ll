; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_handle_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvaser_cmd = type { i32 }

@KVASER_LEAF = common dso_local global i32 0, align 4
@KVASER_USBCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unhandled command (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_handle_command(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %5 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %74 [
    i32 131, label %8
    i32 130, label %12
    i32 132, label %16
    i32 133, label %16
    i32 134, label %20
    i32 136, label %33
    i32 137, label %33
    i32 129, label %50
    i32 128, label %54
    i32 135, label %64
  ]

8:                                                ; preds = %2
  %9 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %10 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %11 = call i32 @kvaser_usb_leaf_start_chip_reply(%struct.kvaser_usb* %9, %struct.kvaser_cmd* %10)
  br label %84

12:                                               ; preds = %2
  %13 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %14 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %15 = call i32 @kvaser_usb_leaf_stop_chip_reply(%struct.kvaser_usb* %13, %struct.kvaser_cmd* %14)
  br label %84

16:                                               ; preds = %2, %2
  %17 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %18 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %19 = call i32 @kvaser_usb_leaf_rx_can_msg(%struct.kvaser_usb* %17, %struct.kvaser_cmd* %18)
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @KVASER_LEAF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %75

29:                                               ; preds = %20
  %30 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %31 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %32 = call i32 @kvaser_usb_leaf_rx_can_msg(%struct.kvaser_usb* %30, %struct.kvaser_cmd* %31)
  br label %84

33:                                               ; preds = %2, %2
  %34 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %35 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @KVASER_LEAF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %43 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %44 = call i32 @kvaser_usb_leaf_leaf_rx_error(%struct.kvaser_usb* %42, %struct.kvaser_cmd* %43)
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %47 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %48 = call i32 @kvaser_usb_leaf_usbcan_rx_error(%struct.kvaser_usb* %46, %struct.kvaser_cmd* %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %84

50:                                               ; preds = %2
  %51 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %52 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %53 = call i32 @kvaser_usb_leaf_tx_acknowledge(%struct.kvaser_usb* %51, %struct.kvaser_cmd* %52)
  br label %84

54:                                               ; preds = %2
  %55 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %56 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @KVASER_USBCAN, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %75

63:                                               ; preds = %54
  br label %84

64:                                               ; preds = %2
  %65 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %66 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @KVASER_LEAF, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64
  br label %84

74:                                               ; preds = %2
  br label %75

75:                                               ; preds = %74, %72, %62, %28
  %76 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %77 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_warn(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %75, %73, %63, %50, %49, %29, %16, %12, %8
  ret void
}

declare dso_local i32 @kvaser_usb_leaf_start_chip_reply(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_leaf_stop_chip_reply(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_leaf_rx_can_msg(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_leaf_leaf_rx_error(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_leaf_usbcan_rx_error(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_leaf_tx_acknowledge(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
