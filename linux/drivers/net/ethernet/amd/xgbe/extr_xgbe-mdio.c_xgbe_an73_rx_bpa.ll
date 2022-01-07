; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_rx_bpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_rx_bpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_LPA = common dso_local global i64 0, align 8
@XGBE_AN_INCOMPAT_LINK = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i64 0, align 8
@XGBE_XNP_NP_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32*)* @xgbe_an73_rx_bpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_an73_rx_bpa(%struct.xgbe_prv_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %11 = load i32, i32* @MDIO_MMD_AN, align 4
  %12 = load i64, i64* @MDIO_AN_LPA, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %10, i32 %11, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %16 = call i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 128, i32 32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @XGBE_AN_INCOMPAT_LINK, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %28 = load i32, i32* @MDIO_MMD_AN, align 4
  %29 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %30 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %27, i32 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %32 = load i32, i32* @MDIO_MMD_AN, align 4
  %33 = load i64, i64* @MDIO_AN_LPA, align 8
  %34 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %31, i32 %32, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @XGBE_XNP_NP_EXCHANGE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @XGBE_XNP_NP_EXCHANGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %26
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @xgbe_an73_tx_xnp(%struct.xgbe_prv_data* %45, i32* %46)
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @xgbe_an73_tx_training(%struct.xgbe_prv_data* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %47, %44 ], [ %51, %48 ]
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i64) #1

declare dso_local i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an73_tx_xnp(%struct.xgbe_prv_data*, i32*) #1

declare dso_local i32 @xgbe_an73_tx_training(%struct.xgbe_prv_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
