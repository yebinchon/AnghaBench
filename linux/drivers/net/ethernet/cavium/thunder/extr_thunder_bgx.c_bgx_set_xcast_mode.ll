; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_set_xcast_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_set_xcast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BGX_CMRX_RX_DMAC_CTL = common dso_local global i32 0, align 4
@BGX_XCAST_BCAST_ACCEPT = common dso_local global i32 0, align 4
@BCAST_ACCEPT = common dso_local global i32 0, align 4
@CAM_ACCEPT = common dso_local global i32 0, align 4
@MCAST_MODE_MASK = common dso_local global i32 0, align 4
@BGX_XCAST_MCAST_ACCEPT = common dso_local global i32 0, align 4
@MCAST_MODE_ACCEPT = common dso_local global i32 0, align 4
@BGX_XCAST_MCAST_FILTER = common dso_local global i32 0, align 4
@MCAST_MODE_CAM_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_set_xcast_mode(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store %struct.lmac* null, %struct.lmac** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.bgx*, %struct.bgx** %9, align 8
  %17 = icmp ne %struct.bgx* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %102

19:                                               ; preds = %4
  %20 = load %struct.bgx*, %struct.bgx** %9, align 8
  %21 = getelementptr inbounds %struct.bgx, %struct.bgx* %20, i32 0, i32 0
  %22 = load %struct.lmac*, %struct.lmac** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lmac, %struct.lmac* %22, i64 %24
  store %struct.lmac* %25, %struct.lmac** %10, align 8
  %26 = load %struct.bgx*, %struct.bgx** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BGX_CMRX_RX_DMAC_CTL, align 4
  %29 = call i32 @bgx_reg_read(%struct.bgx* %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @BGX_XCAST_BCAST_ACCEPT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load i32, i32* @BCAST_ACCEPT, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %19
  %39 = load i32, i32* @BCAST_ACCEPT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @CAM_ACCEPT, align 4
  %45 = load i32, i32* @MCAST_MODE_MASK, align 4
  %46 = call i32 @BGX_MCAST_MODE(i32 %45)
  %47 = or i32 %44, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BGX_XCAST_MCAST_ACCEPT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @MCAST_MODE_ACCEPT, align 4
  %57 = call i32 @BGX_MCAST_MODE(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %96

60:                                               ; preds = %43
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BGX_XCAST_MCAST_FILTER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load i32, i32* @MCAST_MODE_CAM_FILTER, align 4
  %67 = call i32 @BGX_MCAST_MODE(i32 %66)
  %68 = load i32, i32* @CAM_ACCEPT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %91, %65
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.lmac*, %struct.lmac** %10, align 8
  %75 = getelementptr inbounds %struct.lmac, %struct.lmac* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.bgx*, %struct.bgx** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.lmac*, %struct.lmac** %10, align 8
  %82 = getelementptr inbounds %struct.lmac, %struct.lmac* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @bgx_set_dmac_cam_filter_mac(%struct.bgx* %79, i32 %80, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %72

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %95, %55
  %97 = load %struct.bgx*, %struct.bgx** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @BGX_CMRX_RX_DMAC_CTL, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @bgx_reg_write(%struct.bgx* %97, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %18
  ret void
}

declare dso_local %struct.bgx* @get_bgx(i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @BGX_MCAST_MODE(i32) #1

declare dso_local i32 @bgx_set_dmac_cam_filter_mac(%struct.bgx*, i32, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
