; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.h_ef4_schedule_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.h_ef4_schedule_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"channel %d scheduling NAPI poll on CPU%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_channel*)* @ef4_schedule_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_schedule_channel(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  store %struct.ef4_channel* %0, %struct.ef4_channel** %2, align 8
  %3 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %4 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i32, i32* @intr, align 4
  %7 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %8 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @raw_smp_processor_id()
  %16 = call i32 @netif_vdbg(%struct.TYPE_2__* %5, i32 %6, i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %18 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %17, i32 0, i32 0
  %19 = call i32 @napi_schedule(i32* %18)
  ret void
}

declare dso_local i32 @netif_vdbg(%struct.TYPE_2__*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
