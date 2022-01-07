; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i64, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%lu : Tx timeout(#%d), bss_type-num = %d-%d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@TX_TIMEOUT_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"tx_timeout_cnt exceeds threshold.\09Triggering card reset!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mwifiex_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %4)
  store %struct.mwifiex_private* %5, %struct.mwifiex_private** %3, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @jiffies, align 4
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_5__* %16, i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21, i32 %24, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @mwifiex_set_trans_start(%struct.net_device* %29)
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TX_TIMEOUT_THRESHOLD, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %1
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_5__*)* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %36
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %46 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_5__* %47, i32 %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %54, align 8
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %57 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 %55(%struct.TYPE_5__* %58)
  br label %60

60:                                               ; preds = %44, %36, %1
  ret void
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_set_trans_start(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
