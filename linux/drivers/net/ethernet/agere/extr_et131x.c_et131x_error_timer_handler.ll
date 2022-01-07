; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_error_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_error_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.timer_list = type { i32 }

@error_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TX_ERROR_PERIOD = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.et131x_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @et131x_error_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_error_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %6 = ptrtoint %struct.et131x_adapter* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @error_timer, align 4
  %9 = call %struct.et131x_adapter* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %3, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %4, align 8
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %16 = call i64 @et1310_in_phy_coma(%struct.et131x_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %20 = call i32 @et1310_disable_phy_coma(%struct.et131x_adapter* %19)
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 0
  store i32 20, i32* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %25 = call i32 @et1310_update_macstat_host_counters(%struct.et131x_adapter* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 11
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %31, %26
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %53 = call i64 @et1310_in_phy_coma(%struct.et131x_adapter* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %57 = call i32 @et131x_enable_interrupts(%struct.et131x_adapter* %56)
  %58 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %59 = call i32 @et1310_enable_phy_coma(%struct.et131x_adapter* %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %41
  %63 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %63, i32 0, i32 1
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i32, i32* @TX_ERROR_PERIOD, align 4
  %67 = call i64 @msecs_to_jiffies(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @mod_timer(i32* %64, i64 %68)
  ret void
}

declare dso_local %struct.et131x_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @et1310_in_phy_coma(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_disable_phy_coma(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_update_macstat_host_counters(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_enable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_enable_phy_coma(%struct.et131x_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
