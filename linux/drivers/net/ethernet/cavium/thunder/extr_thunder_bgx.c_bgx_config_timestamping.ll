; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_config_timestamping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_config_timestamping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i64 }

@BGX_MODE_SGMII = common dso_local global i64 0, align 8
@BGX_MODE_QSGMII = common dso_local global i64 0, align 8
@BGX_MODE_RGMII = common dso_local global i64 0, align 8
@BGX_GMP_GMI_RXX_FRM_CTL = common dso_local global i32 0, align 4
@BGX_SMUX_RX_FRM_CTL = common dso_local global i32 0, align 4
@BGX_PKT_RX_PTP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_config_timestamping(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bgx*, align 8
  %10 = alloca %struct.lmac*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.bgx* @get_bgx(i32 %13, i32 %14)
  store %struct.bgx* %15, %struct.bgx** %9, align 8
  %16 = load %struct.bgx*, %struct.bgx** %9, align 8
  %17 = icmp ne %struct.bgx* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %69

19:                                               ; preds = %4
  %20 = load %struct.bgx*, %struct.bgx** %9, align 8
  %21 = getelementptr inbounds %struct.bgx, %struct.bgx* %20, i32 0, i32 0
  %22 = load %struct.lmac*, %struct.lmac** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lmac, %struct.lmac* %22, i64 %24
  store %struct.lmac* %25, %struct.lmac** %10, align 8
  %26 = load %struct.lmac*, %struct.lmac** %10, align 8
  %27 = getelementptr inbounds %struct.lmac, %struct.lmac* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BGX_MODE_SGMII, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %19
  %32 = load %struct.lmac*, %struct.lmac** %10, align 8
  %33 = getelementptr inbounds %struct.lmac, %struct.lmac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BGX_MODE_QSGMII, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.lmac*, %struct.lmac** %10, align 8
  %39 = getelementptr inbounds %struct.lmac, %struct.lmac* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BGX_MODE_RGMII, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %31, %19
  %44 = load i32, i32* @BGX_GMP_GMI_RXX_FRM_CTL, align 4
  store i32 %44, i32* %11, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @BGX_SMUX_RX_FRM_CTL, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.bgx*, %struct.bgx** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @bgx_reg_read(%struct.bgx* %48, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @BGX_PKT_RX_PTP_EN, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load i32, i32* @BGX_PKT_RX_PTP_EN, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.bgx*, %struct.bgx** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @bgx_reg_write(%struct.bgx* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %18
  ret void
}

declare dso_local %struct.bgx* @get_bgx(i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
