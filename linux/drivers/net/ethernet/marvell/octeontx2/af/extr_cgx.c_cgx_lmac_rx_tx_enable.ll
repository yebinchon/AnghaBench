; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_rx_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_rx_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CGXX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@DATA_PKT_RX_EN = common dso_local global i32 0, align 4
@DATA_PKT_TX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgx_lmac_rx_tx_enable(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgx*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cgx*
  store %struct.cgx* %11, %struct.cgx** %8, align 8
  %12 = load %struct.cgx*, %struct.cgx** %8, align 8
  %13 = icmp ne %struct.cgx* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.cgx*, %struct.cgx** %8, align 8
  %17 = getelementptr inbounds %struct.cgx, %struct.cgx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %14
  %24 = load %struct.cgx*, %struct.cgx** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CGXX_CMRX_CFG, align 4
  %27 = call i32 @cgx_read(%struct.cgx* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* @CMR_EN, align 4
  %32 = load i32, i32* @DATA_PKT_RX_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DATA_PKT_TX_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %47

38:                                               ; preds = %23
  %39 = load i32, i32* @CMR_EN, align 4
  %40 = load i32, i32* @DATA_PKT_RX_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DATA_PKT_TX_EN, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %38, %30
  %48 = load %struct.cgx*, %struct.cgx** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CGXX_CMRX_CFG, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @cgx_write(%struct.cgx* %48, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i32) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
