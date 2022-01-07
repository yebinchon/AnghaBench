; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w5300_priv = type { i32 }

@W5300_S0_IR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@S0_IR_SENDOK = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tx done\0A\00", align 1
@S0_IR_RECV = common dso_local global i32 0, align 4
@W5300_IMR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @w5300_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5300_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.w5300_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.w5300_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.w5300_priv* %12, %struct.w5300_priv** %7, align 8
  %13 = load %struct.w5300_priv*, %struct.w5300_priv** %7, align 8
  %14 = load i32, i32* @W5300_S0_IR, align 4
  %15 = call i32 @w5300_read(%struct.w5300_priv* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.w5300_priv*, %struct.w5300_priv** %7, align 8
  %22 = load i32, i32* @W5300_S0_IR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @w5300_write(%struct.w5300_priv* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @S0_IR_SENDOK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.w5300_priv*, %struct.w5300_priv** %7, align 8
  %31 = load i32, i32* @tx_done, align 4
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @netif_dbg(%struct.w5300_priv* %30, i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @netif_wake_queue(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %29, %20
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @S0_IR_RECV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.w5300_priv*, %struct.w5300_priv** %7, align 8
  %43 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %42, i32 0, i32 0
  %44 = call i64 @napi_schedule_prep(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.w5300_priv*, %struct.w5300_priv** %7, align 8
  %48 = load i32, i32* @W5300_IMR, align 4
  %49 = call i32 @w5300_write(%struct.w5300_priv* %47, i32 %48, i32 0)
  %50 = load %struct.w5300_priv*, %struct.w5300_priv** %7, align 8
  %51 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %50, i32 0, i32 0
  %52 = call i32 @__napi_schedule(i32* %51)
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.w5300_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @w5300_read(%struct.w5300_priv*, i32) #1

declare dso_local i32 @w5300_write(%struct.w5300_priv*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.w5300_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
