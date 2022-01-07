; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_probe_eventq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_probe_eventq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i64, i32, %struct.ef4_nic* }
%struct.ef4_nic = type { i64, i64, i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"chan %d create event queue\0A\00", align 1
@EF4_MAX_EVQ_SIZE = common dso_local global i64 0, align 8
@EF4_MIN_EVQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_channel*)* @ef4_probe_eventq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_probe_eventq(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i64, align 8
  store %struct.ef4_channel* %0, %struct.ef4_channel** %2, align 8
  %5 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %5, i32 0, i32 2
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  store %struct.ef4_nic* %7, %struct.ef4_nic** %3, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %9 = load i32, i32* @probe, align 4
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %14 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_dbg(%struct.ef4_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %21 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = add nsw i64 %23, 128
  %25 = call i64 @roundup_pow_of_two(i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @EF4_MAX_EVQ_SIZE, align 8
  %28 = icmp ugt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @EF4_BUG_ON_PARANOID(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @EF4_MIN_EVQ_SIZE, align 4
  %33 = call i64 @max(i64 %31, i32 %32)
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %36 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %38 = call i32 @ef4_nic_probe_eventq(%struct.ef4_channel* %37)
  ret i32 %38
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @EF4_BUG_ON_PARANOID(i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @ef4_nic_probe_eventq(%struct.ef4_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
