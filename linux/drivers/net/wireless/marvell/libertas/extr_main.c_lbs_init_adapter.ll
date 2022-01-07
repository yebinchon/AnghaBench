; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_init_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@LBS_DISCONNECTED = common dso_local global i32 0, align 4
@DEFAULT_AD_HOC_CHANNEL = common dso_local global i32 0, align 4
@CMD_ACT_MAC_RX_ON = common dso_local global i32 0, align 4
@CMD_ACT_MAC_TX_ON = common dso_local global i32 0, align 4
@LBS802_11POWERMODECAM = common dso_local global i32 0, align 4
@PS_STATE_FULL_POWER = common dso_local global i32 0, align 4
@lbs_cmd_timeout_handler = common dso_local global i32 0, align 4
@lbs_tx_lockup_handler = common dso_local global i32 0, align 4
@auto_deepsleep_timer_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Out of memory allocating command buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Out of memory allocating event FIFO buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_init_adapter(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 27
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @eth_broadcast_addr(i32 %6)
  %8 = load i32, i32* @LBS_DISCONNECTED, align 4
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 26
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @DEFAULT_AD_HOC_CHANNEL, align 4
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 25
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @CMD_ACT_MAC_RX_ON, align 4
  %15 = load i32, i32* @CMD_ACT_MAC_TX_ON, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @LBS802_11POWERMODECAM, align 4
  %22 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 24
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PS_STATE_FULL_POWER, align 4
  %25 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 23
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 22
  store i64 0, i64* %28, align 8
  %29 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 21
  store i64 0, i64* %30, align 8
  %31 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 20
  store i64 0, i64* %32, align 8
  %33 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 19
  store i64 0, i64* %34, align 8
  %35 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 18
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 17
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %42 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 16
  store i64 0, i64* %44, align 8
  %45 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 15
  store i64 0, i64* %46, align 8
  %47 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 14
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 13
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 12
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 11
  %58 = load i32, i32* @lbs_cmd_timeout_handler, align 4
  %59 = call i32 @timer_setup(i32* %57, i32 %58, i32 0)
  %60 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 10
  %62 = load i32, i32* @lbs_tx_lockup_handler, align 4
  %63 = call i32 @timer_setup(i32* %61, i32 %62, i32 0)
  %64 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 9
  %66 = load i32, i32* @auto_deepsleep_timer_fn, align 4
  %67 = call i32 @timer_setup(i32* %65, i32 %66, i32 0)
  %68 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 8
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 7
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %75 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %74, i32 0, i32 6
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %78 = call i64 @lbs_allocate_cmd_buffer(%struct.lbs_private* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %1
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %104

84:                                               ; preds = %1
  %85 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %86 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %96 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %95, i32 0, i32 3
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @kfifo_alloc(i32* %96, i32 64, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %104

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %101, %80
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @lbs_allocate_cmd_buffer(%struct.lbs_private*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
