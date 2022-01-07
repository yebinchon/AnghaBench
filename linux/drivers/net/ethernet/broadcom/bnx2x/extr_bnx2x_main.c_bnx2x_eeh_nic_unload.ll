; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_eeh_nic_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_eeh_nic_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BNX2X_STATE_CLOSING_WAIT4_HALT = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_NONE = common dso_local global i32 0, align 4
@CNIC_CTL_STOP_CMD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@STATS_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_eeh_nic_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_eeh_nic_unload(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load i32, i32* @BNX2X_STATE_CLOSING_WAIT4_HALT, align 4
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 7
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @BNX2X_RX_MODE_NONE, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i64 @CNIC_LOADED(%struct.bnx2x* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = load i32, i32* @CNIC_CTL_STOP_CMD, align 4
  %15 = call i32 @bnx2x_cnic_notify(%struct.bnx2x* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i32 @bnx2x_tx_disable(%struct.bnx2x* %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = call i32 @bnx2x_del_all_napi(%struct.bnx2x* %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i64 @CNIC_LOADED(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @bnx2x_del_all_napi_cnic(%struct.bnx2x* %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netdev_reset_tc(i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 5
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 4
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 3
  %40 = call i32 @cancel_delayed_work_sync(i32* %39)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 1
  %43 = load i32, i32* @HZ, align 4
  %44 = sdiv i32 %43, 10
  %45 = call i32 @down_timeout(i32* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* @STATS_STATE_DISABLED, align 4
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 1
  %53 = call i32 @up(i32* %52)
  br label %54

54:                                               ; preds = %47, %27
  %55 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %56 = call i32 @bnx2x_save_statistics(%struct.bnx2x* %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netif_carrier_off(i32 %59)
  ret i32 0
}

declare dso_local i64 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cnic_notify(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_tx_disable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_del_all_napi(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_del_all_napi_cnic(%struct.bnx2x*) #1

declare dso_local i32 @netdev_reset_tc(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @down_timeout(i32*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @bnx2x_save_statistics(%struct.bnx2x*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
