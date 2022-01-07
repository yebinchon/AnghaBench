; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlant_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlant_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32 }

@ocelot_vlant_read_vlanaccess = common dso_local global i32 0, align 4
@ANA_TABLES_VLANACCESS_VLAN_TBL_CMD_M = common dso_local global i32 0, align 4
@ANA_TABLES_VLANACCESS_CMD_IDLE = common dso_local global i32 0, align 4
@TABLE_UPDATE_SLEEP_US = common dso_local global i32 0, align 4
@TABLE_UPDATE_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot*)* @ocelot_vlant_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_vlant_wait_for_completion(%struct.ocelot* %0) #0 {
  %2 = alloca %struct.ocelot*, align 8
  %3 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %2, align 8
  %4 = load i32, i32* @ocelot_vlant_read_vlanaccess, align 4
  %5 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ANA_TABLES_VLANACCESS_VLAN_TBL_CMD_M, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @ANA_TABLES_VLANACCESS_CMD_IDLE, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @TABLE_UPDATE_SLEEP_US, align 4
  %14 = load i32, i32* @TABLE_UPDATE_TIMEOUT_US, align 4
  %15 = call i32 @readx_poll_timeout(i32 %4, %struct.ocelot* %5, i32 %6, i32 %12, i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @readx_poll_timeout(i32, %struct.ocelot*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
