; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_ev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_ev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i32, %struct.TYPE_6__, %struct.ef4_nic* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ef4_nic = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"channel %d event queue in special buffers %d-%d\0A\00", align 1
@FRF_AZ_EVQ_EN = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_BUF_BASE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_farch_ev_init(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_channel* %0, %struct.ef4_channel** %2, align 8
  %5 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %5, i32 0, i32 2
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  store %struct.ef4_nic* %7, %struct.ef4_nic** %4, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %9 = load i32, i32* @hw, align 4
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %14 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %17 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %21 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %25 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @netif_dbg(%struct.ef4_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %19, i64 %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %32 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %33 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %32, i32 0, i32 1
  %34 = call i32 @ef4_init_special_buffer(%struct.ef4_nic* %31, %struct.TYPE_6__* %33)
  %35 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %36 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %41 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(i32 %39, i32 255, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @FRF_AZ_EVQ_EN, align 4
  %48 = load i32, i32* @FRF_AZ_EVQ_SIZE, align 4
  %49 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %50 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @__ffs(i64 %52)
  %54 = load i32, i32* @FRF_AZ_EVQ_BUF_BASE_ID, align 4
  %55 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %56 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @EF4_POPULATE_OWORD_3(i32 %46, i32 %47, i32 1, i32 %48, i32 %53, i32 %54, i64 %58)
  %60 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %62 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %67 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ef4_writeo_table(%struct.ef4_nic* %60, i32* %3, i32 %65, i32 %68)
  ret i32 0
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ef4_init_special_buffer(%struct.ef4_nic*, %struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @ef4_writeo_table(%struct.ef4_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
