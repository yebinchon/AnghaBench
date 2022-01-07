; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152b_exit_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152b_exit_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_RCR = common dso_local global i32 0, align 4
@RCR_ACPT_ALL = common dso_local global i32 0, align 4
@PLA_CRWECR = common dso_local global i32 0, align 4
@CRWECR_NORAML = common dso_local global i32 0, align 4
@PLA_CR = common dso_local global i32 0, align 4
@PLA_OOB_CTRL = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@PLA_SFF_STS_7 = common dso_local global i32 0, align 4
@MCU_BORW_EN = common dso_local global i32 0, align 4
@LINK_LIST_READY = common dso_local global i32 0, align 4
@RE_INIT_LL = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL0 = common dso_local global i32 0, align 4
@RXFIFO_THR1_NORMAL = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@PLA_RXFIFO_CTRL1 = common dso_local global i32 0, align 4
@RXFIFO_THR2_FULL = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL2 = common dso_local global i32 0, align 4
@RXFIFO_THR3_FULL = common dso_local global i32 0, align 4
@RXFIFO_THR2_HIGH = common dso_local global i32 0, align 4
@RXFIFO_THR3_HIGH = common dso_local global i32 0, align 4
@PLA_TXFIFO_CTRL = common dso_local global i32 0, align 4
@TXFIFO_THR_NORMAL = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_TX_AGG = common dso_local global i32 0, align 4
@TX_AGG_MAX_THRESHOLD = common dso_local global i32 0, align 4
@USB_RX_BUF_TH = common dso_local global i32 0, align 4
@RX_THR_HIGH = common dso_local global i32 0, align 4
@USB_TX_DMA = common dso_local global i32 0, align 4
@TEST_MODE_DISABLE = common dso_local global i32 0, align 4
@TX_SIZE_ADJUST1 = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@PLA_RMS = common dso_local global i32 0, align 4
@RTL8152_RMS = common dso_local global i32 0, align 4
@PLA_TCR0 = common dso_local global i32 0, align 4
@TCR0_AUTO_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8152b_exit_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8152b_exit_oob(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = load i32, i32* @MCU_TYPE_PLA, align 4
  %7 = load i32, i32* @PLA_RCR, align 4
  %8 = call i32 @ocp_read_dword(%struct.r8152* %5, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @RCR_ACPT_ALL, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.r8152*, %struct.r8152** %2, align 8
  %14 = load i32, i32* @MCU_TYPE_PLA, align 4
  %15 = load i32, i32* @PLA_RCR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ocp_write_dword(%struct.r8152* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.r8152*, %struct.r8152** %2, align 8
  %19 = call i32 @rxdy_gated_en(%struct.r8152* %18, i32 1)
  %20 = load %struct.r8152*, %struct.r8152** %2, align 8
  %21 = call i32 @r8153_teredo_off(%struct.r8152* %20)
  %22 = load %struct.r8152*, %struct.r8152** %2, align 8
  %23 = load i32, i32* @MCU_TYPE_PLA, align 4
  %24 = load i32, i32* @PLA_CRWECR, align 4
  %25 = load i32, i32* @CRWECR_NORAML, align 4
  %26 = call i32 @ocp_write_byte(%struct.r8152* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.r8152*, %struct.r8152** %2, align 8
  %28 = load i32, i32* @MCU_TYPE_PLA, align 4
  %29 = load i32, i32* @PLA_CR, align 4
  %30 = call i32 @ocp_write_byte(%struct.r8152* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.r8152*, %struct.r8152** %2, align 8
  %32 = load i32, i32* @MCU_TYPE_PLA, align 4
  %33 = load i32, i32* @PLA_OOB_CTRL, align 4
  %34 = call i32 @ocp_read_byte(%struct.r8152* %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @NOW_IS_OOB, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.r8152*, %struct.r8152** %2, align 8
  %40 = load i32, i32* @MCU_TYPE_PLA, align 4
  %41 = load i32, i32* @PLA_OOB_CTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ocp_write_byte(%struct.r8152* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.r8152*, %struct.r8152** %2, align 8
  %45 = load i32, i32* @MCU_TYPE_PLA, align 4
  %46 = load i32, i32* @PLA_SFF_STS_7, align 4
  %47 = call i32 @ocp_read_word(%struct.r8152* %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @MCU_BORW_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.r8152*, %struct.r8152** %2, align 8
  %53 = load i32, i32* @MCU_TYPE_PLA, align 4
  %54 = load i32, i32* @PLA_SFF_STS_7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ocp_write_word(%struct.r8152* %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %72, %1
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 1000
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.r8152*, %struct.r8152** %2, align 8
  %62 = load i32, i32* @MCU_TYPE_PLA, align 4
  %63 = load i32, i32* @PLA_OOB_CTRL, align 4
  %64 = call i32 @ocp_read_byte(%struct.r8152* %61, i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @LINK_LIST_READY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %75

70:                                               ; preds = %60
  %71 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %57

75:                                               ; preds = %69, %57
  %76 = load %struct.r8152*, %struct.r8152** %2, align 8
  %77 = load i32, i32* @MCU_TYPE_PLA, align 4
  %78 = load i32, i32* @PLA_SFF_STS_7, align 4
  %79 = call i32 @ocp_read_word(%struct.r8152* %76, i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* @RE_INIT_LL, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load %struct.r8152*, %struct.r8152** %2, align 8
  %84 = load i32, i32* @MCU_TYPE_PLA, align 4
  %85 = load i32, i32* @PLA_SFF_STS_7, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @ocp_write_word(%struct.r8152* %83, i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %103, %75
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 1000
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.r8152*, %struct.r8152** %2, align 8
  %93 = load i32, i32* @MCU_TYPE_PLA, align 4
  %94 = load i32, i32* @PLA_OOB_CTRL, align 4
  %95 = call i32 @ocp_read_byte(%struct.r8152* %92, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @LINK_LIST_READY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %106

101:                                              ; preds = %91
  %102 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %88

106:                                              ; preds = %100, %88
  %107 = load %struct.r8152*, %struct.r8152** %2, align 8
  %108 = call i32 @rtl8152_nic_reset(%struct.r8152* %107)
  %109 = load %struct.r8152*, %struct.r8152** %2, align 8
  %110 = load i32, i32* @MCU_TYPE_PLA, align 4
  %111 = load i32, i32* @PLA_RXFIFO_CTRL0, align 4
  %112 = load i32, i32* @RXFIFO_THR1_NORMAL, align 4
  %113 = call i32 @ocp_write_dword(%struct.r8152* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.r8152*, %struct.r8152** %2, align 8
  %115 = getelementptr inbounds %struct.r8152, %struct.r8152* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @USB_SPEED_FULL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %106
  %122 = load %struct.r8152*, %struct.r8152** %2, align 8
  %123 = getelementptr inbounds %struct.r8152, %struct.r8152* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @USB_SPEED_LOW, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %121, %106
  %130 = load %struct.r8152*, %struct.r8152** %2, align 8
  %131 = load i32, i32* @MCU_TYPE_PLA, align 4
  %132 = load i32, i32* @PLA_RXFIFO_CTRL1, align 4
  %133 = load i32, i32* @RXFIFO_THR2_FULL, align 4
  %134 = call i32 @ocp_write_dword(%struct.r8152* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.r8152*, %struct.r8152** %2, align 8
  %136 = load i32, i32* @MCU_TYPE_PLA, align 4
  %137 = load i32, i32* @PLA_RXFIFO_CTRL2, align 4
  %138 = load i32, i32* @RXFIFO_THR3_FULL, align 4
  %139 = call i32 @ocp_write_dword(%struct.r8152* %135, i32 %136, i32 %137, i32 %138)
  br label %151

140:                                              ; preds = %121
  %141 = load %struct.r8152*, %struct.r8152** %2, align 8
  %142 = load i32, i32* @MCU_TYPE_PLA, align 4
  %143 = load i32, i32* @PLA_RXFIFO_CTRL1, align 4
  %144 = load i32, i32* @RXFIFO_THR2_HIGH, align 4
  %145 = call i32 @ocp_write_dword(%struct.r8152* %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.r8152*, %struct.r8152** %2, align 8
  %147 = load i32, i32* @MCU_TYPE_PLA, align 4
  %148 = load i32, i32* @PLA_RXFIFO_CTRL2, align 4
  %149 = load i32, i32* @RXFIFO_THR3_HIGH, align 4
  %150 = call i32 @ocp_write_dword(%struct.r8152* %146, i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %140, %129
  %152 = load %struct.r8152*, %struct.r8152** %2, align 8
  %153 = load i32, i32* @MCU_TYPE_PLA, align 4
  %154 = load i32, i32* @PLA_TXFIFO_CTRL, align 4
  %155 = load i32, i32* @TXFIFO_THR_NORMAL, align 4
  %156 = call i32 @ocp_write_dword(%struct.r8152* %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.r8152*, %struct.r8152** %2, align 8
  %158 = load i32, i32* @MCU_TYPE_USB, align 4
  %159 = load i32, i32* @USB_TX_AGG, align 4
  %160 = load i32, i32* @TX_AGG_MAX_THRESHOLD, align 4
  %161 = call i32 @ocp_write_byte(%struct.r8152* %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.r8152*, %struct.r8152** %2, align 8
  %163 = load i32, i32* @MCU_TYPE_USB, align 4
  %164 = load i32, i32* @USB_RX_BUF_TH, align 4
  %165 = load i32, i32* @RX_THR_HIGH, align 4
  %166 = call i32 @ocp_write_dword(%struct.r8152* %162, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.r8152*, %struct.r8152** %2, align 8
  %168 = load i32, i32* @MCU_TYPE_USB, align 4
  %169 = load i32, i32* @USB_TX_DMA, align 4
  %170 = load i32, i32* @TEST_MODE_DISABLE, align 4
  %171 = load i32, i32* @TX_SIZE_ADJUST1, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @ocp_write_dword(%struct.r8152* %167, i32 %168, i32 %169, i32 %172)
  %174 = load %struct.r8152*, %struct.r8152** %2, align 8
  %175 = load %struct.r8152*, %struct.r8152** %2, align 8
  %176 = getelementptr inbounds %struct.r8152, %struct.r8152* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %181 = and i32 %179, %180
  %182 = call i32 @rtl_rx_vlan_en(%struct.r8152* %174, i32 %181)
  %183 = load %struct.r8152*, %struct.r8152** %2, align 8
  %184 = load i32, i32* @MCU_TYPE_PLA, align 4
  %185 = load i32, i32* @PLA_RMS, align 4
  %186 = load i32, i32* @RTL8152_RMS, align 4
  %187 = call i32 @ocp_write_word(%struct.r8152* %183, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.r8152*, %struct.r8152** %2, align 8
  %189 = load i32, i32* @MCU_TYPE_PLA, align 4
  %190 = load i32, i32* @PLA_TCR0, align 4
  %191 = call i32 @ocp_read_word(%struct.r8152* %188, i32 %189, i32 %190)
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* @TCR0_AUTO_FIFO, align 4
  %193 = load i32, i32* %3, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %3, align 4
  %195 = load %struct.r8152*, %struct.r8152** %2, align 8
  %196 = load i32, i32* @MCU_TYPE_PLA, align 4
  %197 = load i32, i32* @PLA_TCR0, align 4
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @ocp_write_word(%struct.r8152* %195, i32 %196, i32 %197, i32 %198)
  ret void
}

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_teredo_off(%struct.r8152*) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtl8152_nic_reset(%struct.r8152*) #1

declare dso_local i32 @rtl_rx_vlan_en(%struct.r8152*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
