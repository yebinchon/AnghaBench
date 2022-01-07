; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_cl = type { i32 }
%struct.hbm_client_connect_request = type { i32 }

@CLIENT_DISCONNECT_REQ_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_hbm_cl_disconnect_req(%struct.mei_device* %0, %struct.mei_cl* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca %struct.hbm_client_connect_request, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store %struct.mei_cl* %1, %struct.mei_cl** %4, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %8 = load i32, i32* @CLIENT_DISCONNECT_REQ_CMD, align 4
  %9 = call i32 @mei_hbm_cl_write(%struct.mei_device* %6, %struct.mei_cl* %7, i32 %8, %struct.hbm_client_connect_request* %5, i32 4)
  ret i32 %9
}

declare dso_local i32 @mei_hbm_cl_write(%struct.mei_device*, %struct.mei_cl*, i32, %struct.hbm_client_connect_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
