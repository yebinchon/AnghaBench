; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i32, i32, i64, i64 }

@USER_TICK_USEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MCDI_RPC_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_poll(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mcdi_iface*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %9)
  store %struct.efx_mcdi_iface* %10, %struct.efx_mcdi_iface** %4, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i32 @efx_mcdi_poll_reboot(%struct.efx_nic* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %17 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %21 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %23 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %25 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %27 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock_bh(i32* %27)
  store i32 0, i32* %2, align 4
  br label %59

29:                                               ; preds = %1
  %30 = load i32, i32* @USER_TICK_USEC, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @MCDI_RPC_TIMEOUT, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %29, %57
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = call i32 @udelay(i32 1)
  br label %43

41:                                               ; preds = %34
  %42 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64, i64* @jiffies, align 8
  store i64 %44, i64* %5, align 8
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = call i64 @efx_mcdi_poll_once(%struct.efx_nic* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %58

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @time_after(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %49
  br label %34

58:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %54, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_poll_reboot(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @efx_mcdi_poll_once(%struct.efx_nic*) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
