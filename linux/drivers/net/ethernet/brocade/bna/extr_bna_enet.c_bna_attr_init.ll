; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_attr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_attr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ioceth = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@BFI_ENET_DEF_TXQ = common dso_local global i32 0, align 4
@BFI_ENET_DEF_RXP = common dso_local global i32 0, align 4
@BFI_ENET_DEF_UCAM = common dso_local global i32 0, align 4
@BFI_ENET_MAX_MCAM = common dso_local global i32 0, align 4
@BFI_ENET_DEF_RITSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ioceth*)* @bna_attr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_attr_init(%struct.bna_ioceth* %0) #0 {
  %2 = alloca %struct.bna_ioceth*, align 8
  store %struct.bna_ioceth* %0, %struct.bna_ioceth** %2, align 8
  %3 = load i32, i32* @BFI_ENET_DEF_TXQ, align 4
  %4 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %5 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @BFI_ENET_DEF_RXP, align 4
  %8 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %9 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @BFI_ENET_DEF_UCAM, align 4
  %12 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %13 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @BFI_ENET_MAX_MCAM, align 4
  %16 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %17 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @BFI_ENET_DEF_RITSZ, align 4
  %20 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %21 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.bna_ioceth*, %struct.bna_ioceth** %2, align 8
  %24 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
