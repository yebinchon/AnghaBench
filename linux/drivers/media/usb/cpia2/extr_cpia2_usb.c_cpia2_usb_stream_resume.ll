; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_cpia2_usb_stream_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_cpia2_usb_stream_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CPIA2_CMD_SET_USER_EFFECTS = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_usb_stream_resume(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %5 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %12 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %13 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @set_alternate(%struct.camera_data* %11, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %8
  %21 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %22 = load i32, i32* @CPIA2_CMD_SET_USER_EFFECTS, align 4
  %23 = load i32, i32* @TRANSFER_WRITE, align 4
  %24 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %25 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cpia2_do_command(%struct.camera_data* %21, i32 %22, i32 %23, i32 %28)
  %30 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %31 = call i32 @submit_urbs(%struct.camera_data* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %20, %8
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @set_alternate(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

declare dso_local i32 @submit_urbs(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
