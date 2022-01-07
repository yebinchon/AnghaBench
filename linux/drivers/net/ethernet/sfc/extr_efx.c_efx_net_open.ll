; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, i64, i32, i64 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"opening device on CPU %d\0A\00", align 1
@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.efx_nic* %7, %struct.efx_nic** %4, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = load i32, i32* @ifup, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (...) @raw_smp_processor_id()
  %14 = call i32 @netif_dbg(%struct.efx_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %16 = call i32 @efx_check_disabled(%struct.efx_nic* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %21
  %32 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %33 = call i64 @efx_mcdi_poll_reboot(%struct.efx_nic* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %37 = load i32, i32* @RESET_TYPE_ALL, align 4
  %38 = call i64 @efx_reset(%struct.efx_nic* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %66

43:                                               ; preds = %35, %31
  %44 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %45 = call i32 @efx_link_status_changed(%struct.efx_nic* %44)
  %46 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %47 = call i32 @efx_start_all(%struct.efx_nic* %46)
  %48 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STATE_DISABLED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %43
  %59 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %60 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netif_device_detach(i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %65 = call i32 @efx_selftest_async_start(%struct.efx_nic* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %40, %28, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @efx_check_disabled(%struct.efx_nic*) #1

declare dso_local i64 @efx_mcdi_poll_reboot(%struct.efx_nic*) #1

declare dso_local i64 @efx_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_link_status_changed(%struct.efx_nic*) #1

declare dso_local i32 @efx_start_all(%struct.efx_nic*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @efx_selftest_async_start(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
