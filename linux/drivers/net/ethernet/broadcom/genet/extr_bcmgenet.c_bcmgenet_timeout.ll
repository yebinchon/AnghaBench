; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bcmgenet_priv = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bcmgenet_timeout\0A\00", align 1
@DESC_INDEX = common dso_local global i64 0, align 8
@UMAC_IRQ_TXDMA_DONE = common dso_local global i32 0, align 4
@INTRL2_CPU_MASK_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcmgenet_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcmgenet_priv* %8, %struct.bcmgenet_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %10 = load i32, i32* @tx_err, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_dbg(%struct.bcmgenet_priv* %9, i32 %10, %struct.net_device* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %14, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @bcmgenet_dump_tx_queue(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %34 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @DESC_INDEX, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @bcmgenet_dump_tx_queue(i32* %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @bcmgenet_tx_reclaim_all(%struct.net_device* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %54, %32
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %44 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %42, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* @UMAC_IRQ_TXDMA_DONE, align 4
  store i32 %58, i32* %4, align 4
  %59 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @INTRL2_CPU_MASK_CLEAR, align 4
  %62 = call i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv* %59, i32 %60, i32 %61)
  %63 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @INTRL2_CPU_MASK_CLEAR, align 4
  %66 = call i32 @bcmgenet_intrl2_1_writel(%struct.bcmgenet_priv* %63, i32 %64, i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @netif_trans_update(%struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %74)
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.bcmgenet_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @bcmgenet_dump_tx_queue(i32*) #1

declare dso_local i32 @bcmgenet_tx_reclaim_all(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_intrl2_1_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
