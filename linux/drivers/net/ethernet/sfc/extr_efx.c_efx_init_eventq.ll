; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_init_eventq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_init_eventq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i64, i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chan %d init event queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*)* @efx_init_eventq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_init_eventq(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 3
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @EFX_WARN_ON_PARANOID(i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load i32, i32* @drv, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %18 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_dbg(%struct.efx_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %22 = call i32 @efx_nic_init_eventq(%struct.efx_channel* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.efx_channel*)**
  %31 = load i32 (%struct.efx_channel*)*, i32 (%struct.efx_channel*)** %30, align 8
  %32 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %33 = call i32 %31(%struct.efx_channel* %32)
  %34 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %35 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %37 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %25, %1
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_nic_init_eventq(%struct.efx_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
