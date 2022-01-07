; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_connect_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_connect_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32 }
%struct.mei_cl = type { i32, i32, i32 }
%struct.mei_hbm_cl_cmd = type { i32 }
%struct.hbm_client_connect_response = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"hbm: connect response status=%s\0A\00", align 1
@MEI_CL_CONN_SUCCESS = common dso_local global i64 0, align 8
@MEI_FILE_CONNECTED = common dso_local global i32 0, align 4
@MEI_FILE_DISCONNECT_REPLY = common dso_local global i32 0, align 4
@MEI_CL_CONN_NOT_FOUND = common dso_local global i64 0, align 8
@MEI_DEV_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, %struct.mei_cl*, %struct.mei_hbm_cl_cmd*)* @mei_hbm_cl_connect_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_hbm_cl_connect_res(%struct.mei_device* %0, %struct.mei_cl* %1, %struct.mei_hbm_cl_cmd* %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca %struct.mei_hbm_cl_cmd*, align 8
  %7 = alloca %struct.hbm_client_connect_response*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_cl* %1, %struct.mei_cl** %5, align 8
  store %struct.mei_hbm_cl_cmd* %2, %struct.mei_hbm_cl_cmd** %6, align 8
  %8 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %6, align 8
  %9 = bitcast %struct.mei_hbm_cl_cmd* %8 to %struct.hbm_client_connect_response*
  store %struct.hbm_client_connect_response* %9, %struct.hbm_client_connect_response** %7, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %11 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %12 = load %struct.hbm_client_connect_response*, %struct.hbm_client_connect_response** %7, align 8
  %13 = getelementptr inbounds %struct.hbm_client_connect_response, %struct.hbm_client_connect_response* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mei_cl_conn_status_str(i64 %14)
  %16 = call i32 @cl_dbg(%struct.mei_device* %10, %struct.mei_cl* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hbm_client_connect_response*, %struct.hbm_client_connect_response** %7, align 8
  %18 = getelementptr inbounds %struct.hbm_client_connect_response, %struct.hbm_client_connect_response* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MEI_CL_CONN_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @MEI_FILE_CONNECTED, align 4
  %24 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %25 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load i32, i32* @MEI_FILE_DISCONNECT_REPLY, align 4
  %28 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %29 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hbm_client_connect_response*, %struct.hbm_client_connect_response** %7, align 8
  %31 = getelementptr inbounds %struct.hbm_client_connect_response, %struct.hbm_client_connect_response* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MEI_CL_CONN_NOT_FOUND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %37 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %38 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mei_me_cl_del(%struct.mei_device* %36, i32 %39)
  %41 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MEI_DEV_ENABLED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %48 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %47, i32 0, i32 1
  %49 = call i32 @schedule_work(i32* %48)
  br label %50

50:                                               ; preds = %46, %35
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.hbm_client_connect_response*, %struct.hbm_client_connect_response** %7, align 8
  %54 = getelementptr inbounds %struct.hbm_client_connect_response, %struct.hbm_client_connect_response* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @mei_cl_conn_status_to_errno(i64 %55)
  %57 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %58 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*, i32) #1

declare dso_local i32 @mei_cl_conn_status_str(i64) #1

declare dso_local i32 @mei_me_cl_del(%struct.mei_device*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mei_cl_conn_status_to_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
