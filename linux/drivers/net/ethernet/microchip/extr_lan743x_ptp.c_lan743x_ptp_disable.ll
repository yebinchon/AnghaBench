; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PTP already disabled\0A\00", align 1
@PTP_CMD_CTL = common dso_local global i32 0, align 4
@PTP_CMD_CTL_PTP_DISABLE_ = common dso_local global i32 0, align 4
@PTP_CMD_CTL_PTP_ENABLE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*)* @lan743x_ptp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_disable(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_ptp*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %4 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %4, i32 0, i32 1
  store %struct.lan743x_ptp* %5, %struct.lan743x_ptp** %3, align 8
  %6 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %7 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %10 = call i32 @lan743x_ptp_is_enabled(%struct.lan743x_adapter* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %14 = load i32, i32* @drv, align 4
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_warn(%struct.lan743x_adapter* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %21 = load i32, i32* @PTP_CMD_CTL, align 4
  %22 = load i32, i32* @PTP_CMD_CTL_PTP_DISABLE_, align 4
  %23 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %20, i32 %21, i32 %22)
  %24 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %25 = load i32, i32* @PTP_CMD_CTL_PTP_ENABLE_, align 4
  %26 = call i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter* %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %29 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan743x_ptp_is_enabled(%struct.lan743x_adapter*) #1

declare dso_local i32 @netif_warn(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_ptp_wait_till_cmd_done(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
