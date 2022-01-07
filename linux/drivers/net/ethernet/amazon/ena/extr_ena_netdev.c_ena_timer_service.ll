; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_timer_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_timer_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ena_admin_host_info*, i32* }
%struct.ena_admin_host_info = type { i32 }
%struct.timer_list = type { i32 }

@timer_service = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Trigger reset is on\0A\00", align 1
@ena_wq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@adapter = common dso_local global %struct.ena_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ena_timer_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_timer_service(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ena_admin_host_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %7 = ptrtoint %struct.ena_adapter* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer_service, align 4
  %10 = call %struct.ena_adapter* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ena_adapter* %10, %struct.ena_adapter** %3, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %21, align 8
  store %struct.ena_admin_host_info* %22, %struct.ena_admin_host_info** %5, align 8
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %24 = call i32 @check_for_missing_keep_alive(%struct.ena_adapter* %23)
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %26 = call i32 @check_for_admin_com_state(%struct.ena_adapter* %25)
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = call i32 @check_for_missing_completions(%struct.ena_adapter* %27)
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %30 = call i32 @check_for_empty_rx_ring(%struct.ena_adapter* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ena_dump_stats_to_buf(%struct.ena_adapter* %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %39 = icmp ne %struct.ena_admin_host_info* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %42 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ena_update_host_info(%struct.ena_admin_host_info* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 3
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %55 = load i32, i32* @drv, align 4
  %56 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_err(%struct.ena_adapter* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %61 = call i32 @ena_dump_stats_to_dmesg(%struct.ena_adapter* %60)
  %62 = load i32, i32* @ena_wq, align 4
  %63 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %63, i32 0, i32 1
  %65 = call i32 @queue_work(i32 %62, i32* %64)
  br label %73

66:                                               ; preds = %46
  %67 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %67, i32 0, i32 0
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* @HZ, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @mod_timer(i32* %68, i64 %71)
  br label %73

73:                                               ; preds = %66, %53
  ret void
}

declare dso_local %struct.ena_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @check_for_missing_keep_alive(%struct.ena_adapter*) #1

declare dso_local i32 @check_for_admin_com_state(%struct.ena_adapter*) #1

declare dso_local i32 @check_for_missing_completions(%struct.ena_adapter*) #1

declare dso_local i32 @check_for_empty_rx_ring(%struct.ena_adapter*) #1

declare dso_local i32 @ena_dump_stats_to_buf(%struct.ena_adapter*, i32*) #1

declare dso_local i32 @ena_update_host_info(%struct.ena_admin_host_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ena_dump_stats_to_dmesg(%struct.ena_adapter*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
