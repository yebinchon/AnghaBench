; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { %struct.fjes_hw }
%struct.fjes_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@REG_IS_MASK_IS_ASSERT = common dso_local global i32 0, align 4
@REG_ICTL_MASK_RX_DATA = common dso_local global i32 0, align 4
@REG_IS_MASK_EPID = common dso_local global i32 0, align 4
@REG_ICTL_MASK_DEV_STOP_REQ = common dso_local global i32 0, align 4
@REG_ICTL_MASK_TXRX_STOP_REQ = common dso_local global i32 0, align 4
@REG_ICTL_MASK_TXRX_STOP_DONE = common dso_local global i32 0, align 4
@REG_ICTL_MASK_INFO_UPDATE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fjes_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fjes_adapter*, align 8
  %6 = alloca %struct.fjes_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.fjes_adapter*
  store %struct.fjes_adapter* %10, %struct.fjes_adapter** %5, align 8
  %11 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %11, i32 0, i32 0
  store %struct.fjes_hw* %12, %struct.fjes_hw** %6, align 8
  %13 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %14 = call i32 @fjes_hw_capture_interrupt_status(%struct.fjes_hw* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @REG_IS_MASK_IS_ASSERT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %122

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @REG_ICTL_MASK_RX_DATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @fjes_rx_irq(%struct.fjes_adapter* %25, i32 %28)
  %30 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %31 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %35 = and i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %24, %19
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @REG_ICTL_MASK_DEV_STOP_REQ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @fjes_stop_req_irq(%struct.fjes_adapter* %48, i32 %51)
  %53 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %54 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %58 = and i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %47, %42
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @REG_ICTL_MASK_TXRX_STOP_REQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @fjes_txrx_stop_req_irq(%struct.fjes_adapter* %71, i32 %74)
  %76 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %77 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %81 = and i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %70, %65
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @REG_ICTL_MASK_TXRX_STOP_DONE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %95 = load i32, i32* @REG_ICTL_MASK_TXRX_STOP_DONE, align 4
  %96 = call i32 @fjes_hw_set_irqmask(%struct.fjes_hw* %94, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @REG_ICTL_MASK_INFO_UPDATE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @fjes_update_zone_irq(%struct.fjes_adapter* %103, i32 %106)
  %108 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %109 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @REG_IS_MASK_EPID, align 4
  %113 = and i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %102, %97
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %121, i32* %7, align 4
  br label %124

122:                                              ; preds = %2
  %123 = load i32, i32* @IRQ_NONE, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @fjes_hw_capture_interrupt_status(%struct.fjes_hw*) #1

declare dso_local i32 @fjes_rx_irq(%struct.fjes_adapter*, i32) #1

declare dso_local i32 @fjes_stop_req_irq(%struct.fjes_adapter*, i32) #1

declare dso_local i32 @fjes_txrx_stop_req_irq(%struct.fjes_adapter*, i32) #1

declare dso_local i32 @fjes_hw_set_irqmask(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @fjes_update_zone_irq(%struct.fjes_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
