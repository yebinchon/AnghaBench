; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@BNA_MOD_F_INIT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_uninit(%struct.bna* %0) #0 {
  %2 = alloca %struct.bna*, align 8
  store %struct.bna* %0, %struct.bna** %2, align 8
  %3 = load %struct.bna*, %struct.bna** %2, align 8
  %4 = getelementptr inbounds %struct.bna, %struct.bna* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @BNA_MOD_F_INIT_DONE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.bna*, %struct.bna** %2, align 8
  %11 = getelementptr inbounds %struct.bna, %struct.bna* %10, i32 0, i32 9
  %12 = call i32 @bna_mcam_mod_uninit(i32* %11)
  %13 = load %struct.bna*, %struct.bna** %2, align 8
  %14 = getelementptr inbounds %struct.bna, %struct.bna* %13, i32 0, i32 8
  %15 = call i32 @bna_ucam_mod_uninit(i32* %14)
  %16 = load %struct.bna*, %struct.bna** %2, align 8
  %17 = getelementptr inbounds %struct.bna, %struct.bna* %16, i32 0, i32 7
  %18 = call i32 @bna_rx_mod_uninit(i32* %17)
  %19 = load %struct.bna*, %struct.bna** %2, align 8
  %20 = getelementptr inbounds %struct.bna, %struct.bna* %19, i32 0, i32 6
  %21 = call i32 @bna_tx_mod_uninit(i32* %20)
  %22 = load i32, i32* @BNA_MOD_F_INIT_DONE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.bna*, %struct.bna** %2, align 8
  %25 = getelementptr inbounds %struct.bna, %struct.bna* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %9, %1
  %29 = load %struct.bna*, %struct.bna** %2, align 8
  %30 = getelementptr inbounds %struct.bna, %struct.bna* %29, i32 0, i32 5
  %31 = call i32 @bna_stats_mod_uninit(i32* %30)
  %32 = load %struct.bna*, %struct.bna** %2, align 8
  %33 = getelementptr inbounds %struct.bna, %struct.bna* %32, i32 0, i32 4
  %34 = call i32 @bna_ethport_uninit(i32* %33)
  %35 = load %struct.bna*, %struct.bna** %2, align 8
  %36 = getelementptr inbounds %struct.bna, %struct.bna* %35, i32 0, i32 3
  %37 = call i32 @bna_enet_uninit(i32* %36)
  %38 = load %struct.bna*, %struct.bna** %2, align 8
  %39 = getelementptr inbounds %struct.bna, %struct.bna* %38, i32 0, i32 2
  %40 = call i32 @bna_ioceth_uninit(i32* %39)
  %41 = load %struct.bna*, %struct.bna** %2, align 8
  %42 = getelementptr inbounds %struct.bna, %struct.bna* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  ret void
}

declare dso_local i32 @bna_mcam_mod_uninit(i32*) #1

declare dso_local i32 @bna_ucam_mod_uninit(i32*) #1

declare dso_local i32 @bna_rx_mod_uninit(i32*) #1

declare dso_local i32 @bna_tx_mod_uninit(i32*) #1

declare dso_local i32 @bna_stats_mod_uninit(i32*) #1

declare dso_local i32 @bna_ethport_uninit(i32*) #1

declare dso_local i32 @bna_enet_uninit(i32*) #1

declare dso_local i32 @bna_ioceth_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
