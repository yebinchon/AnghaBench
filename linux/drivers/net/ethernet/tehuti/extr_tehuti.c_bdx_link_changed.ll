; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_link_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { i32 }

@regMAC_LNK_STAT = common dso_local global i32 0, align 4
@MAC_LINK_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Link Down\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Link Up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*)* @bdx_link_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_link_changed(%struct.bdx_priv* %0) #0 {
  %2 = alloca %struct.bdx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %2, align 8
  %4 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %5 = load i32, i32* @regMAC_LNK_STAT, align 4
  %6 = call i32 @READ_REG(%struct.bdx_priv* %4, i32 %5)
  %7 = load i32, i32* @MAC_LINK_STAT, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @netif_carrier_ok(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %19 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_stop_queue(i32 %20)
  %22 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %23 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_carrier_off(i32 %24)
  %26 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %27 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_err(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %17, %11
  br label %51

31:                                               ; preds = %1
  %32 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %33 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @netif_carrier_ok(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %39 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_wake_queue(i32 %40)
  %42 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %43 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netif_carrier_on(i32 %44)
  %46 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %47 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_err(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %37, %31
  br label %51

51:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
