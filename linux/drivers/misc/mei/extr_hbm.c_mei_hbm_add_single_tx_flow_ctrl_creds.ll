; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_add_single_tx_flow_ctrl_creds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_add_single_tx_flow_ctrl_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_flow_control = type { i32 }
%struct.mei_me_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"no such me client %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"recv flow ctrl msg ME %d (single) creds = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.hbm_flow_control*)* @mei_hbm_add_single_tx_flow_ctrl_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_add_single_tx_flow_ctrl_creds(%struct.mei_device* %0, %struct.hbm_flow_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.hbm_flow_control*, align 8
  %6 = alloca %struct.mei_me_client*, align 8
  %7 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.hbm_flow_control* %1, %struct.hbm_flow_control** %5, align 8
  %8 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %9 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %5, align 8
  %10 = getelementptr inbounds %struct.hbm_flow_control, %struct.hbm_flow_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mei_me_client* @mei_me_cl_by_id(%struct.mei_device* %8, i32 %11)
  store %struct.mei_me_client* %12, %struct.mei_me_client** %6, align 8
  %13 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %14 = icmp ne %struct.mei_me_client* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %17 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %5, align 8
  %20 = getelementptr inbounds %struct.hbm_flow_control, %struct.hbm_flow_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %27 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %39 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %43 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %5, align 8
  %46 = getelementptr inbounds %struct.hbm_flow_control, %struct.hbm_flow_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %49 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %37, %34
  %53 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %54 = call i32 @mei_me_cl_put(%struct.mei_me_client* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.mei_me_client* @mei_me_cl_by_id(%struct.mei_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_me_cl_put(%struct.mei_me_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
