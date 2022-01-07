; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32, i32*, i32*, i64, i32, i32, %struct.bna* }
%struct.bna = type { i32 }

@BNA_ETHPORT_F_ADMIN_UP = common dso_local global i32 0, align 4
@BNA_ETHPORT_F_PORT_ENABLED = common dso_local global i32 0, align 4
@BNA_LINK_DOWN = common dso_local global i32 0, align 4
@bnad_cb_ethport_link_status = common dso_local global i32 0, align 4
@bna_ethport_sm_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*, %struct.bna*)* @bna_ethport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_ethport_init(%struct.bna_ethport* %0, %struct.bna* %1) #0 {
  %3 = alloca %struct.bna_ethport*, align 8
  %4 = alloca %struct.bna*, align 8
  store %struct.bna_ethport* %0, %struct.bna_ethport** %3, align 8
  store %struct.bna* %1, %struct.bna** %4, align 8
  %5 = load i32, i32* @BNA_ETHPORT_F_ADMIN_UP, align 4
  %6 = load i32, i32* @BNA_ETHPORT_F_PORT_ENABLED, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %9 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.bna*, %struct.bna** %4, align 8
  %13 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %14 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %13, i32 0, i32 6
  store %struct.bna* %12, %struct.bna** %14, align 8
  %15 = load i32, i32* @BNA_LINK_DOWN, align 4
  %16 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %17 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @bnad_cb_ethport_link_status, align 4
  %19 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %20 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %22 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %24 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %26 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %28 = load i32, i32* @bna_ethport_sm_stopped, align 4
  %29 = call i32 @bfa_fsm_set_state(%struct.bna_ethport* %27, i32 %28)
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_ethport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
