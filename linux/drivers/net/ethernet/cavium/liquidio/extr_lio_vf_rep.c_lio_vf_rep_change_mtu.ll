; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio_vf_rep_desc = type { i32, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lio_vf_rep_req = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@LIO_VF_REP_REQ_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Change MTU failed with err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @lio_vf_rep_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_vf_rep_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio_vf_rep_desc*, align 8
  %7 = alloca %struct.lio_vf_rep_req, align 4
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %10)
  store %struct.lio_vf_rep_desc* %11, %struct.lio_vf_rep_desc** %6, align 8
  %12 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %13 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %12, i32 0, i32 1
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %8, align 8
  %15 = call i32 @memset(%struct.lio_vf_rep_req* %7, i32 0, i32 12)
  %16 = load i32, i32* @LIO_VF_REP_REQ_MTU, align 4
  %17 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %19 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %27 = call i32 @lio_vf_rep_send_soft_command(%struct.octeon_device* %26, %struct.lio_vf_rep_req* %7, i32 12, i32* null, i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.lio_vf_rep_req*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @lio_vf_rep_send_soft_command(%struct.octeon_device*, %struct.lio_vf_rep_req*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
