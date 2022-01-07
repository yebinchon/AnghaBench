; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ti_hecc_priv = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"resetting hecc ...\0A\00", align 1
@HECC_CANMC = common dso_local global i32 0, align 4
@HECC_CANMC_SRES = common dso_local global i32 0, align 4
@HECC_CANMC_CCR = common dso_local global i32 0, align 4
@HECC_CCE_WAIT_COUNT = common dso_local global i64 0, align 8
@HECC_CANES = common dso_local global i32 0, align 4
@HECC_CANES_CCE = common dso_local global i32 0, align 4
@HECC_CANTIOC = common dso_local global i32 0, align 4
@HECC_CANTIOC_EN = common dso_local global i32 0, align 4
@HECC_CANRIOC = common dso_local global i32 0, align 4
@HECC_CANRIOC_EN = common dso_local global i32 0, align 4
@HECC_CANTA = common dso_local global i32 0, align 4
@HECC_SET_REG = common dso_local global i32 0, align 4
@HECC_CANRMP = common dso_local global i32 0, align 4
@HECC_CANGIF0 = common dso_local global i32 0, align 4
@HECC_CANGIF1 = common dso_local global i32 0, align 4
@HECC_CANME = common dso_local global i32 0, align 4
@HECC_CANMD = common dso_local global i32 0, align 4
@HECC_CANMC_SCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ti_hecc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_hecc_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ti_hecc_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ti_hecc_priv* %6, %struct.ti_hecc_priv** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netdev_dbg(%struct.net_device* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %10 = load i32, i32* @HECC_CANMC, align 4
  %11 = load i32, i32* @HECC_CANMC_SRES, align 4
  %12 = call i32 @hecc_set_bit(%struct.ti_hecc_priv* %9, i32 %10, i32 %11)
  %13 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %14 = load i32, i32* @HECC_CANMC, align 4
  %15 = load i32, i32* @HECC_CANMC_CCR, align 4
  %16 = call i32 @hecc_set_bit(%struct.ti_hecc_priv* %13, i32 %14, i32 %15)
  %17 = load i64, i64* @HECC_CCE_WAIT_COUNT, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %29, %1
  %19 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %20 = load i32, i32* @HECC_CANES, align 4
  %21 = load i32, i32* @HECC_CANES_CCE, align 4
  %22 = call i64 @hecc_get_bit(%struct.ti_hecc_priv* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %3, align 8
  %32 = call i32 @udelay(i32 10)
  br label %18

33:                                               ; preds = %27
  %34 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %35 = call i32 @ti_hecc_set_btc(%struct.ti_hecc_priv* %34)
  %36 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %37 = load i32, i32* @HECC_CANMC, align 4
  %38 = call i32 @hecc_write(%struct.ti_hecc_priv* %36, i32 %37, i32 0)
  %39 = load i64, i64* @HECC_CCE_WAIT_COUNT, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %51, %33
  %41 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %42 = load i32, i32* @HECC_CANES, align 4
  %43 = load i32, i32* @HECC_CANES_CCE, align 4
  %44 = call i64 @hecc_get_bit(%struct.ti_hecc_priv* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i1 [ false, %40 ], [ %48, %46 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %3, align 8
  %54 = call i32 @udelay(i32 10)
  br label %40

55:                                               ; preds = %49
  %56 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %57 = load i32, i32* @HECC_CANTIOC, align 4
  %58 = load i32, i32* @HECC_CANTIOC_EN, align 4
  %59 = call i32 @hecc_write(%struct.ti_hecc_priv* %56, i32 %57, i32 %58)
  %60 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %61 = load i32, i32* @HECC_CANRIOC, align 4
  %62 = load i32, i32* @HECC_CANRIOC_EN, align 4
  %63 = call i32 @hecc_write(%struct.ti_hecc_priv* %60, i32 %61, i32 %62)
  %64 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %65 = load i32, i32* @HECC_CANTA, align 4
  %66 = load i32, i32* @HECC_SET_REG, align 4
  %67 = call i32 @hecc_write(%struct.ti_hecc_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %69 = load i32, i32* @HECC_CANRMP, align 4
  %70 = load i32, i32* @HECC_SET_REG, align 4
  %71 = call i32 @hecc_write(%struct.ti_hecc_priv* %68, i32 %69, i32 %70)
  %72 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %73 = load i32, i32* @HECC_CANGIF0, align 4
  %74 = load i32, i32* @HECC_SET_REG, align 4
  %75 = call i32 @hecc_write(%struct.ti_hecc_priv* %72, i32 %73, i32 %74)
  %76 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %77 = load i32, i32* @HECC_CANGIF1, align 4
  %78 = load i32, i32* @HECC_SET_REG, align 4
  %79 = call i32 @hecc_write(%struct.ti_hecc_priv* %76, i32 %77, i32 %78)
  %80 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %81 = load i32, i32* @HECC_CANME, align 4
  %82 = call i32 @hecc_write(%struct.ti_hecc_priv* %80, i32 %81, i32 0)
  %83 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %84 = load i32, i32* @HECC_CANMD, align 4
  %85 = call i32 @hecc_write(%struct.ti_hecc_priv* %83, i32 %84, i32 0)
  %86 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %87 = load i32, i32* @HECC_CANMC, align 4
  %88 = load i32, i32* @HECC_CANMC_SCM, align 4
  %89 = call i32 @hecc_set_bit(%struct.ti_hecc_priv* %86, i32 %87, i32 %88)
  ret void
}

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @hecc_set_bit(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i64 @hecc_get_bit(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ti_hecc_set_btc(%struct.ti_hecc_priv*) #1

declare dso_local i32 @hecc_write(%struct.ti_hecc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
