; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_vfdi_insert_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_vfdi_insert_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_vf = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.efx_nic* }
%struct.TYPE_4__ = type { %struct.vfdi_req* }
%struct.vfdi_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ERROR: Invalid INSERT_FILTER from %s: rxq %d flags 0x%x\0A\00", align 1
@VFDI_RC_EINVAL = common dso_local global i32 0, align 4
@VFDI_MAC_FILTER_FLAG_RSS = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@VFDI_MAC_FILTER_FLAG_SCATTER = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4
@vfdi_workqueue = common dso_local global i32 0, align 4
@VFDI_RC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siena_vf*)* @efx_vfdi_insert_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_insert_filter(%struct.siena_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siena_vf*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.siena_nic_data*, align 8
  %6 = alloca %struct.vfdi_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.siena_vf* %0, %struct.siena_vf** %3, align 8
  %9 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %10 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %9, i32 0, i32 5
  %11 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  store %struct.efx_nic* %11, %struct.efx_nic** %4, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = load %struct.siena_nic_data*, %struct.siena_nic_data** %13, align 8
  store %struct.siena_nic_data* %14, %struct.siena_nic_data** %5, align 8
  %15 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %16 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.vfdi_req*, %struct.vfdi_req** %17, align 8
  store %struct.vfdi_req* %18, %struct.vfdi_req** %6, align 8
  %19 = load %struct.vfdi_req*, %struct.vfdi_req** %6, align 8
  %20 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @bad_vf_index(%struct.efx_nic* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %30 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28, %1
  %34 = call i64 (...) @net_ratelimit()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %38 = load i32, i32* @hw, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %43 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.vfdi_req*, %struct.vfdi_req** %6, align 8
  %47 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netif_err(%struct.efx_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %36, %33
  %53 = load i32, i32* @VFDI_RC_EINVAL, align 4
  store i32 %53, i32* %2, align 4
  br label %96

54:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %55 = load %struct.vfdi_req*, %struct.vfdi_req** %6, align 8
  %56 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VFDI_MAC_FILTER_FLAG_RSS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.vfdi_req*, %struct.vfdi_req** %6, align 8
  %69 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VFDI_MAC_FILTER_FLAG_SCATTER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @EFX_FILTER_FLAG_RX_SCATTER, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %67
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %83 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %86 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %88 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %90 = call i32 @efx_siena_sriov_reset_rx_filter(%struct.siena_vf* %89)
  %91 = load i32, i32* @vfdi_workqueue, align 4
  %92 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %93 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %92, i32 0, i32 0
  %94 = call i32 @queue_work(i32 %91, i32* %93)
  %95 = load i32, i32* @VFDI_RC_SUCCESS, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %80, %52
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @bad_vf_index(%struct.efx_nic*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @efx_siena_sriov_reset_rx_filter(%struct.siena_vf*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
