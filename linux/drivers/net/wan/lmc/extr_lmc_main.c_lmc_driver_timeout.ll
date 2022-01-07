; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_driver_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_driver_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"lmc_driver_timeout in\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: Xmitter busy|\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@LMC_EVENT_XMTPRCTMO = common dso_local global i32 0, align 4
@csr_status = common dso_local global i32 0, align 4
@LMC_EVENT_RESET1 = common dso_local global i32 0, align 4
@LMC_EVENT_RESET2 = common dso_local global i32 0, align 4
@csr_command = common dso_local global i32 0, align 4
@csr_txpoll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"lmc_driver_timeout out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lmc_driver_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_driver_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.TYPE_12__* @dev_to_sc(%struct.net_device* %6)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @lmc_trace(%struct.net_device* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i64 @dev_trans_start(%struct.net_device* %24)
  %26 = sub nsw i64 %23, %25
  %27 = load i64, i64* @TX_TIMEOUT, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %83

30:                                               ; preds = %1
  %31 = load i32, i32* @LMC_EVENT_XMTPRCTMO, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = load i32, i32* @csr_status, align 4
  %34 = call i32 @LMC_CSR_READ(%struct.TYPE_12__* %32, i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LMC_EVENT_LOG(i32 %31, i32 %34, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @lmc_running_reset(%struct.net_device* %40)
  %42 = load i32, i32* @LMC_EVENT_RESET1, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = load i32, i32* @csr_status, align 4
  %45 = call i32 @LMC_CSR_READ(%struct.TYPE_12__* %43, i32 %44)
  %46 = call i32 @LMC_EVENT_LOG(i32 %42, i32 %45, i32 0)
  %47 = load i32, i32* @LMC_EVENT_RESET2, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i32 @lmc_mii_readreg(%struct.TYPE_12__* %48, i32 0, i32 16)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = call i32 @lmc_mii_readreg(%struct.TYPE_12__* %50, i32 0, i32 17)
  %52 = call i32 @LMC_EVENT_LOG(i32 %47, i32 %49, i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = load i32, i32* @csr_command, align 4
  %55 = call i32 @LMC_CSR_READ(%struct.TYPE_12__* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = load i32, i32* @csr_command, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, 2
  %60 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %56, i32 %57, i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load i32, i32* @csr_command, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, 8194
  %65 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %61, i32 %62, i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load i32, i32* @csr_txpoll, align 4
  %68 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %66, i32 %67, i32 0)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @netif_trans_update(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %30, %29
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = call i32 @lmc_trace(%struct.net_device* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_12__* @dev_to_sc(%struct.net_device*) #1

declare dso_local i32 @lmc_trace(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @dev_trans_start(%struct.net_device*) #1

declare dso_local i32 @LMC_EVENT_LOG(i32, i32, i32) #1

declare dso_local i32 @LMC_CSR_READ(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lmc_running_reset(%struct.net_device*) #1

declare dso_local i32 @lmc_mii_readreg(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
