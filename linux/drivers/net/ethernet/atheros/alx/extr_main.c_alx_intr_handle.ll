; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, %struct.TYPE_2__**, %struct.alx_hw }
%struct.TYPE_2__ = type { i32 }
%struct.alx_hw = type { i32 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_DIS = common dso_local global i32 0, align 4
@ALX_ISR_TX_Q0 = common dso_local global i32 0, align 4
@ALX_ISR_RX_Q0 = common dso_local global i32 0, align 4
@ALX_ISR_ALL_QUEUES = common dso_local global i32 0, align 4
@ALX_IMR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*, i32)* @alx_intr_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_intr_handle(%struct.alx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alx_hw*, align 8
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %6, i32 0, i32 3
  store %struct.alx_hw* %7, %struct.alx_hw** %5, align 8
  %8 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %9 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %12 = load i32, i32* @ALX_ISR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ALX_ISR_DIS, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @alx_write_mem32(%struct.alx_hw* %11, i32 %12, i32 %15)
  %17 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @alx_intr_handle_misc(%struct.alx_priv* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %58

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ALX_ISR_TX_Q0, align 4
  %30 = load i32, i32* @ALX_ISR_RX_Q0, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %36 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @napi_schedule(i32* %40)
  %42 = load i32, i32* @ALX_ISR_ALL_QUEUES, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %45 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %49 = load i32, i32* @ALX_IMR, align 4
  %50 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %51 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @alx_write_mem32(%struct.alx_hw* %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %34, %27
  %55 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %56 = load i32, i32* @ALX_ISR, align 4
  %57 = call i32 @alx_write_mem32(%struct.alx_hw* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %54, %26
  %59 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %60 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i64 @alx_intr_handle_misc(%struct.alx_priv*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
