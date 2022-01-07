; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_work_init_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_work_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32, i32, i32, i32, i32 }

@bond_resend_igmp_join_requests_delayed = common dso_local global i32 0, align 4
@bond_alb_monitor = common dso_local global i32 0, align 4
@bond_mii_monitor = common dso_local global i32 0, align 4
@bond_arp_monitor = common dso_local global i32 0, align 4
@bond_3ad_state_machine_handler = common dso_local global i32 0, align 4
@bond_slave_arr_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_work_init_all(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  %3 = load %struct.bonding*, %struct.bonding** %2, align 8
  %4 = getelementptr inbounds %struct.bonding, %struct.bonding* %3, i32 0, i32 5
  %5 = load i32, i32* @bond_resend_igmp_join_requests_delayed, align 4
  %6 = call i32 @INIT_DELAYED_WORK(i32* %4, i32 %5)
  %7 = load %struct.bonding*, %struct.bonding** %2, align 8
  %8 = getelementptr inbounds %struct.bonding, %struct.bonding* %7, i32 0, i32 4
  %9 = load i32, i32* @bond_alb_monitor, align 4
  %10 = call i32 @INIT_DELAYED_WORK(i32* %8, i32 %9)
  %11 = load %struct.bonding*, %struct.bonding** %2, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 3
  %13 = load i32, i32* @bond_mii_monitor, align 4
  %14 = call i32 @INIT_DELAYED_WORK(i32* %12, i32 %13)
  %15 = load %struct.bonding*, %struct.bonding** %2, align 8
  %16 = getelementptr inbounds %struct.bonding, %struct.bonding* %15, i32 0, i32 2
  %17 = load i32, i32* @bond_arp_monitor, align 4
  %18 = call i32 @INIT_DELAYED_WORK(i32* %16, i32 %17)
  %19 = load %struct.bonding*, %struct.bonding** %2, align 8
  %20 = getelementptr inbounds %struct.bonding, %struct.bonding* %19, i32 0, i32 1
  %21 = load i32, i32* @bond_3ad_state_machine_handler, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.bonding*, %struct.bonding** %2, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 0
  %25 = load i32, i32* @bond_slave_arr_handler, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
