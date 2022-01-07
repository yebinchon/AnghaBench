; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_notify_stop_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_notify_stop_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_cl = type { i32, i32 }
%struct.mei_hbm_cl_cmd = type { i32 }
%struct.hbm_notification_response = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"hbm: notify stop response status=%d\0A\00", align 1
@MEI_HBMS_SUCCESS = common dso_local global i64 0, align 8
@MEI_HBMS_NOT_STARTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, %struct.mei_cl*, %struct.mei_hbm_cl_cmd*)* @mei_hbm_cl_notify_stop_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_hbm_cl_notify_stop_res(%struct.mei_device* %0, %struct.mei_cl* %1, %struct.mei_hbm_cl_cmd* %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca %struct.mei_hbm_cl_cmd*, align 8
  %7 = alloca %struct.hbm_notification_response*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_cl* %1, %struct.mei_cl** %5, align 8
  store %struct.mei_hbm_cl_cmd* %2, %struct.mei_hbm_cl_cmd** %6, align 8
  %8 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %6, align 8
  %9 = bitcast %struct.mei_hbm_cl_cmd* %8 to %struct.hbm_notification_response*
  store %struct.hbm_notification_response* %9, %struct.hbm_notification_response** %7, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %11 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %12 = load %struct.hbm_notification_response*, %struct.hbm_notification_response** %7, align 8
  %13 = getelementptr inbounds %struct.hbm_notification_response, %struct.hbm_notification_response* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @cl_dbg(%struct.mei_device* %10, %struct.mei_cl* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.hbm_notification_response*, %struct.hbm_notification_response** %7, align 8
  %17 = getelementptr inbounds %struct.hbm_notification_response, %struct.hbm_notification_response* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MEI_HBMS_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.hbm_notification_response*, %struct.hbm_notification_response** %7, align 8
  %23 = getelementptr inbounds %struct.hbm_notification_response, %struct.hbm_notification_response* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MEI_HBMS_NOT_STARTED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %3
  %28 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %29 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %31 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %36 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
