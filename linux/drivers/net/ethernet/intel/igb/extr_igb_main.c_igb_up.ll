; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_8__**, i32, %struct.e1000_hw }
%struct.TYPE_8__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@E1000_TSICR = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PFRSTD = common dso_local global i32 0, align 4
@IGB_FLAG_EEE = common dso_local global i32 0, align 4
@MDIO_EEE_100TX = common dso_local global i32 0, align 4
@MDIO_EEE_1000T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_up(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 8
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = call i32 @igb_configure(%struct.igb_adapter* %8)
  %10 = load i32, i32* @__IGB_DOWN, align 4
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 7
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 6
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @napi_enable(i32* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %42 = call i32 @igb_configure_msix(%struct.igb_adapter* %41)
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %44, i32 0, i32 6
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @igb_assign_vector(%struct.TYPE_8__* %48, i32 0)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @E1000_TSICR, align 4
  %52 = call i32 @rd32(i32 %51)
  %53 = load i32, i32* @E1000_ICR, align 4
  %54 = call i32 @rd32(i32 %53)
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %56 = call i32 @igb_irq_enable(%struct.igb_adapter* %55)
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i32, i32* @E1000_CTRL_EXT, align 4
  %63 = call i32 @rd32(i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @E1000_CTRL_EXT_PFRSTD, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @E1000_CTRL_EXT, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @wr32(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %50
  %71 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netif_tx_start_all_queues(i32 %73)
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %78, i32 0, i32 3
  %80 = call i32 @schedule_work(i32* %79)
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IGB_FLAG_EEE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %70
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @MDIO_EEE_100TX, align 4
  %96 = load i32, i32* @MDIO_EEE_1000T, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %87, %70
  ret i32 0
}

declare dso_local i32 @igb_configure(%struct.igb_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @igb_configure_msix(%struct.igb_adapter*) #1

declare dso_local i32 @igb_assign_vector(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_irq_enable(%struct.igb_adapter*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
