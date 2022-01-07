; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_hbm_cl_cmd = type { i32 }
%struct.mei_cl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, %struct.mei_hbm_cl_cmd*)* @mei_hbm_cl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_hbm_cl_notify(%struct.mei_device* %0, %struct.mei_hbm_cl_cmd* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_hbm_cl_cmd*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store %struct.mei_hbm_cl_cmd* %1, %struct.mei_hbm_cl_cmd** %4, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %4, align 8
  %8 = call %struct.mei_cl* @mei_hbm_cl_find_by_cmd(%struct.mei_device* %6, %struct.mei_hbm_cl_cmd* %7)
  store %struct.mei_cl* %8, %struct.mei_cl** %5, align 8
  %9 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %10 = icmp ne %struct.mei_cl* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %13 = call i32 @mei_cl_notify(%struct.mei_cl* %12)
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.mei_cl* @mei_hbm_cl_find_by_cmd(%struct.mei_device*, %struct.mei_hbm_cl_cmd*) #1

declare dso_local i32 @mei_cl_notify(%struct.mei_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
