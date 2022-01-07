; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.moxart_mac_priv_t = type { i32, i64, i32 }

@REG_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@XPKT_OK_INT_STS = common dso_local global i32 0, align 4
@RPKT_FINISH = common dso_local global i32 0, align 4
@RPKT_FINISH_M = common dso_local global i32 0, align 4
@REG_INTERRUPT_MASK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @moxart_mac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_mac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.moxart_mac_priv_t*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %10)
  store %struct.moxart_mac_priv_t* %11, %struct.moxart_mac_priv_t** %6, align 8
  %12 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %6, align 8
  %13 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_INTERRUPT_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @XPKT_OK_INT_STS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @moxart_tx_finished(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @RPKT_FINISH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %6, align 8
  %32 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %31, i32 0, i32 0
  %33 = call i64 @napi_schedule_prep(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i32, i32* @RPKT_FINISH_M, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %6, align 8
  %39 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %6, align 8
  %43 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %6, align 8
  %46 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %6, align 8
  %52 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %51, i32 0, i32 0
  %53 = call i32 @__napi_schedule(i32* %52)
  br label %54

54:                                               ; preds = %35, %30
  br label %55

55:                                               ; preds = %54, %25
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @moxart_tx_finished(%struct.net_device*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
