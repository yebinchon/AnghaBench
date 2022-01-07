; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.lio_vf_rep_desc = type { i32, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lio_vf_rep_req = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@lio_vf_rep_ndev_ops = common dso_local global i32 0, align 4
@LIO_IF_NAME_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Device name change sync failed as the size is > %d\0A\00", align 1
@LIO_VF_REP_REQ_DEVNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"vf_rep netdev name change failed with err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @lio_vf_rep_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_vf_rep_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.lio_vf_rep_desc*, align 8
  %10 = alloca %struct.lio_vf_rep_req, align 4
  %11 = alloca %struct.octeon_device*, align 8
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %13)
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load i64, i64* %6, align 8
  switch i64 %15, label %17 [
    i64 128, label %16
    i64 129, label %16
  ]

16:                                               ; preds = %3, %3
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %16
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, @lio_vf_rep_ndev_ops
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %27)
  store %struct.lio_vf_rep_desc* %28, %struct.lio_vf_rep_desc** %9, align 8
  %29 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %9, align 8
  %30 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %29, i32 0, i32 1
  %31 = load %struct.octeon_device*, %struct.octeon_device** %30, align 8
  store %struct.octeon_device* %31, %struct.octeon_device** %11, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strlen(i32 %34)
  %36 = load i64, i64* @LIO_IF_NAME_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %40 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* @LIO_IF_NAME_SIZE, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %46, i32* %4, align 4
  br label %76

47:                                               ; preds = %26
  %48 = call i32 @memset(%struct.lio_vf_rep_req* %10, i32 0, i32 12)
  %49 = load i32, i32* @LIO_VF_REP_REQ_DEVNAME, align 4
  %50 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %10, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %9, align 8
  %52 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %10, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %10, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @LIO_IF_NAME_SIZE, align 8
  %62 = call i32 @strncpy(i32 %57, i32 %60, i64 %61)
  %63 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %64 = call i32 @lio_vf_rep_send_soft_command(%struct.octeon_device* %63, %struct.lio_vf_rep_req* %10, i32 12, i32* null, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %47
  %68 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %69 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %47
  %75 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %38, %24, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.lio_vf_rep_req*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i64) #1

declare dso_local i32 @lio_vf_rep_send_soft_command(%struct.octeon_device*, %struct.lio_vf_rep_req*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
