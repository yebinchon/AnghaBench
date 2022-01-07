; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_txdma_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_txdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bmac_data = type { i64, i64, i32, i64, i32**, %struct.TYPE_3__*, %struct.dbdma_cmd* }
%struct.TYPE_3__ = type { i32 }
%struct.dbdma_cmd = type { i32 }

@txintcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bmac_txdma_intr\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bmac_txdma_xfer_stat=%#0x\0A\00", align 1
@ACTIVE = common dso_local global i32 0, align 4
@N_TX_RING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"bmac_txdma_intr done->bmac_start\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bmac_txdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmac_txdma_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bmac_data*, align 8
  %7 = alloca %struct.dbdma_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %12)
  store %struct.bmac_data* %13, %struct.bmac_data** %6, align 8
  %14 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %15 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %14, i32 0, i32 2
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @txintcount, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @txintcount, align 4
  %20 = icmp slt i32 %18, 10
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @XXDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  br label %24

24:                                               ; preds = %23, %114
  %25 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %26 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %25, i32 0, i32 6
  %27 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %26, align 8
  %28 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %29 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %27, i64 %30
  store %struct.dbdma_cmd* %31, %struct.dbdma_cmd** %7, align 8
  %32 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %32, i32 0, i32 0
  %34 = load volatile i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @txintcount, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @XXDEBUG(i8* %41)
  br label %43

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ACTIVE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %7, align 8
  %50 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %51 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %50, i32 0, i32 5
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @in_le32(i32* %53)
  %55 = call %struct.dbdma_cmd* @bus_to_virt(i32 %54)
  %56 = icmp eq %struct.dbdma_cmd* %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %115

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %61 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %60, i32 0, i32 4
  %62 = load i32**, i32*** %61, align 8
  %63 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %64 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32*, i32** %62, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %76 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %75, i32 0, i32 4
  %77 = load i32**, i32*** %76, align 8
  %78 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %79 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @dev_consume_skb_irq(i32* %82)
  br label %84

84:                                               ; preds = %69, %59
  %85 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %86 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %85, i32 0, i32 4
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %89 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32*, i32** %87, i64 %90
  store i32* null, i32** %91, align 8
  %92 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %93 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = call i32 @netif_wake_queue(%struct.net_device* %94)
  %96 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %97 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i64, i64* @N_TX_RING, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %84
  %103 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %104 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %84
  %106 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %107 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %110 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %115

114:                                              ; preds = %105
  br label %24

115:                                              ; preds = %113, %57
  %116 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %117 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %116, i32 0, i32 2
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load i32, i32* @txintcount, align 4
  %121 = icmp slt i32 %120, 10
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 @XXDEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %115
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = call i32 @bmac_start(%struct.net_device* %125)
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %127
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XXDEBUG(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.dbdma_cmd* @bus_to_virt(i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @dev_consume_skb_irq(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bmac_start(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
