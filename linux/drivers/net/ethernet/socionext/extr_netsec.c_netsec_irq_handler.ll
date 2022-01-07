; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, i32 }

@NETSEC_REG_TOP_STATUS = common dso_local global i32 0, align 4
@NETSEC_IRQ_TX = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_TX_STATUS = common dso_local global i32 0, align 4
@NETSEC_IRQ_RX = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_RX_STATUS = common dso_local global i32 0, align 4
@NETSEC_REG_INTEN_CLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @netsec_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netsec_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.netsec_priv*
  store %struct.netsec_priv* %10, %struct.netsec_priv** %5, align 8
  %11 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %12 = load i32, i32* @NETSEC_REG_TOP_STATUS, align 4
  %13 = call i32 @netsec_read(%struct.netsec_priv* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NETSEC_IRQ_TX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %20 = load i32, i32* @NETSEC_REG_NRM_TX_STATUS, align 4
  %21 = call i32 @netsec_read(%struct.netsec_priv* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %23 = load i32, i32* @NETSEC_REG_NRM_TX_STATUS, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @netsec_write(%struct.netsec_priv* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NETSEC_IRQ_RX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %33 = load i32, i32* @NETSEC_REG_NRM_RX_STATUS, align 4
  %34 = call i32 @netsec_read(%struct.netsec_priv* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %36 = load i32, i32* @NETSEC_REG_NRM_RX_STATUS, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @netsec_write(%struct.netsec_priv* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %41 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %45 = load i32, i32* @NETSEC_REG_INTEN_CLR, align 4
  %46 = load i32, i32* @NETSEC_IRQ_RX, align 4
  %47 = load i32, i32* @NETSEC_IRQ_TX, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @netsec_write(%struct.netsec_priv* %44, i32 %45, i32 %48)
  %50 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %51 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %55 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %54, i32 0, i32 0
  %56 = call i32 @napi_schedule(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @netsec_read(%struct.netsec_priv*, i32) #1

declare dso_local i32 @netsec_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
