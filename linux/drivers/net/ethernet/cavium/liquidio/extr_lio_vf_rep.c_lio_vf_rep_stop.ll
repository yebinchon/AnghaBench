; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio_vf_rep_desc = type { i32, i32, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lio_vf_rep_req = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@LIO_VF_REP_REQ_STATE = common dso_local global i32 0, align 4
@LIO_VF_REP_STATE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"VF_REP dev stop failed with err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lio_vf_rep_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_vf_rep_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lio_vf_rep_desc*, align 8
  %5 = alloca %struct.lio_vf_rep_req, align 4
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %8)
  store %struct.lio_vf_rep_desc* %9, %struct.lio_vf_rep_desc** %4, align 8
  %10 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %11 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %10, i32 0, i32 2
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %6, align 8
  %13 = call i32 @memset(%struct.lio_vf_rep_req* %5, i32 0, i32 12)
  %14 = load i32, i32* @LIO_VF_REP_REQ_STATE, align 4
  %15 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %17 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @LIO_VF_REP_STATE_DOWN, align 4
  %21 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %24 = call i32 @lio_vf_rep_send_soft_command(%struct.octeon_device* %23, %struct.lio_vf_rep_req* %5, i32 12, i32* null, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %1
  %37 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %38 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %37, i32 0, i32 0
  %39 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %40 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %39, i32 0, i32 0
  %41 = call i32 @atomic_read(i32* %40)
  %42 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @atomic_set(i32* %38, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netif_tx_disable(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @netif_carrier_off(%struct.net_device* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %36, %27
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.lio_vf_rep_req*, i32, i32) #1

declare dso_local i32 @lio_vf_rep_send_soft_command(%struct.octeon_device*, %struct.lio_vf_rep_req*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
