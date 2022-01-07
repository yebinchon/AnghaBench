; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i64, %struct.TYPE_2__*, i32 (i32, i64)*, i32 }
%struct.TYPE_2__ = type { i32 }

@BNA_ETHPORT_F_PORT_ENABLED = common dso_local global i32 0, align 4
@BNA_LINK_DOWN = common dso_local global i64 0, align 8
@ETHPORT_E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*)* @bna_ethport_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_ethport_fail(%struct.bna_ethport* %0) #0 {
  %2 = alloca %struct.bna_ethport*, align 8
  store %struct.bna_ethport* %0, %struct.bna_ethport** %2, align 8
  %3 = load i32, i32* @BNA_ETHPORT_F_PORT_ENABLED, align 4
  %4 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %5 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %9 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BNA_LINK_DOWN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i64, i64* @BNA_LINK_DOWN, align 8
  %15 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %16 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %18 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %17, i32 0, i32 2
  %19 = load i32 (i32, i64)*, i32 (i32, i64)** %18, align 8
  %20 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %21 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @BNA_LINK_DOWN, align 8
  %26 = call i32 %19(i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %29 = load i32, i32* @ETHPORT_E_FAIL, align 4
  %30 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %28, i32 %29)
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ethport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
