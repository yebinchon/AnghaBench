; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_isr_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_isr_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@regISR = common dso_local global i32 0, align 4
@IR_RUN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IR_EXTRA = common dso_local global i32 0, align 4
@IR_RX_DESC_0 = common dso_local global i32 0, align 4
@IR_TX_FREE_0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@regTXF_WPTR_0 = common dso_local global i32 0, align 4
@regRXD_WPTR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bdx_isr_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_isr_napi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bdx_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.bdx_priv* %12, %struct.bdx_priv** %7, align 8
  %13 = load i32, i32* @ENTER, align 4
  %14 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %15 = load i32, i32* @regISR, align 4
  %16 = call i32 @READ_REG(%struct.bdx_priv* %14, i32 %15)
  %17 = load i32, i32* @IR_RUN, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %27 = call i32 @bdx_enable_interrupts(%struct.bdx_priv* %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IR_EXTRA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @bdx_isr_extra(%struct.bdx_priv* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IR_RX_DESC_0, align 4
  %41 = load i32, i32* @IR_TX_FREE_0, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %47 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %46, i32 0, i32 0
  %48 = call i32 @napi_schedule_prep(i32* %47)
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %53 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %52, i32 0, i32 0
  %54 = call i32 @__napi_schedule(i32* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  %56 = call i32 @RET(i32 %55)
  br label %64

57:                                               ; preds = %45
  %58 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %59 = load i32, i32* @regTXF_WPTR_0, align 4
  %60 = call i32 @READ_REG(%struct.bdx_priv* %58, i32 %59)
  %61 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %62 = load i32, i32* @regRXD_WPTR_0, align 4
  %63 = call i32 @READ_REG(%struct.bdx_priv* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %67 = call i32 @bdx_enable_interrupts(%struct.bdx_priv* %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  %69 = call i32 @RET(i32 %68)
  br label %70

70:                                               ; preds = %65, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bdx_enable_interrupts(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_isr_extra(%struct.bdx_priv*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
