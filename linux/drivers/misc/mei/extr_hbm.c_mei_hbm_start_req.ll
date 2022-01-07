; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_start_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32 }
%struct.mei_msg_hdr = type { i32 }
%struct.hbm_host_version_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HOST_START_REQ_CMD = common dso_local global i32 0, align 4
@HBM_MAJOR_VERSION = common dso_local global i32 0, align 4
@HBM_MINOR_VERSION = common dso_local global i32 0, align 4
@MEI_HBM_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"version message write failed: ret = %d\0A\00", align 1
@MEI_HBM_STARTING = common dso_local global i32 0, align 4
@MEI_CLIENTS_INIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_hbm_start_req(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_msg_hdr, align 4
  %5 = alloca %struct.hbm_host_version_request, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i64 12, i64* %6, align 8
  %8 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %9 = call i32 @mei_hbm_reset(%struct.mei_device* %8)
  %10 = call i32 @mei_hbm_hdr(%struct.mei_msg_hdr* %4, i64 12)
  %11 = call i32 @memset(%struct.hbm_host_version_request* %5, i32 0, i64 12)
  %12 = load i32, i32* @HOST_START_REQ_CMD, align 4
  %13 = getelementptr inbounds %struct.hbm_host_version_request, %struct.hbm_host_version_request* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @HBM_MAJOR_VERSION, align 4
  %15 = getelementptr inbounds %struct.hbm_host_version_request, %struct.hbm_host_version_request* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @HBM_MINOR_VERSION, align 4
  %18 = getelementptr inbounds %struct.hbm_host_version_request, %struct.hbm_host_version_request* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MEI_HBM_IDLE, align 4
  %21 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = call i32 @mei_hbm_write_message(%struct.mei_device* %23, %struct.mei_msg_hdr* %4, %struct.hbm_host_version_request* %5)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %1
  %35 = load i32, i32* @MEI_HBM_STARTING, align 4
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @MEI_CLIENTS_INIT_TIMEOUT, align 4
  %39 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %40 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %42 = call i32 @mei_schedule_stall_timer(%struct.mei_device* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %27
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @mei_hbm_reset(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_hdr(%struct.mei_msg_hdr*, i64) #1

declare dso_local i32 @memset(%struct.hbm_host_version_request*, i32, i64) #1

declare dso_local i32 @mei_hbm_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, %struct.hbm_host_version_request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mei_schedule_stall_timer(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
