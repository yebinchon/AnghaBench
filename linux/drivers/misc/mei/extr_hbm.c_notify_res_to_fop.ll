; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_notify_res_to_fop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_notify_res_to_fop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_hbm_cl_cmd = type { i32 }
%struct.hbm_notification_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_hbm_cl_cmd*)* @notify_res_to_fop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_res_to_fop(%struct.mei_hbm_cl_cmd* %0) #0 {
  %2 = alloca %struct.mei_hbm_cl_cmd*, align 8
  %3 = alloca %struct.hbm_notification_response*, align 8
  store %struct.mei_hbm_cl_cmd* %0, %struct.mei_hbm_cl_cmd** %2, align 8
  %4 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %2, align 8
  %5 = bitcast %struct.mei_hbm_cl_cmd* %4 to %struct.hbm_notification_response*
  store %struct.hbm_notification_response* %5, %struct.hbm_notification_response** %3, align 8
  %6 = load %struct.hbm_notification_response*, %struct.hbm_notification_response** %3, align 8
  %7 = getelementptr inbounds %struct.hbm_notification_response, %struct.hbm_notification_response* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mei_cl_notify_req2fop(i32 %8)
  ret i32 %9
}

declare dso_local i32 @mei_cl_notify_req2fop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
