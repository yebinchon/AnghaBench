; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_2__**, %struct.xgene_enet_desc_ring** }
%struct.TYPE_2__ = type { %struct.xgene_enet_desc_ring* }
%struct.xgene_enet_desc_ring = type { i32, i32 }
%struct.device = type { i32 }

@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4
@xgene_enet_rx_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to request irq %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xgene_enet_register_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_register_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xgene_enet_desc_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %8)
  store %struct.xgene_enet_pdata* %9, %struct.xgene_enet_pdata** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.device* @ndev_to_dev(%struct.net_device* %10)
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @xgene_enet_set_irq_name(%struct.net_device* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 3
  %23 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %23, i64 %25
  %27 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %26, align 8
  store %struct.xgene_enet_desc_ring* %27, %struct.xgene_enet_desc_ring** %5, align 8
  %28 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %29 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %32 = call i32 @irq_set_status_flags(i32 %30, i32 %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %35 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @xgene_enet_rx_irq, align 4
  %38 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %39 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %42 = call i32 @devm_request_irq(%struct.device* %33, i32 %36, i32 %37, i32 0, i32 %40, %struct.xgene_enet_desc_ring* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %20
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %48 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %14

55:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %59 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %56
  %63 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %64 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %70, align 8
  store %struct.xgene_enet_desc_ring* %71, %struct.xgene_enet_desc_ring** %5, align 8
  %72 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %73 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %76 = call i32 @irq_set_status_flags(i32 %74, i32 %75)
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %79 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @xgene_enet_rx_irq, align 4
  %82 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %83 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %86 = call i32 @devm_request_irq(%struct.device* %77, i32 %80, i32 %81, i32 0, i32 %84, %struct.xgene_enet_desc_ring* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %62
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %92 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %62
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %56

99:                                               ; preds = %56
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @ndev_to_dev(%struct.net_device*) #1

declare dso_local i32 @xgene_enet_set_irq_name(%struct.net_device*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
