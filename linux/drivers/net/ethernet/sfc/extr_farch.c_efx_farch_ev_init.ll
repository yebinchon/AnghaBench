; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_ev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_ev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.TYPE_6__, %struct.efx_nic* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.efx_nic = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"channel %d event queue in special buffers %d-%d\0A\00", align 1
@FRF_CZ_TIMER_Q_EN = common dso_local global i32 0, align 4
@FRF_CZ_HOST_NOTIFY_MODE = common dso_local global i32 0, align 4
@FRF_CZ_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_DIS = common dso_local global i64 0, align 8
@FR_BZ_TIMER_TBL = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_EN = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_BUF_BASE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_farch_ev_init(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 2
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %4, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = load i32, i32* @hw, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %17 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %21 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %25 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @netif_dbg(%struct.efx_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %19, i64 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FRF_CZ_TIMER_Q_EN, align 4
  %33 = load i32, i32* @FRF_CZ_HOST_NOTIFY_MODE, align 4
  %34 = load i32, i32* @FRF_CZ_TIMER_MODE, align 4
  %35 = load i64, i64* @FFE_CZ_TIMER_MODE_DIS, align 8
  %36 = call i32 @EFX_POPULATE_OWORD_3(i32 %31, i32 %32, i32 1, i32 %33, i32 0, i32 %34, i64 %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %38 = load i32, i32* @FR_BZ_TIMER_TBL, align 4
  %39 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %40 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @efx_writeo_table(%struct.efx_nic* %37, i32* %3, i32 %38, i32 %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %44 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %45 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %44, i32 0, i32 1
  %46 = call i32 @efx_init_special_buffer(%struct.efx_nic* %43, %struct.TYPE_6__* %45)
  %47 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %48 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %53 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memset(i32 %51, i32 255, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @FRF_AZ_EVQ_EN, align 4
  %60 = load i32, i32* @FRF_AZ_EVQ_SIZE, align 4
  %61 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %62 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @__ffs(i64 %64)
  %66 = load i32, i32* @FRF_AZ_EVQ_BUF_BASE_ID, align 4
  %67 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %68 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @EFX_POPULATE_OWORD_3(i32 %58, i32 %59, i32 1, i32 %60, i32 %65, i32 %66, i64 %70)
  %72 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %73 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %79 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @efx_writeo_table(%struct.efx_nic* %72, i32* %3, i32 %77, i32 %80)
  ret i32 0
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @EFX_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @efx_init_special_buffer(%struct.efx_nic*, %struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
