; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_disable_rx_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_disable_rx_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_RXCS = common dso_local global i32 0, align 4
@JME_RX_DISABLE_TIMEOUT = common dso_local global i32 0, align 4
@RXCS_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Disable RX engine timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_disable_rx_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_disable_rx_engine(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %6 = load i32, i32* @JME_RXCS, align 4
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @jwrite32(%struct.jme_adapter* %5, i32 %6, i32 %9)
  %11 = call i32 (...) @wmb()
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %13 = load i32, i32* @JME_RXCS, align 4
  %14 = call i32 @jread32(%struct.jme_adapter* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @JME_RX_DISABLE_TIMEOUT, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RXCS_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = call i32 @mdelay(i32 1)
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %29 = load i32, i32* @JME_RXCS, align 4
  %30 = call i32 @jread32(%struct.jme_adapter* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = call i32 (...) @rmb()
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  br label %16

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %42 = call i32 @jme_mac_rxclk_off(%struct.jme_adapter* %41)
  ret void
}

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @jme_mac_rxclk_off(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
