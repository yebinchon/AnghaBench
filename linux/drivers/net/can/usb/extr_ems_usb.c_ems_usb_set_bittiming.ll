; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ems_usb = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"setting BTR0=0x%02x BTR1=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ems_usb_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ems_usb* @netdev_priv(%struct.net_device* %7)
  store %struct.ems_usb* %8, %struct.ems_usb** %3, align 8
  %9 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store %struct.can_bittiming* %11, %struct.can_bittiming** %4, align 8
  %12 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %13 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %15, 63
  %17 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %18 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %20, 3
  %22 = shl i32 %21, 6
  %23 = or i32 %16, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %25 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %28 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %31, 15
  %33 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %34 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %36, 7
  %38 = shl i32 %37, 4
  %39 = or i32 %32, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %41 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, 128
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %1
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @netdev_info(%struct.net_device* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %57 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %65 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 4
  %71 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %72 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %73 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %72, i32 0, i32 0
  %74 = call i32 @ems_usb_command_msg(%struct.ems_usb* %71, %struct.TYPE_12__* %73)
  ret i32 %74
}

declare dso_local %struct.ems_usb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @ems_usb_command_msg(%struct.ems_usb*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
