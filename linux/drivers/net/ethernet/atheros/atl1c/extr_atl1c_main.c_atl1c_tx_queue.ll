; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, %struct.atl1c_tpd_ring* }
%struct.atl1c_tpd_ring = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atl1c_tpd_desc = type { i32 }

@atl1c_trans_high = common dso_local global i32 0, align 4
@REG_TPD_PRI1_PIDX = common dso_local global i32 0, align 4
@REG_TPD_PRI0_PIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*, %struct.sk_buff*, %struct.atl1c_tpd_desc*, i32)* @atl1c_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_tx_queue(%struct.atl1c_adapter* %0, %struct.sk_buff* %1, %struct.atl1c_tpd_desc* %2, i32 %3) #0 {
  %5 = alloca %struct.atl1c_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.atl1c_tpd_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atl1c_tpd_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.atl1c_tpd_desc* %2, %struct.atl1c_tpd_desc** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 1
  %13 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %13, i64 %15
  store %struct.atl1c_tpd_ring* %16, %struct.atl1c_tpd_ring** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @atl1c_trans_high, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @REG_TPD_PRI1_PIDX, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @REG_TPD_PRI0_PIDX, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %10, align 4
  %26 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %9, align 8
  %30 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @AT_WRITE_REGW(i32* %27, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @AT_WRITE_REGW(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
