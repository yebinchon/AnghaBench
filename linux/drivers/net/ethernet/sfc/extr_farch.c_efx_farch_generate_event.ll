; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_generate_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_generate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_7__ = type { i64* }

@FRF_AZ_DRV_EV_DATA_LBN = common dso_local global i64 0, align 8
@FRF_AZ_DRV_EV_DATA_WIDTH = common dso_local global i32 0, align 4
@FRF_AZ_DRV_EV_QID = common dso_local global i32 0, align 4
@FR_AZ_DRV_EV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_farch_generate_event(%struct.efx_nic* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %8 = load i64, i64* @FRF_AZ_DRV_EV_DATA_LBN, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @FRF_AZ_DRV_EV_DATA_WIDTH, align 4
  %12 = icmp ne i32 %11, 64
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i1 [ true, %3 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %29, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @FRF_AZ_DRV_EV_QID, align 4
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @EFX_SET_OWORD_FIELD(i64* %42, i32 %39, i32 %40)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %45 = load i32, i32* @FR_AZ_DRV_EV, align 4
  %46 = call i32 @efx_writeo(%struct.efx_nic* %44, %struct.TYPE_7__* %7, i32 %45)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i64*, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
