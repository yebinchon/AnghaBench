; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i64, i64, i64, i64, %struct.ssb_device* }
%struct.ssb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@B44_RCV_LAZY = common dso_local global i32 0, align 4
@B44_ENET_CTRL = common dso_local global i32 0, align 4
@ENET_CTRL_DISABLE = common dso_local global i32 0, align 4
@B44_DMATX_CTRL = common dso_local global i32 0, align 4
@B44_DMARX_STAT = common dso_local global i32 0, align 4
@DMARX_STAT_EMASK = common dso_local global i32 0, align 4
@DMARX_STAT_SIDLE = common dso_local global i32 0, align 4
@B44_DMARX_CTRL = common dso_local global i32 0, align 4
@B44_CHIP_RESET_PARTIAL = common dso_local global i32 0, align 4
@B44_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_CTRL_PREAMBLE = common dso_local global i32 0, align 4
@B44_MDC_RATIO = common dso_local global i32 0, align 4
@MDIO_CTRL_MAXF_MASK = common dso_local global i32 0, align 4
@B44_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_IPP = common dso_local global i32 0, align 4
@ENET_CTRL_EPSEL = common dso_local global i32 0, align 4
@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@DEVCTRL_EPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*, i32)* @b44_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_chip_reset(%struct.b44* %0, i32 %1) #0 {
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b44*, %struct.b44** %3, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 5
  %10 = load %struct.ssb_device*, %struct.ssb_device** %9, align 8
  store %struct.ssb_device* %10, %struct.ssb_device** %5, align 8
  %11 = load %struct.b44*, %struct.b44** %3, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 5
  %13 = load %struct.ssb_device*, %struct.ssb_device** %12, align 8
  %14 = call i32 @ssb_device_is_enabled(%struct.ssb_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.b44*, %struct.b44** %3, align 8
  %16 = getelementptr inbounds %struct.b44, %struct.b44* %15, i32 0, i32 5
  %17 = load %struct.ssb_device*, %struct.ssb_device** %16, align 8
  %18 = call i32 @ssb_device_enable(%struct.ssb_device* %17, i32 0)
  %19 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %20 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %24 = call i32 @ssb_pcicore_dev_irqvecs_enable(i32* %22, %struct.ssb_device* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %2
  %28 = load %struct.b44*, %struct.b44** %3, align 8
  %29 = load i32, i32* @B44_RCV_LAZY, align 4
  %30 = call i32 @bw32(%struct.b44* %28, i32 %29, i32 0)
  %31 = load %struct.b44*, %struct.b44** %3, align 8
  %32 = load i32, i32* @B44_ENET_CTRL, align 4
  %33 = load i32, i32* @ENET_CTRL_DISABLE, align 4
  %34 = call i32 @bw32(%struct.b44* %31, i32 %32, i32 %33)
  %35 = load %struct.b44*, %struct.b44** %3, align 8
  %36 = load i32, i32* @B44_ENET_CTRL, align 4
  %37 = load i32, i32* @ENET_CTRL_DISABLE, align 4
  %38 = call i32 @b44_wait_bit(%struct.b44* %35, i32 %36, i32 %37, i32 200, i32 1)
  %39 = load %struct.b44*, %struct.b44** %3, align 8
  %40 = load i32, i32* @B44_DMATX_CTRL, align 4
  %41 = call i32 @bw32(%struct.b44* %39, i32 %40, i32 0)
  %42 = load %struct.b44*, %struct.b44** %3, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.b44*, %struct.b44** %3, align 8
  %45 = getelementptr inbounds %struct.b44, %struct.b44* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.b44*, %struct.b44** %3, align 8
  %47 = load i32, i32* @B44_DMARX_STAT, align 4
  %48 = call i32 @br32(%struct.b44* %46, i32 %47)
  %49 = load i32, i32* @DMARX_STAT_EMASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %27
  %53 = load %struct.b44*, %struct.b44** %3, align 8
  %54 = load i32, i32* @B44_DMARX_STAT, align 4
  %55 = load i32, i32* @DMARX_STAT_SIDLE, align 4
  %56 = call i32 @b44_wait_bit(%struct.b44* %53, i32 %54, i32 %55, i32 100, i32 0)
  br label %57

57:                                               ; preds = %52, %27
  %58 = load %struct.b44*, %struct.b44** %3, align 8
  %59 = load i32, i32* @B44_DMARX_CTRL, align 4
  %60 = call i32 @bw32(%struct.b44* %58, i32 %59, i32 0)
  %61 = load %struct.b44*, %struct.b44** %3, align 8
  %62 = getelementptr inbounds %struct.b44, %struct.b44* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.b44*, %struct.b44** %3, align 8
  %64 = getelementptr inbounds %struct.b44, %struct.b44* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %2
  %66 = load %struct.b44*, %struct.b44** %3, align 8
  %67 = call i32 @b44_clear_stats(%struct.b44* %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @B44_CHIP_RESET_PARTIAL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %152

72:                                               ; preds = %65
  %73 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %74 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %102 [
    i32 128, label %78
    i32 131, label %92
    i32 130, label %100
    i32 129, label %100
  ]

78:                                               ; preds = %72
  %79 = load %struct.b44*, %struct.b44** %3, align 8
  %80 = load i32, i32* @B44_MDIO_CTRL, align 4
  %81 = load i32, i32* @MDIO_CTRL_PREAMBLE, align 4
  %82 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %83 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call i32 @ssb_clockspeed(%struct.TYPE_2__* %84)
  %86 = load i32, i32* @B44_MDC_RATIO, align 4
  %87 = call i32 @DIV_ROUND_CLOSEST(i32 %85, i32 %86)
  %88 = load i32, i32* @MDIO_CTRL_MAXF_MASK, align 4
  %89 = and i32 %87, %88
  %90 = or i32 %81, %89
  %91 = call i32 @bw32(%struct.b44* %79, i32 %80, i32 %90)
  br label %102

92:                                               ; preds = %72
  %93 = load %struct.b44*, %struct.b44** %3, align 8
  %94 = load i32, i32* @B44_MDIO_CTRL, align 4
  %95 = load i32, i32* @MDIO_CTRL_PREAMBLE, align 4
  %96 = load i32, i32* @MDIO_CTRL_MAXF_MASK, align 4
  %97 = and i32 13, %96
  %98 = or i32 %95, %97
  %99 = call i32 @bw32(%struct.b44* %93, i32 %94, i32 %98)
  br label %102

100:                                              ; preds = %72, %72
  %101 = call i32 @WARN_ON(i32 1)
  br label %102

102:                                              ; preds = %72, %100, %92, %78
  %103 = load %struct.b44*, %struct.b44** %3, align 8
  %104 = load i32, i32* @B44_MDIO_CTRL, align 4
  %105 = call i32 @br32(%struct.b44* %103, i32 %104)
  %106 = load %struct.b44*, %struct.b44** %3, align 8
  %107 = load i32, i32* @B44_DEVCTRL, align 4
  %108 = call i32 @br32(%struct.b44* %106, i32 %107)
  %109 = load i32, i32* @DEVCTRL_IPP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %102
  %113 = load %struct.b44*, %struct.b44** %3, align 8
  %114 = load i32, i32* @B44_ENET_CTRL, align 4
  %115 = load i32, i32* @ENET_CTRL_EPSEL, align 4
  %116 = call i32 @bw32(%struct.b44* %113, i32 %114, i32 %115)
  %117 = load %struct.b44*, %struct.b44** %3, align 8
  %118 = load i32, i32* @B44_ENET_CTRL, align 4
  %119 = call i32 @br32(%struct.b44* %117, i32 %118)
  %120 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %121 = load %struct.b44*, %struct.b44** %3, align 8
  %122 = getelementptr inbounds %struct.b44, %struct.b44* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %152

125:                                              ; preds = %102
  %126 = load %struct.b44*, %struct.b44** %3, align 8
  %127 = load i32, i32* @B44_DEVCTRL, align 4
  %128 = call i32 @br32(%struct.b44* %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @DEVCTRL_EPR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %125
  %134 = load %struct.b44*, %struct.b44** %3, align 8
  %135 = load i32, i32* @B44_DEVCTRL, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @DEVCTRL_EPR, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = call i32 @bw32(%struct.b44* %134, i32 %135, i32 %139)
  %141 = load %struct.b44*, %struct.b44** %3, align 8
  %142 = load i32, i32* @B44_DEVCTRL, align 4
  %143 = call i32 @br32(%struct.b44* %141, i32 %142)
  %144 = call i32 @udelay(i32 100)
  br label %145

145:                                              ; preds = %133, %125
  %146 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.b44*, %struct.b44** %3, align 8
  %149 = getelementptr inbounds %struct.b44, %struct.b44* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %71, %145, %112
  ret void
}

declare dso_local i32 @ssb_device_is_enabled(%struct.ssb_device*) #1

declare dso_local i32 @ssb_device_enable(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_pcicore_dev_irqvecs_enable(i32*, %struct.ssb_device*) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_wait_bit(%struct.b44*, i32, i32, i32, i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @b44_clear_stats(%struct.b44*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ssb_clockspeed(%struct.TYPE_2__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
