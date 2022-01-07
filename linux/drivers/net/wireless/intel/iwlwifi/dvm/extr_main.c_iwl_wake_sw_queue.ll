; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_wake_sw_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_wake_sw_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { i32*, i32, i32, i32, i32* }

@IWL_INVALID_MAC80211_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"queue %d (mac80211 %d) already awake\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, i32)* @iwl_wake_sw_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_wake_sw_queue(%struct.iwl_op_mode* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_op_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %3, align 8
  %8 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %7)
  store %struct.iwl_priv* %8, %struct.iwl_priv** %5, align 8
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IWL_INVALID_MAC80211_QUEUE, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON_ONCE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i64 @atomic_dec_return(i32* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %52

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 3
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ieee80211_wake_queue(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %22, %32, %46, %37
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
