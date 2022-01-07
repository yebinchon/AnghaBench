; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ef4_nic = type { i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"opening device on CPU %d\0A\00", align 1
@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.ef4_nic* %7, %struct.ef4_nic** %4, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %9 = load i32, i32* @ifup, align 4
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (...) @raw_smp_processor_id()
  %14 = call i32 @netif_dbg(%struct.ef4_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %16 = call i32 @ef4_check_disabled(%struct.ef4_nic* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %33 = call i32 @ef4_link_status_changed(%struct.ef4_nic* %32)
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %35 = call i32 @ef4_start_all(%struct.ef4_nic* %34)
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %37 = call i32 @ef4_selftest_async_start(%struct.ef4_nic* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %28, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @ef4_check_disabled(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_link_status_changed(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_start_all(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_selftest_async_start(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
