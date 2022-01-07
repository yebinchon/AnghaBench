; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }

@BGMAC_FEAT_CMDCFG_SR_REV4 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_SR_REV4 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_SR_REV0 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_TE = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_RE = common dso_local global i32 0, align 4
@BGMAC_DEV_STATUS = common dso_local global i32 0, align 4
@BGMAC_DS_MM_MASK = common dso_local global i32 0, align 4
@BGMAC_DS_MM_SHIFT = common dso_local global i32 0, align 4
@BGMAC_FEAT_CLKCTLST = common dso_local global i32 0, align 4
@BCMA_CLKCTLST = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_FORCEHT = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_RXC_DLL_BYPASS = common dso_local global i32 0, align 4
@BGMAC_FEAT_FLW_CTRL1 = common dso_local global i32 0, align 4
@BGMAC_FEAT_FLW_CTRL2 = common dso_local global i32 0, align 4
@BGMAC_FLOW_CTL_THRESH = common dso_local global i32 0, align 4
@BGMAC_PAUSE_CTL = common dso_local global i32 0, align 4
@BGMAC_FEAT_SET_RXQ_CLK = common dso_local global i32 0, align 4
@BGMAC_RXQ_CTL = common dso_local global i32 0, align 4
@BGMAC_RXQ_CTL_MDP_MASK = common dso_local global i32 0, align 4
@BGMAC_RXQ_CTL_MDP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_enable(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %10 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %11 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BGMAC_FEAT_CMDCFG_SR_REV4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @BGMAC_CMDCFG_SR_REV4, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @BGMAC_CMDCFG_SR_REV0, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %22 = load i32, i32* @BGMAC_CMDCFG, align 4
  %23 = call i32 @bgmac_read(%struct.bgmac* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %25 = load i32, i32* @BGMAC_CMDCFG_TE, align 4
  %26 = load i32, i32* @BGMAC_CMDCFG_RE, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @bgmac_cmdcfg_maskset(%struct.bgmac* %24, i32 %28, i32 %29, i32 1)
  %31 = call i32 @udelay(i32 2)
  %32 = load i32, i32* @BGMAC_CMDCFG_TE, align 4
  %33 = load i32, i32* @BGMAC_CMDCFG_RE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %38 = load i32, i32* @BGMAC_CMDCFG, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bgmac_write(%struct.bgmac* %37, i32 %38, i32 %39)
  %41 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %42 = load i32, i32* @BGMAC_DEV_STATUS, align 4
  %43 = call i32 @bgmac_read(%struct.bgmac* %41, i32 %42)
  %44 = load i32, i32* @BGMAC_DS_MM_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @BGMAC_DS_MM_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %49 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %20
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %20
  %58 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %59 = load i32, i32* @BCMA_CLKCTLST, align 4
  %60 = load i32, i32* @BCMA_CLKCTLST_FORCEHT, align 4
  %61 = call i32 @bgmac_set(%struct.bgmac* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %64 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %74 = load i32, i32* @BGMAC_CHIPCTL_1_RXC_DLL_BYPASS, align 4
  %75 = call i32 @bgmac_cco_ctl_maskset(%struct.bgmac* %73, i32 1, i32 -1, i32 %74)
  br label %76

76:                                               ; preds = %72, %69, %62
  %77 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %78 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BGMAC_FEAT_FLW_CTRL1, align 4
  %81 = load i32, i32* @BGMAC_FEAT_FLW_CTRL2, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %76
  %86 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %87 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BGMAC_FEAT_FLW_CTRL1, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 2293985, i32* %6, align 4
  br label %94

93:                                               ; preds = %85
  store i32 63636683, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %96 = load i32, i32* @BGMAC_FLOW_CTL_THRESH, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @bgmac_write(%struct.bgmac* %95, i32 %96, i32 %97)
  %99 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %100 = load i32, i32* @BGMAC_PAUSE_CTL, align 4
  %101 = call i32 @bgmac_write(%struct.bgmac* %99, i32 %100, i32 163839)
  br label %102

102:                                              ; preds = %94, %76
  %103 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %104 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BGMAC_FEAT_SET_RXQ_CLK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %102
  %110 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %111 = load i32, i32* @BGMAC_RXQ_CTL, align 4
  %112 = call i32 @bgmac_read(%struct.bgmac* %110, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @BGMAC_RXQ_CTL_MDP_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %118 = call i32 @bgmac_get_bus_clock(%struct.bgmac* %117)
  %119 = sdiv i32 %118, 1000000
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %120, 128
  %122 = sdiv i32 %121, 1000
  %123 = sub nsw i32 %122, 3
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @BGMAC_RXQ_CTL_MDP_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %130 = load i32, i32* @BGMAC_RXQ_CTL, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @bgmac_write(%struct.bgmac* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %109, %102
  ret void
}

declare dso_local i32 @bgmac_read(%struct.bgmac*, i32) #1

declare dso_local i32 @bgmac_cmdcfg_maskset(%struct.bgmac*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bgmac_write(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @bgmac_set(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @bgmac_cco_ctl_maskset(%struct.bgmac*, i32, i32, i32) #1

declare dso_local i32 @bgmac_get_bus_clock(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
