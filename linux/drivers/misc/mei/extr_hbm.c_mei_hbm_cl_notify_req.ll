; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_notify_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_notify_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_cl = type { i32 }
%struct.mei_msg_hdr = type { i32 }
%struct.hbm_notification_request = type { i32 }

@MEI_HBM_NOTIFY_REQ_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"notify request failed: ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_hbm_cl_notify_req(%struct.mei_device* %0, %struct.mei_cl* %1, i32 %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mei_msg_hdr, align 4
  %8 = alloca %struct.hbm_notification_request, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_cl* %1, %struct.mei_cl** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 4, i64* %9, align 8
  %11 = call i32 @mei_hbm_hdr(%struct.mei_msg_hdr* %7, i64 4)
  %12 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %13 = load i32, i32* @MEI_HBM_NOTIFY_REQ_CMD, align 4
  %14 = call i32 @mei_hbm_cl_hdr(%struct.mei_cl* %12, i32 %13, %struct.hbm_notification_request* %8, i64 4)
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.hbm_notification_request, %struct.hbm_notification_request* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %18 = call i32 @mei_hbm_write_message(%struct.mei_device* %17, %struct.mei_msg_hdr* %7, %struct.hbm_notification_request* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local i32 @mei_hbm_hdr(%struct.mei_msg_hdr*, i64) #1

declare dso_local i32 @mei_hbm_cl_hdr(%struct.mei_cl*, i32, %struct.hbm_notification_request*, i64) #1

declare dso_local i32 @mei_hbm_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, %struct.hbm_notification_request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
