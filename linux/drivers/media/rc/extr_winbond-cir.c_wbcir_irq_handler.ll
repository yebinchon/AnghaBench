; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.wbcir_data = type { i32, i32, i32, i64, i32, i32 }

@WBCIR_BANK_0 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_EIR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_LSR = common dso_local global i64 0, align 8
@WBCIR_RX_OVERRUN = common dso_local global i32 0, align 4
@WBCIR_RXSTATE_ERROR = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@WBCIR_TX_UNDERRUN = common dso_local global i32 0, align 4
@WBCIR_TXSTATE_ERROR = common dso_local global i32 0, align 4
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_TX_LOW = common dso_local global i32 0, align 4
@WBCIR_IRQ_TX_EMPTY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wbcir_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca %struct.wbcir_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pnp_dev*
  store %struct.pnp_dev* %11, %struct.pnp_dev** %6, align 8
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %13 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %12)
  store %struct.wbcir_data* %13, %struct.wbcir_data** %7, align 8
  %14 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %15 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %14, i32 0, i32 1
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %19 = load i32, i32* @WBCIR_BANK_0, align 4
  %20 = call i32 @wbcir_select_bank(%struct.wbcir_data* %18, i32 %19)
  %21 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %22 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WBCIR_REG_SP3_EIR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %28 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %36 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %35, i32 0, i32 1
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %103

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %40
  %46 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %47 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WBCIR_REG_SP3_LSR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inb(i64 %50)
  %52 = load i32, i32* @WBCIR_RX_OVERRUN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load i32, i32* @WBCIR_RXSTATE_ERROR, align 4
  %57 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %58 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %60 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ir_raw_event_reset(i32 %61)
  br label %63

63:                                               ; preds = %55, %45
  %64 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %65 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  %70 = load i32, i32* @WBCIR_TX_UNDERRUN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @WBCIR_TXSTATE_ERROR, align 4
  %75 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %76 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %63
  br label %78

78:                                               ; preds = %77, %40
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %85 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %86 = call i32 @wbcir_irq_rx(%struct.wbcir_data* %84, %struct.pnp_dev* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @WBCIR_IRQ_TX_LOW, align 4
  %90 = load i32, i32* @WBCIR_IRQ_TX_EMPTY, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %96 = call i32 @wbcir_irq_tx(%struct.wbcir_data* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %99 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %98, i32 0, i32 1
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %34
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @wbcir_irq_rx(%struct.wbcir_data*, %struct.pnp_dev*) #1

declare dso_local i32 @wbcir_irq_tx(%struct.wbcir_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
