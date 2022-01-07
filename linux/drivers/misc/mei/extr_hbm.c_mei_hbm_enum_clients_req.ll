; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_enum_clients_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_enum_clients_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32, i64, i64 }
%struct.mei_msg_hdr = type { i32 }
%struct.hbm_host_enum_request = type { i32, i32 }

@HOST_ENUM_REQ_CMD = common dso_local global i32 0, align 4
@MEI_HBM_ENUM_F_ALLOW_ADD = common dso_local global i32 0, align 4
@MEI_HBM_ENUM_F_IMMEDIATE_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"enumeration request write failed: ret = %d.\0A\00", align 1
@MEI_HBM_ENUM_CLIENTS = common dso_local global i32 0, align 4
@MEI_CLIENTS_INIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_hbm_enum_clients_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_enum_clients_req(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_msg_hdr, align 4
  %5 = alloca %struct.hbm_host_enum_request, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i64 8, i64* %6, align 8
  %8 = call i32 @mei_hbm_hdr(%struct.mei_msg_hdr* %4, i64 8)
  %9 = call i32 @memset(%struct.hbm_host_enum_request* %5, i32 0, i64 8)
  %10 = load i32, i32* @HOST_ENUM_REQ_CMD, align 4
  %11 = getelementptr inbounds %struct.hbm_host_enum_request, %struct.hbm_host_enum_request* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @MEI_HBM_ENUM_F_ALLOW_ADD, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = getelementptr inbounds %struct.hbm_host_enum_request, %struct.hbm_host_enum_request* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %25 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @MEI_HBM_ENUM_F_IMMEDIATE_ENUM, align 4
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = getelementptr inbounds %struct.hbm_host_enum_request, %struct.hbm_host_enum_request* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = call i32 @mei_hbm_write_message(%struct.mei_device* %36, %struct.mei_msg_hdr* %4, %struct.hbm_host_enum_request* %5)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %31
  %48 = load i32, i32* @MEI_HBM_ENUM_CLIENTS, align 4
  %49 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @MEI_CLIENTS_INIT_TIMEOUT, align 4
  %52 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %53 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %55 = call i32 @mei_schedule_stall_timer(%struct.mei_device* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %40
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mei_hbm_hdr(%struct.mei_msg_hdr*, i64) #1

declare dso_local i32 @memset(%struct.hbm_host_enum_request*, i32, i64) #1

declare dso_local i32 @mei_hbm_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, %struct.hbm_host_enum_request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mei_schedule_stall_timer(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
