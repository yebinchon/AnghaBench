; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_stats_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_stats_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_2__, %struct.falcon_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.falcon_nic_data = type { i32, i32 }

@falcon_stat_desc = common dso_local global i32 0, align 4
@FALCON_STAT_COUNT = common dso_local global i32 0, align 4
@falcon_stat_mask = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timed out waiting for statistics\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_stats_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_stats_complete(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %4, i32 0, i32 2
  %6 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %5, align 8
  store %struct.falcon_nic_data* %6, %struct.falcon_nic_data** %3, align 8
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %8 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %14 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = call i64 @FALCON_XMAC_STATS_DMA_FLAG(%struct.ef4_nic* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = call i32 (...) @rmb()
  %20 = load i32, i32* @falcon_stat_desc, align 4
  %21 = load i32, i32* @FALCON_STAT_COUNT, align 4
  %22 = load i32, i32* @falcon_stat_mask, align 4
  %23 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %24 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ef4_nic_update_stats(i32 %20, i32 %21, i32 %22, i32 %25, i32 %29, i32 1)
  br label %38

31:                                               ; preds = %12
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %33 = load i32, i32* @hw, align 4
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %35 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netif_err(%struct.ef4_nic* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %11, %31, %18
  ret void
}

declare dso_local i64 @FALCON_XMAC_STATS_DMA_FLAG(%struct.ef4_nic*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ef4_nic_update_stats(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
