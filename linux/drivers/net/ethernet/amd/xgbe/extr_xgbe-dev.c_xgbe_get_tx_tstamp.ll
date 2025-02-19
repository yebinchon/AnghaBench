; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_get_tx_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_get_tx_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAC_TXSNR = common dso_local global i32 0, align 4
@MAC_TXSSR = common dso_local global i32 0, align 4
@TXTSSTSMIS = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_get_tx_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_get_tx_tstamp(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = load i32, i32* @MAC_TXSNR, align 4
  %16 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = load i32, i32* @MAC_TXSSR, align 4
  %19 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = load i32, i32* @MAC_TXSSR, align 4
  %23 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %25 = load i32, i32* @MAC_TXSNR, align 4
  %26 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MAC_TXSNR, align 4
  %30 = load i32, i32* @TXTSSTSMIS, align 4
  %31 = call i64 @XGMAC_GET_BITS(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @NSEC_PER_SEC, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i64 @XGMAC_GET_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
