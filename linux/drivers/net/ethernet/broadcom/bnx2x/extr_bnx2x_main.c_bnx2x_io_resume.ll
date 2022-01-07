; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_io_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_io_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnx2x = type { i64, i32, i32 }

@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Handling parity error recovery. Try again later\0A\00", align 1
@func_mb = common dso_local global %struct.TYPE_2__* null, align 8
@DRV_MSG_SEQ_NUMBER_MASK = common dso_local global i32 0, align 4
@LOAD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bnx2x_io_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_io_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %4, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %44

19:                                               ; preds = %1
  %20 = call i32 (...) @rtnl_lock()
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SHMEM_RD(%struct.bnx2x* %21, i32 %27)
  %29 = load i32, i32* @DRV_MSG_SEQ_NUMBER_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @netif_running(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %38 = load i32, i32* @LOAD_NORMAL, align 4
  %39 = call i32 @bnx2x_nic_load(%struct.bnx2x* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %19
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netif_device_attach(%struct.net_device* %41)
  %43 = call i32 (...) @rtnl_unlock()
  br label %44

44:                                               ; preds = %40, %14
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
