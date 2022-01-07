; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_set_btc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_set_btc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_hecc_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@HECC_CANBTC_SAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"WARN: Triple sampling not set due to h/w limitations\00", align 1
@HECC_CANBTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"setting CANBTC=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_hecc_priv*)* @ti_hecc_set_btc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_hecc_set_btc(%struct.ti_hecc_priv* %0) #0 {
  %2 = alloca %struct.ti_hecc_priv*, align 8
  %3 = alloca %struct.can_bittiming*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_hecc_priv* %0, %struct.ti_hecc_priv** %2, align 8
  %5 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.can_bittiming* %7, %struct.can_bittiming** %3, align 8
  %8 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %9 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %11, 7
  store i32 %12, i32* %4, align 4
  %13 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %14 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %17 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %20, 15
  %22 = shl i32 %21, 3
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %1
  %33 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %34 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @HECC_CANBTC_SAM, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netdev_warn(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %49 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %57 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %59, 255
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %2, align 8
  %65 = load i32, i32* @HECC_CANBTC, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @hecc_write(%struct.ti_hecc_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %2, align 8
  %69 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @netdev_info(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  ret i32 0
}

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @hecc_write(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
