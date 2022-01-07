; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_stop_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_stop_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_msg_hdr = type { i32 }
%struct.hbm_host_stop_request = type { i32, i32 }

@HOST_STOP_REQ_CMD = common dso_local global i32 0, align 4
@DRIVER_STOP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_hbm_stop_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_stop_req(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_msg_hdr, align 4
  %4 = alloca %struct.hbm_host_stop_request, align 4
  %5 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  store i64 8, i64* %5, align 8
  %6 = call i32 @mei_hbm_hdr(%struct.mei_msg_hdr* %3, i64 8)
  %7 = call i32 @memset(%struct.hbm_host_stop_request* %4, i32 0, i64 8)
  %8 = load i32, i32* @HOST_STOP_REQ_CMD, align 4
  %9 = getelementptr inbounds %struct.hbm_host_stop_request, %struct.hbm_host_stop_request* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @DRIVER_STOP_REQUEST, align 4
  %11 = getelementptr inbounds %struct.hbm_host_stop_request, %struct.hbm_host_stop_request* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %13 = call i32 @mei_hbm_write_message(%struct.mei_device* %12, %struct.mei_msg_hdr* %3, %struct.hbm_host_stop_request* %4)
  ret i32 %13
}

declare dso_local i32 @mei_hbm_hdr(%struct.mei_msg_hdr*, i64) #1

declare dso_local i32 @memset(%struct.hbm_host_stop_request*, i32, i64) #1

declare dso_local i32 @mei_hbm_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, %struct.hbm_host_stop_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
