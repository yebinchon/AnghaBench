; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_rx_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_rx_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i64, %struct.lmac* }
%struct.lmac = type { i32, i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_PKT_RX_EN = common dso_local global i32 0, align 4
@CMR_PKT_TX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_lmac_rx_tx_enable(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bgx*, align 8
  %10 = alloca %struct.lmac*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.bgx* @get_bgx(i32 %12, i32 %13)
  store %struct.bgx* %14, %struct.bgx** %9, align 8
  %15 = load %struct.bgx*, %struct.bgx** %9, align 8
  %16 = icmp ne %struct.bgx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %68

18:                                               ; preds = %4
  %19 = load %struct.bgx*, %struct.bgx** %9, align 8
  %20 = getelementptr inbounds %struct.bgx, %struct.bgx* %19, i32 0, i32 1
  %21 = load %struct.lmac*, %struct.lmac** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lmac, %struct.lmac* %21, i64 %23
  store %struct.lmac* %24, %struct.lmac** %10, align 8
  %25 = load %struct.bgx*, %struct.bgx** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BGX_CMRX_CFG, align 4
  %28 = call i32 @bgx_reg_read(%struct.bgx* %25, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load i32, i32* @CMR_PKT_RX_EN, align 4
  %33 = load i32, i32* @CMR_PKT_TX_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %44

37:                                               ; preds = %18
  %38 = load i32, i32* @CMR_PKT_RX_EN, align 4
  %39 = load i32, i32* @CMR_PKT_TX_EN, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.bgx*, %struct.bgx** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BGX_CMRX_CFG, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @bgx_reg_write(%struct.bgx* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.bgx*, %struct.bgx** %9, align 8
  %51 = getelementptr inbounds %struct.bgx, %struct.bgx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.lmac*, %struct.lmac** %10, align 8
  %59 = getelementptr inbounds %struct.lmac, %struct.lmac* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ 0, %61 ]
  %64 = load %struct.lmac*, %struct.lmac** %10, align 8
  %65 = getelementptr inbounds %struct.lmac, %struct.lmac* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xcv_setup_link(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %17, %62, %44
  ret void
}

declare dso_local %struct.bgx* @get_bgx(i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

declare dso_local i32 @xcv_setup_link(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
