; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i64, i32, %struct.napi_struct, %struct.xgbe_prv_data* }
%struct.napi_struct = type { i32 }
%struct.xgbe_prv_data = type { i64, i64, %struct.napi_struct }
%struct.timer_list = type { i32 }

@tx_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"-->xgbe_tx_timer\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"<--xgbe_tx_timer\0A\00", align 1
@channel = common dso_local global %struct.xgbe_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xgbe_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_tx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %7 = ptrtoint %struct.xgbe_channel* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_timer, align 4
  %10 = call %struct.xgbe_channel* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.xgbe_channel* %10, %struct.xgbe_channel** %3, align 8
  %11 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %11, i32 0, i32 3
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %12, align 8
  store %struct.xgbe_prv_data* %13, %struct.xgbe_prv_data** %4, align 8
  %14 = call i32 @DBGPR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %20, i32 0, i32 2
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 2
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi %struct.napi_struct* [ %21, %19 ], [ %24, %22 ]
  store %struct.napi_struct* %26, %struct.napi_struct** %5, align 8
  %27 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %28 = call i64 @napi_schedule_prep(%struct.napi_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %42 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %43 = call i32 @xgbe_disable_rx_tx_int(%struct.xgbe_prv_data* %41, %struct.xgbe_channel* %42)
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @disable_irq_nosync(i32 %47)
  br label %49

49:                                               ; preds = %44, %40
  br label %53

50:                                               ; preds = %30
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %52 = call i32 @xgbe_disable_rx_tx_ints(%struct.xgbe_prv_data* %51)
  br label %53

53:                                               ; preds = %50, %49
  %54 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %55 = call i32 @__napi_schedule(%struct.napi_struct* %54)
  br label %56

56:                                               ; preds = %53, %25
  %57 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %58 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = call i32 @DBGPR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.xgbe_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i64 @napi_schedule_prep(%struct.napi_struct*) #1

declare dso_local i32 @xgbe_disable_rx_tx_int(%struct.xgbe_prv_data*, %struct.xgbe_channel*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @xgbe_disable_rx_tx_ints(%struct.xgbe_prv_data*) #1

declare dso_local i32 @__napi_schedule(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
