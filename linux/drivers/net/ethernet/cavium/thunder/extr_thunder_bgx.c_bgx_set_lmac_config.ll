; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_set_lmac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_set_lmac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i64, i32, %struct.lmac* }
%struct.lmac = type { i32, i64, i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@BGX_MODE_RGMII = common dso_local global i32 0, align 4
@BGX_MODE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*, i64)* @bgx_set_lmac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_set_lmac_config(%struct.bgx* %0, i64 %1) #0 {
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bgx* %0, %struct.bgx** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.bgx*, %struct.bgx** %3, align 8
  %10 = getelementptr inbounds %struct.bgx, %struct.bgx* %9, i32 0, i32 2
  %11 = load %struct.lmac*, %struct.lmac** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.lmac, %struct.lmac* %11, i64 %12
  store %struct.lmac* %13, %struct.lmac** %5, align 8
  %14 = load %struct.bgx*, %struct.bgx** %3, align 8
  %15 = getelementptr inbounds %struct.bgx, %struct.bgx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.bgx*, %struct.bgx** %3, align 8
  %20 = getelementptr inbounds %struct.bgx, %struct.bgx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18, %2
  %24 = load %struct.bgx*, %struct.bgx** %3, align 8
  %25 = load i32, i32* @BGX_CMRX_CFG, align 4
  %26 = call i32 @bgx_reg_read(%struct.bgx* %24, i64 0, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 7
  %30 = load %struct.lmac*, %struct.lmac** %5, align 8
  %31 = getelementptr inbounds %struct.lmac, %struct.lmac* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bgx*, %struct.bgx** %3, align 8
  %33 = getelementptr inbounds %struct.bgx, %struct.bgx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @BGX_MODE_RGMII, align 4
  %38 = load %struct.lmac*, %struct.lmac** %5, align 8
  %39 = getelementptr inbounds %struct.lmac, %struct.lmac* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %23
  %41 = load %struct.bgx*, %struct.bgx** %3, align 8
  %42 = load %struct.lmac*, %struct.lmac** %5, align 8
  %43 = call i32 @lmac_set_training(%struct.bgx* %41, %struct.lmac* %42, i32 0)
  %44 = load %struct.bgx*, %struct.bgx** %3, align 8
  %45 = load %struct.lmac*, %struct.lmac** %5, align 8
  %46 = call i32 @lmac_set_lane2sds(%struct.bgx* %44, %struct.lmac* %45)
  br label %83

47:                                               ; preds = %18
  %48 = load %struct.bgx*, %struct.bgx** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @BGX_CMRX_CFG, align 4
  %51 = call i32 @bgx_reg_read(%struct.bgx* %48, i64 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 7
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %62, 228
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @BGX_MODE_INVALID, align 4
  %66 = load %struct.lmac*, %struct.lmac** %5, align 8
  %67 = getelementptr inbounds %struct.lmac, %struct.lmac* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %73

68:                                               ; preds = %61, %47
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.lmac*, %struct.lmac** %5, align 8
  %72 = getelementptr inbounds %struct.lmac, %struct.lmac* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.lmac*, %struct.lmac** %5, align 8
  %76 = getelementptr inbounds %struct.lmac, %struct.lmac* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.bgx*, %struct.bgx** %3, align 8
  %78 = load %struct.lmac*, %struct.lmac** %5, align 8
  %79 = load %struct.lmac*, %struct.lmac** %5, align 8
  %80 = getelementptr inbounds %struct.lmac, %struct.lmac* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @lmac_set_training(%struct.bgx* %77, %struct.lmac* %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %40
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i64, i32) #1

declare dso_local i32 @lmac_set_training(%struct.bgx*, %struct.lmac*, i32) #1

declare dso_local i32 @lmac_set_lane2sds(%struct.bgx*, %struct.lmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
