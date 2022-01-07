; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_tx_flow_ctrl_creds_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_cl_tx_flow_ctrl_creds_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_flow_control = type { i32 }
%struct.mei_cl = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"flow control creds = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, %struct.hbm_flow_control*)* @mei_hbm_cl_tx_flow_ctrl_creds_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_hbm_cl_tx_flow_ctrl_creds_res(%struct.mei_device* %0, %struct.hbm_flow_control* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.hbm_flow_control*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store %struct.hbm_flow_control* %1, %struct.hbm_flow_control** %4, align 8
  %6 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %4, align 8
  %7 = getelementptr inbounds %struct.hbm_flow_control, %struct.hbm_flow_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %4, align 8
  %13 = call i32 @mei_hbm_add_single_tx_flow_ctrl_creds(%struct.mei_device* %11, %struct.hbm_flow_control* %12)
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %4, align 8
  %17 = call %struct.mei_cl* @mei_hbm_cl_find_by_cmd(%struct.mei_device* %15, %struct.hbm_flow_control* %16)
  store %struct.mei_cl* %17, %struct.mei_cl** %5, align 8
  %18 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %19 = icmp ne %struct.mei_cl* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %22 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %26 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %27 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %28 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_dbg(%struct.mei_device* %25, %struct.mei_cl* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %10, %20, %14
  ret void
}

declare dso_local i32 @mei_hbm_add_single_tx_flow_ctrl_creds(%struct.mei_device*, %struct.hbm_flow_control*) #1

declare dso_local %struct.mei_cl* @mei_hbm_cl_find_by_cmd(%struct.mei_device*, %struct.hbm_flow_control*) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
