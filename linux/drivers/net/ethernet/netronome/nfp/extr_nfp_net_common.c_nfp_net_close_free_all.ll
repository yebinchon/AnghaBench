; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_close_free_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_close_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFP_NET_CFG_LSC = common dso_local global i32 0, align 4
@NFP_NET_IRQ_LSC_IDX = common dso_local global i32 0, align 4
@NFP_NET_CFG_EXN = common dso_local global i32 0, align 4
@NFP_NET_IRQ_EXN_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_close_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_close_free_all(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %4 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %4, i32 0, i32 1
  %6 = call i32 @nfp_net_tx_rings_free(%struct.TYPE_3__* %5)
  %7 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 1
  %9 = call i32 @nfp_net_rx_rings_free(%struct.TYPE_3__* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %19 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @nfp_net_cleanup_vector(%struct.nfp_net* %18, i32* %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %31 = load i32, i32* @NFP_NET_CFG_LSC, align 4
  %32 = load i32, i32* @NFP_NET_IRQ_LSC_IDX, align 4
  %33 = call i32 @nfp_net_aux_irq_free(%struct.nfp_net* %30, i32 %31, i32 %32)
  %34 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %35 = load i32, i32* @NFP_NET_CFG_EXN, align 4
  %36 = load i32, i32* @NFP_NET_IRQ_EXN_IDX, align 4
  %37 = call i32 @nfp_net_aux_irq_free(%struct.nfp_net* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @nfp_net_tx_rings_free(%struct.TYPE_3__*) #1

declare dso_local i32 @nfp_net_rx_rings_free(%struct.TYPE_3__*) #1

declare dso_local i32 @nfp_net_cleanup_vector(%struct.nfp_net*, i32*) #1

declare dso_local i32 @nfp_net_aux_irq_free(%struct.nfp_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
