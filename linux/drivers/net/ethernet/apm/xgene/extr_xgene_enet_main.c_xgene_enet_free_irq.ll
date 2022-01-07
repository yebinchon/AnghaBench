; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_2__**, %struct.xgene_enet_desc_ring** }
%struct.TYPE_2__ = type { %struct.xgene_enet_desc_ring* }
%struct.xgene_enet_desc_ring = type { i32 }
%struct.device = type { i32 }

@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xgene_enet_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_free_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.xgene_enet_pdata* %8, %struct.xgene_enet_pdata** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.device* @ndev_to_dev(%struct.net_device* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %18, i32 0, i32 3
  %20 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %20, i64 %22
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %23, align 8
  store %struct.xgene_enet_desc_ring* %24, %struct.xgene_enet_desc_ring** %4, align 8
  %25 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %26 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %29 = call i32 @irq_clear_status_flags(i32 %27, i32 %28)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %32 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %35 = call i32 @devm_free_irq(%struct.device* %30, i32 %33, %struct.xgene_enet_desc_ring* %34)
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %11

39:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %48 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %54, align 8
  store %struct.xgene_enet_desc_ring* %55, %struct.xgene_enet_desc_ring** %4, align 8
  %56 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %57 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %60 = call i32 @irq_clear_status_flags(i32 %58, i32 %59)
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %63 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %66 = call i32 @devm_free_irq(%struct.device* %61, i32 %64, %struct.xgene_enet_desc_ring* %65)
  br label %67

67:                                               ; preds = %46
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %40

70:                                               ; preds = %40
  ret void
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @ndev_to_dev(%struct.net_device*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i32, %struct.xgene_enet_desc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
