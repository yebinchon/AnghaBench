; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_disable_tx_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_disable_tx_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_TXCS = common dso_local global i32 0, align 4
@TXCS_SELECT_QUEUE0 = common dso_local global i32 0, align 4
@JME_TX_DISABLE_TIMEOUT = common dso_local global i32 0, align 4
@TXCS_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Disable TX engine timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_disable_tx_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_disable_tx_engine(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %6 = load i32, i32* @JME_TXCS, align 4
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TXCS_SELECT_QUEUE0, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @jwrite32(%struct.jme_adapter* %5, i32 %6, i32 %11)
  %13 = call i32 (...) @wmb()
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %15 = load i32, i32* @JME_TXCS, align 4
  %16 = call i32 @jread32(%struct.jme_adapter* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @JME_TX_DISABLE_TIMEOUT, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %34, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TXCS_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = call i32 @mdelay(i32 1)
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %31 = load i32, i32* @JME_TXCS, align 4
  %32 = call i32 @jread32(%struct.jme_adapter* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = call i32 (...) @rmb()
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  br label %18

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %44 = call i32 @jme_mac_txclk_off(%struct.jme_adapter* %43)
  ret void
}

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @jme_mac_txclk_off(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
