; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_prop_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_prop_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32, i32 }
%struct.mei_msg_hdr = type { i32 }
%struct.hbm_props_request = type { i64, i32 }

@MEI_CLIENTS_MAX = common dso_local global i64 0, align 8
@MEI_HBM_STARTED = common dso_local global i32 0, align 4
@HOST_CLIENT_PROPERTIES_REQ_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"properties request write failed: ret = %d\0A\00", align 1
@MEI_CLIENTS_INIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i64)* @mei_hbm_prop_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_prop_req(%struct.mei_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mei_msg_hdr, align 4
  %7 = alloca %struct.hbm_props_request, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 16, i64* %8, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %12 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @MEI_CLIENTS_MAX, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @find_next_bit(i32 %13, i64 %14, i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @MEI_CLIENTS_MAX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @MEI_HBM_STARTED, align 4
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %25 = call i32 @mei_host_client_init(%struct.mei_device* %24)
  store i32 0, i32* %3, align 4
  br label %50

26:                                               ; preds = %2
  %27 = call i32 @mei_hbm_hdr(%struct.mei_msg_hdr* %6, i64 16)
  %28 = call i32 @memset(%struct.hbm_props_request* %7, i32 0, i32 16)
  %29 = load i32, i32* @HOST_CLIENT_PROPERTIES_REQ_CMD, align 4
  %30 = getelementptr inbounds %struct.hbm_props_request, %struct.hbm_props_request* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.hbm_props_request, %struct.hbm_props_request* %7, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %34 = call i32 @mei_hbm_write_message(%struct.mei_device* %33, %struct.mei_msg_hdr* %6, %struct.hbm_props_request* %7)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %26
  %45 = load i32, i32* @MEI_CLIENTS_INIT_TIMEOUT, align 4
  %46 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %47 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %49 = call i32 @mei_schedule_stall_timer(%struct.mei_device* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %37, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @mei_host_client_init(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_hdr(%struct.mei_msg_hdr*, i64) #1

declare dso_local i32 @memset(%struct.hbm_props_request*, i32, i32) #1

declare dso_local i32 @mei_hbm_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, %struct.hbm_props_request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mei_schedule_stall_timer(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
