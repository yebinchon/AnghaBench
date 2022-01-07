; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w5100_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@S0_IR_SENDOK = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tx done\0A\00", align 1
@S0_IR_RECV = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @w5100_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.w5100_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.w5100_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.w5100_priv* %12, %struct.w5100_priv** %7, align 8
  %13 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %14 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %15 = call i32 @W5100_S0_IR(%struct.w5100_priv* %14)
  %16 = call i32 @w5100_read(%struct.w5100_priv* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %23 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %24 = call i32 @W5100_S0_IR(%struct.w5100_priv* %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @w5100_write(%struct.w5100_priv* %22, i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @S0_IR_SENDOK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %33 = load i32, i32* @tx_done, align 4
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @netif_dbg(%struct.w5100_priv* %32, i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netif_wake_queue(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @S0_IR_RECV, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %45 = call i32 @w5100_disable_intr(%struct.w5100_priv* %44)
  %46 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %47 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %54 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %57 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %56, i32 0, i32 1
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %69

59:                                               ; preds = %43
  %60 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %61 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %60, i32 0, i32 0
  %62 = call i64 @napi_schedule_prep(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.w5100_priv*, %struct.w5100_priv** %7, align 8
  %66 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %65, i32 0, i32 0
  %67 = call i32 @__napi_schedule(i32* %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %38
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.w5100_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @w5100_read(%struct.w5100_priv*, i32) #1

declare dso_local i32 @W5100_S0_IR(%struct.w5100_priv*) #1

declare dso_local i32 @w5100_write(%struct.w5100_priv*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.w5100_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @w5100_disable_intr(%struct.w5100_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
