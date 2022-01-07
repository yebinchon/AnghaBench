; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_vfdi_init_evq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_vfdi_init_evq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_vf = type { i32, i32, i32, %struct.TYPE_4__, %struct.efx_nic* }
%struct.TYPE_4__ = type { %struct.vfdi_req* }
%struct.vfdi_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.efx_nic = type { i32 }

@EFX_MAX_VF_EVQ_SIZE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ERROR: Invalid INIT_EVQ from %s: evq %d bufs %d\0A\00", align 1
@VFDI_RC_EINVAL = common dso_local global i32 0, align 4
@FRF_CZ_TIMER_Q_EN = common dso_local global i32 0, align 4
@FRF_CZ_HOST_NOTIFY_MODE = common dso_local global i32 0, align 4
@FRF_CZ_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_DIS = common dso_local global i32 0, align 4
@FR_BZ_TIMER_TBL = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_EN = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_BUF_BASE_ID = common dso_local global i32 0, align 4
@FR_BZ_EVQ_PTR_TBL = common dso_local global i32 0, align 4
@VFDI_RC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siena_vf*)* @efx_vfdi_init_evq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_init_evq(%struct.siena_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siena_vf*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.vfdi_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.siena_vf* %0, %struct.siena_vf** %3, align 8
  %11 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %12 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %11, i32 0, i32 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  store %struct.efx_nic* %13, %struct.efx_nic** %4, align 8
  %14 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %15 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.vfdi_req*, %struct.vfdi_req** %16, align 8
  store %struct.vfdi_req* %17, %struct.vfdi_req** %5, align 8
  %18 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %19 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %24 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @abs_index(%struct.siena_vf* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @EFX_BUFTBL_EVQ_BASE(%struct.siena_vf* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @bad_vf_index(%struct.efx_nic* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EFX_MAX_VF_EVQ_SIZE, align 4
  %41 = call i64 @bad_buf_count(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38, %1
  %44 = call i64 (...) @net_ratelimit()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %48 = load i32, i32* @hw, align 4
  %49 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %53 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @netif_err(%struct.efx_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %43
  %59 = load i32, i32* @VFDI_RC_EINVAL, align 4
  store i32 %59, i32* %2, align 4
  br label %113

60:                                               ; preds = %38
  %61 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %64 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @efx_siena_sriov_bufs(%struct.efx_nic* %61, i32 %62, i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @FRF_CZ_TIMER_Q_EN, align 4
  %72 = load i32, i32* @FRF_CZ_HOST_NOTIFY_MODE, align 4
  %73 = load i32, i32* @FRF_CZ_TIMER_MODE, align 4
  %74 = load i32, i32* @FFE_CZ_TIMER_MODE_DIS, align 4
  %75 = call i32 @EFX_POPULATE_OWORD_3(i32 %70, i32 %71, i32 1, i32 %72, i32 0, i32 %73, i32 %74)
  %76 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %77 = load i32, i32* @FR_BZ_TIMER_TBL, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @efx_writeo_table(%struct.efx_nic* %76, i32* %10, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @FRF_AZ_EVQ_EN, align 4
  %82 = load i32, i32* @FRF_AZ_EVQ_SIZE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @__ffs(i32 %83)
  %85 = load i32, i32* @FRF_AZ_EVQ_BUF_BASE_ID, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @EFX_POPULATE_OWORD_3(i32 %80, i32 %81, i32 1, i32 %82, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %89 = load i32, i32* @FR_BZ_EVQ_PTR_TBL, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @efx_writeo_table(%struct.efx_nic* %88, i32* %10, i32 %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %60
  %95 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %96 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %99 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i32 %97, i32 %102, i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %110 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %94, %60
  %112 = load i32, i32* @VFDI_RC_SUCCESS, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %58
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @abs_index(%struct.siena_vf*, i32) #1

declare dso_local i32 @EFX_BUFTBL_EVQ_BASE(%struct.siena_vf*, i32) #1

declare dso_local i64 @bad_vf_index(%struct.efx_nic*, i32) #1

declare dso_local i64 @bad_buf_count(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @efx_siena_sriov_bufs(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
