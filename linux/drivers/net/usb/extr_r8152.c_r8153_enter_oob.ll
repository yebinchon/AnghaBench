; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_enter_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_enter_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_OOB_CTRL = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@LINK_LIST_READY = common dso_local global i32 0, align 4
@PLA_SFF_STS_7 = common dso_local global i32 0, align 4
@RE_INIT_LL = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@PLA_RMS = common dso_local global i32 0, align 4
@PLA_TEREDO_CFG = common dso_local global i32 0, align 4
@TEREDO_WAKE_MASK = common dso_local global i32 0, align 4
@PLA_TEREDO_WAKE_BASE = common dso_local global i32 0, align 4
@PLA_BDC_CR = common dso_local global i32 0, align 4
@ALDPS_PROXY_MODE = common dso_local global i32 0, align 4
@DIS_MCU_CLROOB = common dso_local global i32 0, align 4
@PLA_RCR = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_enter_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_enter_oob(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = call i32 @r8153_mac_clk_spd(%struct.r8152* %5, i32 1)
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = load i32, i32* @MCU_TYPE_PLA, align 4
  %9 = load i32, i32* @PLA_OOB_CTRL, align 4
  %10 = call i32 @ocp_read_byte(%struct.r8152* %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @NOW_IS_OOB, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.r8152*, %struct.r8152** %2, align 8
  %16 = load i32, i32* @MCU_TYPE_PLA, align 4
  %17 = load i32, i32* @PLA_OOB_CTRL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ocp_write_byte(%struct.r8152* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.r8152*, %struct.r8152** %2, align 8
  %21 = call i32 @rtl_disable(%struct.r8152* %20)
  %22 = load %struct.r8152*, %struct.r8152** %2, align 8
  %23 = call i32 @rtl_reset_bmu(%struct.r8152* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 1000
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.r8152*, %struct.r8152** %2, align 8
  %29 = load i32, i32* @MCU_TYPE_PLA, align 4
  %30 = load i32, i32* @PLA_OOB_CTRL, align 4
  %31 = call i32 @ocp_read_byte(%struct.r8152* %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @LINK_LIST_READY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %42

37:                                               ; preds = %27
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %36, %24
  %43 = load %struct.r8152*, %struct.r8152** %2, align 8
  %44 = load i32, i32* @MCU_TYPE_PLA, align 4
  %45 = load i32, i32* @PLA_SFF_STS_7, align 4
  %46 = call i32 @ocp_read_word(%struct.r8152* %43, i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @RE_INIT_LL, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.r8152*, %struct.r8152** %2, align 8
  %51 = load i32, i32* @MCU_TYPE_PLA, align 4
  %52 = load i32, i32* @PLA_SFF_STS_7, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @ocp_write_word(%struct.r8152* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %70, %42
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 1000
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load %struct.r8152*, %struct.r8152** %2, align 8
  %60 = load i32, i32* @MCU_TYPE_PLA, align 4
  %61 = load i32, i32* @PLA_OOB_CTRL, align 4
  %62 = call i32 @ocp_read_byte(%struct.r8152* %59, i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @LINK_LIST_READY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %73

68:                                               ; preds = %58
  %69 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %55

73:                                               ; preds = %67, %55
  %74 = load %struct.r8152*, %struct.r8152** %2, align 8
  %75 = getelementptr inbounds %struct.r8152, %struct.r8152* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @ETH_FCS_LEN, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %3, align 4
  %83 = load %struct.r8152*, %struct.r8152** %2, align 8
  %84 = load i32, i32* @MCU_TYPE_PLA, align 4
  %85 = load i32, i32* @PLA_RMS, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @ocp_write_word(%struct.r8152* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.r8152*, %struct.r8152** %2, align 8
  %89 = getelementptr inbounds %struct.r8152, %struct.r8152* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %110 [
    i32 133, label %91
    i32 132, label %91
    i32 131, label %91
    i32 130, label %91
    i32 129, label %105
    i32 128, label %105
  ]

91:                                               ; preds = %73, %73, %73, %73
  %92 = load %struct.r8152*, %struct.r8152** %2, align 8
  %93 = load i32, i32* @MCU_TYPE_PLA, align 4
  %94 = load i32, i32* @PLA_TEREDO_CFG, align 4
  %95 = call i32 @ocp_read_word(%struct.r8152* %92, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @TEREDO_WAKE_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load %struct.r8152*, %struct.r8152** %2, align 8
  %101 = load i32, i32* @MCU_TYPE_PLA, align 4
  %102 = load i32, i32* @PLA_TEREDO_CFG, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @ocp_write_word(%struct.r8152* %100, i32 %101, i32 %102, i32 %103)
  br label %111

105:                                              ; preds = %73, %73
  %106 = load %struct.r8152*, %struct.r8152** %2, align 8
  %107 = load i32, i32* @MCU_TYPE_PLA, align 4
  %108 = load i32, i32* @PLA_TEREDO_WAKE_BASE, align 4
  %109 = call i32 @ocp_write_word(%struct.r8152* %106, i32 %107, i32 %108, i32 255)
  br label %111

110:                                              ; preds = %73
  br label %111

111:                                              ; preds = %110, %105, %91
  %112 = load %struct.r8152*, %struct.r8152** %2, align 8
  %113 = call i32 @rtl_rx_vlan_en(%struct.r8152* %112, i32 1)
  %114 = load %struct.r8152*, %struct.r8152** %2, align 8
  %115 = load i32, i32* @MCU_TYPE_PLA, align 4
  %116 = load i32, i32* @PLA_BDC_CR, align 4
  %117 = call i32 @ocp_read_word(%struct.r8152* %114, i32 %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @ALDPS_PROXY_MODE, align 4
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %3, align 4
  %121 = load %struct.r8152*, %struct.r8152** %2, align 8
  %122 = load i32, i32* @MCU_TYPE_PLA, align 4
  %123 = load i32, i32* @PLA_BDC_CR, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @ocp_write_word(%struct.r8152* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.r8152*, %struct.r8152** %2, align 8
  %127 = load i32, i32* @MCU_TYPE_PLA, align 4
  %128 = load i32, i32* @PLA_OOB_CTRL, align 4
  %129 = call i32 @ocp_read_byte(%struct.r8152* %126, i32 %127, i32 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @NOW_IS_OOB, align 4
  %131 = load i32, i32* @DIS_MCU_CLROOB, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load %struct.r8152*, %struct.r8152** %2, align 8
  %136 = load i32, i32* @MCU_TYPE_PLA, align 4
  %137 = load i32, i32* @PLA_OOB_CTRL, align 4
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @ocp_write_byte(%struct.r8152* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.r8152*, %struct.r8152** %2, align 8
  %141 = call i32 @rxdy_gated_en(%struct.r8152* %140, i32 0)
  %142 = load %struct.r8152*, %struct.r8152** %2, align 8
  %143 = load i32, i32* @MCU_TYPE_PLA, align 4
  %144 = load i32, i32* @PLA_RCR, align 4
  %145 = call i32 @ocp_read_dword(%struct.r8152* %142, i32 %143, i32 %144)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* @RCR_APM, align 4
  %147 = load i32, i32* @RCR_AM, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @RCR_AB, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  %153 = load %struct.r8152*, %struct.r8152** %2, align 8
  %154 = load i32, i32* @MCU_TYPE_PLA, align 4
  %155 = load i32, i32* @PLA_RCR, align 4
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @ocp_write_dword(%struct.r8152* %153, i32 %154, i32 %155, i32 %156)
  ret void
}

declare dso_local i32 @r8153_mac_clk_spd(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rtl_disable(%struct.r8152*) #1

declare dso_local i32 @rtl_reset_bmu(%struct.r8152*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rtl_rx_vlan_en(%struct.r8152*, i32) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
