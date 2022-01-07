; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q**, %struct.TYPE_3__* }
%struct.fec_enet_priv_tx_q = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_free_queue(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fec_enet_priv_tx_q*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fec_enet_private* %7, %struct.fec_enet_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %11 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %8
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 2
  %17 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %17, i64 %19
  %21 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %20, align 8
  %22 = icmp ne %struct.fec_enet_priv_tx_q* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %14
  %24 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %25 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %24, i32 0, i32 2
  %26 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %26, i64 %28
  %30 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %29, align 8
  %31 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %23
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 2
  %37 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %37, i64 %39
  %41 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %40, align 8
  store %struct.fec_enet_priv_tx_q* %41, %struct.fec_enet_priv_tx_q** %5, align 8
  %42 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %43 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %47 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %53 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %56 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(i32* %45, i32 %51, i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %34, %23, %14
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %8

63:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %67 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %72 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %71, i32 0, i32 3
  %73 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %73, i64 %75
  %77 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %76, align 8
  %78 = call i32 @kfree(%struct.fec_enet_priv_tx_q* %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %64

82:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %86 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %91 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %90, i32 0, i32 2
  %92 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %92, i64 %94
  %96 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %95, align 8
  %97 = call i32 @kfree(%struct.fec_enet_priv_tx_q* %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %83

101:                                              ; preds = %83
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.fec_enet_priv_tx_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
