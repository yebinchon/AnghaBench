; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_fw_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_fw_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_client_connect_request = type { i32 }
%struct.mei_cl = type { i64, i32 }
%struct.mei_cl_cb = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"fw disconnect request received\0A\00", align 1
@MEI_FILE_DISCONNECTING = common dso_local global i32 0, align 4
@MEI_FOP_DISCONNECT_RSP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.hbm_client_connect_request*)* @mei_hbm_fw_disconnect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_fw_disconnect_req(%struct.mei_device* %0, %struct.hbm_client_connect_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.hbm_client_connect_request*, align 8
  %6 = alloca %struct.mei_cl*, align 8
  %7 = alloca %struct.mei_cl_cb*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.hbm_client_connect_request* %1, %struct.hbm_client_connect_request** %5, align 8
  %8 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %9 = load %struct.hbm_client_connect_request*, %struct.hbm_client_connect_request** %5, align 8
  %10 = call %struct.mei_cl* @mei_hbm_cl_find_by_cmd(%struct.mei_device* %8, %struct.hbm_client_connect_request* %9)
  store %struct.mei_cl* %10, %struct.mei_cl** %6, align 8
  %11 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %12 = icmp ne %struct.mei_cl* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %15 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %16 = call i32 @cl_warn(%struct.mei_device* %14, %struct.mei_cl* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @MEI_FILE_DISCONNECTING, align 4
  %18 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %19 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %21 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %23 = load i32, i32* @MEI_FOP_DISCONNECT_RSP, align 4
  %24 = call %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl* %22, i32 0, i32 %23, i32* null)
  store %struct.mei_cl_cb* %24, %struct.mei_cl_cb** %7, align 8
  %25 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %7, align 8
  %26 = icmp ne %struct.mei_cl_cb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.mei_cl* @mei_hbm_cl_find_by_cmd(%struct.mei_device*, %struct.hbm_client_connect_request*) #1

declare dso_local i32 @cl_warn(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
