; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_recovery_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_recovery_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Recovery has failed. Power cycle is needed.\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_recovery_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_recovery_failed(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netdev_err(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netif_device_detach(i32 %9)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = call i32 @bnx2x_set_reset_in_progress(%struct.bnx2x* %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = load i32, i32* @PCI_D3hot, align 4
  %15 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %13, i32 %14)
  %16 = load i32, i32* @BNX2X_RECOVERY_FAILED, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @smp_mb()
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @bnx2x_set_reset_in_progress(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_power_state(%struct.bnx2x*, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
