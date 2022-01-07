; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i64, i32*, i32, i32, i64, i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_PKT_RX_EN = common dso_local global i32 0, align 4
@BGX_CMRX_RX_FIFO_LEN = common dso_local global i32 0, align 4
@BGX_CMRX_TX_FIFO_LEN = common dso_local global i32 0, align 4
@CMR_PKT_TX_EN = common dso_local global i32 0, align 4
@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_LOW_POWER = common dso_local global i32 0, align 4
@BGX_GMP_PCS_MRX_CTL = common dso_local global i32 0, align 4
@PCS_MRX_CTL_PWR_DN = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@BGX_MODE_XFI = common dso_local global i64 0, align 8
@BGX_MODE_XLAUI = common dso_local global i64 0, align 8
@BGX_MODE_40G_KR = common dso_local global i64 0, align 8
@BGX_MODE_10G_KR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*, i64)* @bgx_lmac_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_lmac_disable(%struct.bgx* %0, i64 %1) #0 {
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bgx*, %struct.bgx** %3, align 8
  %8 = getelementptr inbounds %struct.bgx, %struct.bgx* %7, i32 0, i32 0
  %9 = load %struct.lmac*, %struct.lmac** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.lmac, %struct.lmac* %9, i64 %10
  store %struct.lmac* %11, %struct.lmac** %5, align 8
  %12 = load %struct.lmac*, %struct.lmac** %5, align 8
  %13 = getelementptr inbounds %struct.lmac, %struct.lmac* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.lmac*, %struct.lmac** %5, align 8
  %18 = getelementptr inbounds %struct.lmac, %struct.lmac* %17, i32 0, i32 5
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.lmac*, %struct.lmac** %5, align 8
  %21 = getelementptr inbounds %struct.lmac, %struct.lmac* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @destroy_workqueue(i64 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.bgx*, %struct.bgx** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @BGX_CMRX_CFG, align 4
  %28 = call i32 @bgx_reg_read(%struct.bgx* %25, i64 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @CMR_PKT_RX_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.bgx*, %struct.bgx** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @BGX_CMRX_CFG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bgx_reg_write(%struct.bgx* %33, i64 %34, i32 %35, i32 %36)
  %38 = load %struct.bgx*, %struct.bgx** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @BGX_CMRX_RX_FIFO_LEN, align 4
  %41 = call i32 @bgx_poll_reg(%struct.bgx* %38, i64 %39, i32 %40, i32 8191, i32 1)
  %42 = load %struct.bgx*, %struct.bgx** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @BGX_CMRX_TX_FIFO_LEN, align 4
  %45 = call i32 @bgx_poll_reg(%struct.bgx* %42, i64 %43, i32 %44, i32 16383, i32 1)
  %46 = load %struct.bgx*, %struct.bgx** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* @BGX_CMRX_CFG, align 4
  %49 = call i32 @bgx_reg_read(%struct.bgx* %46, i64 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @CMR_PKT_TX_EN, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.bgx*, %struct.bgx** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* @BGX_CMRX_CFG, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @bgx_reg_write(%struct.bgx* %54, i64 %55, i32 %56, i32 %57)
  %59 = load %struct.lmac*, %struct.lmac** %5, align 8
  %60 = getelementptr inbounds %struct.lmac, %struct.lmac* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %24
  %64 = load %struct.bgx*, %struct.bgx** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %67 = load i32, i32* @SPU_CTL_LOW_POWER, align 4
  %68 = call i32 @bgx_reg_modify(%struct.bgx* %64, i64 %65, i32 %66, i32 %67)
  br label %75

69:                                               ; preds = %24
  %70 = load %struct.bgx*, %struct.bgx** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %73 = load i32, i32* @PCS_MRX_CTL_PWR_DN, align 4
  %74 = call i32 @bgx_reg_modify(%struct.bgx* %70, i64 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.bgx*, %struct.bgx** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* @BGX_CMRX_CFG, align 4
  %79 = call i32 @bgx_reg_read(%struct.bgx* %76, i64 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @CMR_EN, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.bgx*, %struct.bgx** %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i32, i32* @BGX_CMRX_CFG, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @bgx_reg_write(%struct.bgx* %84, i64 %85, i32 %86, i32 %87)
  %89 = load %struct.bgx*, %struct.bgx** %3, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @bgx_flush_dmac_cam_filter(%struct.bgx* %89, i64 %90)
  %92 = load %struct.lmac*, %struct.lmac** %5, align 8
  %93 = getelementptr inbounds %struct.lmac, %struct.lmac* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @kfree(i32 %94)
  %96 = load %struct.lmac*, %struct.lmac** %5, align 8
  %97 = getelementptr inbounds %struct.lmac, %struct.lmac* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BGX_MODE_XFI, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %75
  %102 = load %struct.lmac*, %struct.lmac** %5, align 8
  %103 = getelementptr inbounds %struct.lmac, %struct.lmac* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BGX_MODE_XLAUI, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load %struct.lmac*, %struct.lmac** %5, align 8
  %109 = getelementptr inbounds %struct.lmac, %struct.lmac* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BGX_MODE_40G_KR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.lmac*, %struct.lmac** %5, align 8
  %115 = getelementptr inbounds %struct.lmac, %struct.lmac* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BGX_MODE_10G_KR, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.lmac*, %struct.lmac** %5, align 8
  %121 = getelementptr inbounds %struct.lmac, %struct.lmac* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.lmac*, %struct.lmac** %5, align 8
  %126 = getelementptr inbounds %struct.lmac, %struct.lmac* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @phy_disconnect(i32* %127)
  br label %129

129:                                              ; preds = %124, %119, %113, %107, %101, %75
  %130 = load %struct.lmac*, %struct.lmac** %5, align 8
  %131 = getelementptr inbounds %struct.lmac, %struct.lmac* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i64, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i64, i32, i32) #1

declare dso_local i32 @bgx_poll_reg(%struct.bgx*, i64, i32, i32, i32) #1

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i64, i32, i32) #1

declare dso_local i32 @bgx_flush_dmac_cam_filter(%struct.bgx*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
