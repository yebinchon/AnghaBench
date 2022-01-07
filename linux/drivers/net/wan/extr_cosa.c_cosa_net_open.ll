; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.channel_data = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@COSA_FW_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: start the firmware first (status %d)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: cosa_net_open called with usage count %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cosa_net_setup_rx = common dso_local global i32 0, align 4
@cosa_net_tx_done = common dso_local global i32 0, align 4
@cosa_net_rx_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cosa_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.channel_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.channel_data* @dev_to_chan(%struct.net_device* %7)
  store %struct.channel_data* %8, %struct.channel_data** %4, align 8
  %9 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %10 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @COSA_FW_START, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %1
  %18 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %19 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %24 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_notice(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %113

31:                                               ; preds = %1
  %32 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %33 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %39 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %31
  %43 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %44 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %47 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %51 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %113

58:                                               ; preds = %31
  %59 = load i32, i32* @cosa_net_setup_rx, align 4
  %60 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %61 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @cosa_net_tx_done, align 4
  %63 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %64 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @cosa_net_rx_done, align 4
  %66 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %67 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %69 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %71 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %77 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @hdlc_open(%struct.net_device* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %58
  %87 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %88 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %94 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %96 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %102 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %113

108:                                              ; preds = %58
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @netif_start_queue(%struct.net_device* %109)
  %111 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %112 = call i32 @cosa_enable_rx(%struct.channel_data* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %108, %86, %42, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.channel_data* @dev_to_chan(%struct.net_device*) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdlc_open(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @cosa_enable_rx(%struct.channel_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
