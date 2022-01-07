; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EIR = common dso_local global i32 0, align 4
@TXIF = common dso_local global i32 0, align 4
@TXABTIF = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"TX Done%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c": Err\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*, i32)* @encx24j600_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_tx_complete(%struct.encx24j600_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.encx24j600_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %7 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %10 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @BUG()
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %17 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %33

27:                                               ; preds = %15
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %35 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %38
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %47 = load i32, i32* @EIR, align 4
  %48 = load i32, i32* @TXIF, align 4
  %49 = load i32, i32* @TXABTIF, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %46, i32 %47, i32 %50)
  %52 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %53 = load i32, i32* @tx_done, align 4
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @netif_dbg(%struct.encx24j600_priv* %52, i32 %53, %struct.net_device* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %61 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %62)
  %64 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %65 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %64, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @netif_wake_queue(%struct.net_device* %66)
  %68 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %69 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
