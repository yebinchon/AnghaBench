; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_set_irq_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_set_irq_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_2__**, %struct.xgene_enet_desc_ring** }
%struct.TYPE_2__ = type { %struct.xgene_enet_desc_ring* }
%struct.xgene_enet_desc_ring = type { i32 }

@IRQ_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-rx-txc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-rx-%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s-txc-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xgene_enet_set_irq_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_set_irq_name(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.xgene_enet_pdata* %7, %struct.xgene_enet_pdata** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %15, i32 0, i32 3
  %17 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %17, i64 %19
  %21 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %20, align 8
  store %struct.xgene_enet_desc_ring* %21, %struct.xgene_enet_desc_ring** %4, align 8
  %22 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %14
  %27 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IRQ_ID_SIZE, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %45

35:                                               ; preds = %14
  %36 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IRQ_ID_SIZE, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %8

49:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %53 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %58 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %64, align 8
  store %struct.xgene_enet_desc_ring* %65, %struct.xgene_enet_desc_ring** %4, align 8
  %66 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %67 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IRQ_ID_SIZE, align 4
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %68, i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %50

78:                                               ; preds = %50
  ret void
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
