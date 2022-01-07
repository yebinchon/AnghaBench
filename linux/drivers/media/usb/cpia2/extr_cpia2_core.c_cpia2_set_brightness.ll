; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DEVICE_STV_672 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Setting brightness to %d (0x%0x)\0A\00", align 1
@CPIA2_CMD_SET_VP_BRIGHTNESS = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpia2_set_brightness(%struct.camera_data* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i8, align 1
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %6 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DEVICE_STV_672, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8, i8* %4, align 1
  %18 = add i8 %17, 1
  store i8 %18, i8* %4, align 1
  br label %19

19:                                               ; preds = %16, %12, %2
  %20 = load i8, i8* %4, align 1
  %21 = load i8, i8* %4, align 1
  %22 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 zeroext %20, i8 zeroext %21)
  %23 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %24 = load i32, i32* @CPIA2_CMD_SET_VP_BRIGHTNESS, align 4
  %25 = load i32, i32* @TRANSFER_WRITE, align 4
  %26 = load i8, i8* %4, align 1
  %27 = call i32 @cpia2_do_command(%struct.camera_data* %23, i32 %24, i32 %25, i8 zeroext %26)
  ret void
}

declare dso_local i32 @DBG(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
