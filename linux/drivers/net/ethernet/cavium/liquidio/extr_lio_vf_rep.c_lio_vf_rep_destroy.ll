; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lio_vf_rep_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DEVLINK_ESWITCH_MODE_SWITCHDEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_vf_rep_destroy(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.lio_vf_rep_desc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DEVLINK_ESWITCH_MODE_SWITCHDEV, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %68

19:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %61, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %20
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.net_device**, %struct.net_device*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.net_device*, %struct.net_device** %31, i64 %33
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  store %struct.net_device* %35, %struct.net_device** %4, align 8
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.net_device**, %struct.net_device*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.net_device*, %struct.net_device** %39, i64 %41
  store %struct.net_device* null, %struct.net_device** %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %27
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %46)
  store %struct.lio_vf_rep_desc* %47, %struct.lio_vf_rep_desc** %3, align 8
  %48 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %3, align 8
  %49 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @cancel_delayed_work_sync(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netif_tx_disable(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @netif_carrier_off(%struct.net_device* %54)
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @unregister_netdev(%struct.net_device* %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @free_netdev(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %45, %27
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %18, %11
  ret void
}

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
