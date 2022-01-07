; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, i32, i32, i32 }
%struct.xgene_enet_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_desc_ring*)* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*)* @xgene_enet_free_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_free_desc_ring(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %2, align 8
  %5 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %6 = icmp ne %struct.xgene_enet_desc_ring* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @ndev_to_dev(i32 %11)
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.xgene_enet_pdata* @netdev_priv(i32 %15)
  store %struct.xgene_enet_pdata* %16, %struct.xgene_enet_pdata** %3, align 8
  %17 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %18 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %8
  %22 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.xgene_enet_desc_ring*)*, i32 (%struct.xgene_enet_desc_ring*)** %25, align 8
  %27 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %28 = call i32 %26(%struct.xgene_enet_desc_ring* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %34 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dmam_free_coherent(%struct.device* %29, i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %21, %8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %43 = call i32 @devm_kfree(%struct.device* %41, %struct.xgene_enet_desc_ring* %42)
  br label %44

44:                                               ; preds = %40, %7
  ret void
}

declare dso_local %struct.device* @ndev_to_dev(i32) #1

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(i32) #1

declare dso_local i32 @dmam_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.xgene_enet_desc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
