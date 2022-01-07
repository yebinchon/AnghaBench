; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152b_enter_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152b_enter_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_OOB_CTRL = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL0 = common dso_local global i32 0, align 4
@RXFIFO_THR1_OOB = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL1 = common dso_local global i32 0, align 4
@RXFIFO_THR2_OOB = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL2 = common dso_local global i32 0, align 4
@RXFIFO_THR3_OOB = common dso_local global i32 0, align 4
@LINK_LIST_READY = common dso_local global i32 0, align 4
@PLA_SFF_STS_7 = common dso_local global i32 0, align 4
@RE_INIT_LL = common dso_local global i32 0, align 4
@PLA_RMS = common dso_local global i32 0, align 4
@RTL8152_RMS = common dso_local global i32 0, align 4
@PLA_BDC_CR = common dso_local global i32 0, align 4
@ALDPS_PROXY_MODE = common dso_local global i32 0, align 4
@DIS_MCU_CLROOB = common dso_local global i32 0, align 4
@PLA_RCR = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8152b_enter_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8152b_enter_oob(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = load i32, i32* @MCU_TYPE_PLA, align 4
  %7 = load i32, i32* @PLA_OOB_CTRL, align 4
  %8 = call i32 @ocp_read_byte(%struct.r8152* %5, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @NOW_IS_OOB, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.r8152*, %struct.r8152** %2, align 8
  %14 = load i32, i32* @MCU_TYPE_PLA, align 4
  %15 = load i32, i32* @PLA_OOB_CTRL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ocp_write_byte(%struct.r8152* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.r8152*, %struct.r8152** %2, align 8
  %19 = load i32, i32* @MCU_TYPE_PLA, align 4
  %20 = load i32, i32* @PLA_RXFIFO_CTRL0, align 4
  %21 = load i32, i32* @RXFIFO_THR1_OOB, align 4
  %22 = call i32 @ocp_write_dword(%struct.r8152* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.r8152*, %struct.r8152** %2, align 8
  %24 = load i32, i32* @MCU_TYPE_PLA, align 4
  %25 = load i32, i32* @PLA_RXFIFO_CTRL1, align 4
  %26 = load i32, i32* @RXFIFO_THR2_OOB, align 4
  %27 = call i32 @ocp_write_dword(%struct.r8152* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.r8152*, %struct.r8152** %2, align 8
  %29 = load i32, i32* @MCU_TYPE_PLA, align 4
  %30 = load i32, i32* @PLA_RXFIFO_CTRL2, align 4
  %31 = load i32, i32* @RXFIFO_THR3_OOB, align 4
  %32 = call i32 @ocp_write_dword(%struct.r8152* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.r8152*, %struct.r8152** %2, align 8
  %34 = call i32 @rtl_disable(%struct.r8152* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %50, %1
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 1000
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.r8152*, %struct.r8152** %2, align 8
  %40 = load i32, i32* @MCU_TYPE_PLA, align 4
  %41 = load i32, i32* @PLA_OOB_CTRL, align 4
  %42 = call i32 @ocp_read_byte(%struct.r8152* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @LINK_LIST_READY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %53

48:                                               ; preds = %38
  %49 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %35

53:                                               ; preds = %47, %35
  %54 = load %struct.r8152*, %struct.r8152** %2, align 8
  %55 = load i32, i32* @MCU_TYPE_PLA, align 4
  %56 = load i32, i32* @PLA_SFF_STS_7, align 4
  %57 = call i32 @ocp_read_word(%struct.r8152* %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @RE_INIT_LL, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.r8152*, %struct.r8152** %2, align 8
  %62 = load i32, i32* @MCU_TYPE_PLA, align 4
  %63 = load i32, i32* @PLA_SFF_STS_7, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @ocp_write_word(%struct.r8152* %61, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %81, %53
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 1000
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.r8152*, %struct.r8152** %2, align 8
  %71 = load i32, i32* @MCU_TYPE_PLA, align 4
  %72 = load i32, i32* @PLA_OOB_CTRL, align 4
  %73 = call i32 @ocp_read_byte(%struct.r8152* %70, i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @LINK_LIST_READY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %84

79:                                               ; preds = %69
  %80 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %66

84:                                               ; preds = %78, %66
  %85 = load %struct.r8152*, %struct.r8152** %2, align 8
  %86 = load i32, i32* @MCU_TYPE_PLA, align 4
  %87 = load i32, i32* @PLA_RMS, align 4
  %88 = load i32, i32* @RTL8152_RMS, align 4
  %89 = call i32 @ocp_write_word(%struct.r8152* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.r8152*, %struct.r8152** %2, align 8
  %91 = call i32 @rtl_rx_vlan_en(%struct.r8152* %90, i32 1)
  %92 = load %struct.r8152*, %struct.r8152** %2, align 8
  %93 = load i32, i32* @MCU_TYPE_PLA, align 4
  %94 = load i32, i32* @PLA_BDC_CR, align 4
  %95 = call i32 @ocp_read_word(%struct.r8152* %92, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @ALDPS_PROXY_MODE, align 4
  %97 = load i32, i32* %3, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %3, align 4
  %99 = load %struct.r8152*, %struct.r8152** %2, align 8
  %100 = load i32, i32* @MCU_TYPE_PLA, align 4
  %101 = load i32, i32* @PLA_BDC_CR, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @ocp_write_word(%struct.r8152* %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.r8152*, %struct.r8152** %2, align 8
  %105 = load i32, i32* @MCU_TYPE_PLA, align 4
  %106 = load i32, i32* @PLA_OOB_CTRL, align 4
  %107 = call i32 @ocp_read_byte(%struct.r8152* %104, i32 %105, i32 %106)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* @NOW_IS_OOB, align 4
  %109 = load i32, i32* @DIS_MCU_CLROOB, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load %struct.r8152*, %struct.r8152** %2, align 8
  %114 = load i32, i32* @MCU_TYPE_PLA, align 4
  %115 = load i32, i32* @PLA_OOB_CTRL, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @ocp_write_byte(%struct.r8152* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.r8152*, %struct.r8152** %2, align 8
  %119 = call i32 @rxdy_gated_en(%struct.r8152* %118, i32 0)
  %120 = load %struct.r8152*, %struct.r8152** %2, align 8
  %121 = load i32, i32* @MCU_TYPE_PLA, align 4
  %122 = load i32, i32* @PLA_RCR, align 4
  %123 = call i32 @ocp_read_dword(%struct.r8152* %120, i32 %121, i32 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @RCR_APM, align 4
  %125 = load i32, i32* @RCR_AM, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @RCR_AB, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %3, align 4
  %131 = load %struct.r8152*, %struct.r8152** %2, align 8
  %132 = load i32, i32* @MCU_TYPE_PLA, align 4
  %133 = load i32, i32* @PLA_RCR, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @ocp_write_dword(%struct.r8152* %131, i32 %132, i32 %133, i32 %134)
  ret void
}

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rtl_disable(%struct.r8152*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rtl_rx_vlan_en(%struct.r8152*, i32) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
