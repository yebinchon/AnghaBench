; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_admin_com_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_admin_com_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ENA admin queue is not in running state!\0A\00", align 1
@ENA_REGS_RESET_ADMIN_TO = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_admin_com_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_admin_com_state(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %3 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ena_com_get_admin_running_state(i32 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %14 = load i32, i32* @drv, align 4
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_err(%struct.ena_adapter* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 2
  %21 = call i32 @u64_stats_update_begin(i32* %20)
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 2
  %29 = call i32 @u64_stats_update_end(i32* %28)
  %30 = load i32, i32* @ENA_REGS_RESET_ADMIN_TO, align 4
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %12, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_get_admin_running_state(i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
