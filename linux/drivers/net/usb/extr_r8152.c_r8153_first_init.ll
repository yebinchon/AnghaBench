; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_first_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_first_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_RCR = common dso_local global i32 0, align 4
@RCR_ACPT_ALL = common dso_local global i32 0, align 4
@PLA_OOB_CTRL = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@PLA_SFF_STS_7 = common dso_local global i32 0, align 4
@MCU_BORW_EN = common dso_local global i32 0, align 4
@LINK_LIST_READY = common dso_local global i32 0, align 4
@RE_INIT_LL = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@PLA_RMS = common dso_local global i32 0, align 4
@PLA_MTPS = common dso_local global i32 0, align 4
@MTPS_JUMBO = common dso_local global i32 0, align 4
@PLA_TCR0 = common dso_local global i32 0, align 4
@TCR0_AUTO_FIFO = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL0 = common dso_local global i32 0, align 4
@RXFIFO_THR1_NORMAL = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL1 = common dso_local global i32 0, align 4
@RXFIFO_THR2_NORMAL = common dso_local global i32 0, align 4
@PLA_RXFIFO_CTRL2 = common dso_local global i32 0, align 4
@RXFIFO_THR3_NORMAL = common dso_local global i32 0, align 4
@PLA_TXFIFO_CTRL = common dso_local global i32 0, align 4
@TXFIFO_THR_NORMAL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_first_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_first_init(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = call i32 @r8153_mac_clk_spd(%struct.r8152* %5, i32 0)
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = call i32 @rxdy_gated_en(%struct.r8152* %7, i32 1)
  %9 = load %struct.r8152*, %struct.r8152** %2, align 8
  %10 = call i32 @r8153_teredo_off(%struct.r8152* %9)
  %11 = load %struct.r8152*, %struct.r8152** %2, align 8
  %12 = load i32, i32* @MCU_TYPE_PLA, align 4
  %13 = load i32, i32* @PLA_RCR, align 4
  %14 = call i32 @ocp_read_dword(%struct.r8152* %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @RCR_ACPT_ALL, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.r8152*, %struct.r8152** %2, align 8
  %20 = load i32, i32* @MCU_TYPE_PLA, align 4
  %21 = load i32, i32* @PLA_RCR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ocp_write_dword(%struct.r8152* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.r8152*, %struct.r8152** %2, align 8
  %25 = call i32 @rtl8152_nic_reset(%struct.r8152* %24)
  %26 = load %struct.r8152*, %struct.r8152** %2, align 8
  %27 = call i32 @rtl_reset_bmu(%struct.r8152* %26)
  %28 = load %struct.r8152*, %struct.r8152** %2, align 8
  %29 = load i32, i32* @MCU_TYPE_PLA, align 4
  %30 = load i32, i32* @PLA_OOB_CTRL, align 4
  %31 = call i32 @ocp_read_byte(%struct.r8152* %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @NOW_IS_OOB, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.r8152*, %struct.r8152** %2, align 8
  %37 = load i32, i32* @MCU_TYPE_PLA, align 4
  %38 = load i32, i32* @PLA_OOB_CTRL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ocp_write_byte(%struct.r8152* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.r8152*, %struct.r8152** %2, align 8
  %42 = load i32, i32* @MCU_TYPE_PLA, align 4
  %43 = load i32, i32* @PLA_SFF_STS_7, align 4
  %44 = call i32 @ocp_read_word(%struct.r8152* %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @MCU_BORW_EN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.r8152*, %struct.r8152** %2, align 8
  %50 = load i32, i32* @MCU_TYPE_PLA, align 4
  %51 = load i32, i32* @PLA_SFF_STS_7, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @ocp_write_word(%struct.r8152* %49, i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %69, %1
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 1000
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.r8152*, %struct.r8152** %2, align 8
  %59 = load i32, i32* @MCU_TYPE_PLA, align 4
  %60 = load i32, i32* @PLA_OOB_CTRL, align 4
  %61 = call i32 @ocp_read_byte(%struct.r8152* %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @LINK_LIST_READY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %72

67:                                               ; preds = %57
  %68 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %54

72:                                               ; preds = %66, %54
  %73 = load %struct.r8152*, %struct.r8152** %2, align 8
  %74 = load i32, i32* @MCU_TYPE_PLA, align 4
  %75 = load i32, i32* @PLA_SFF_STS_7, align 4
  %76 = call i32 @ocp_read_word(%struct.r8152* %73, i32 %74, i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @RE_INIT_LL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.r8152*, %struct.r8152** %2, align 8
  %81 = load i32, i32* @MCU_TYPE_PLA, align 4
  %82 = load i32, i32* @PLA_SFF_STS_7, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ocp_write_word(%struct.r8152* %80, i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %100, %72
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 1000
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.r8152*, %struct.r8152** %2, align 8
  %90 = load i32, i32* @MCU_TYPE_PLA, align 4
  %91 = load i32, i32* @PLA_OOB_CTRL, align 4
  %92 = call i32 @ocp_read_byte(%struct.r8152* %89, i32 %90, i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @LINK_LIST_READY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %103

98:                                               ; preds = %88
  %99 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %85

103:                                              ; preds = %97, %85
  %104 = load %struct.r8152*, %struct.r8152** %2, align 8
  %105 = load %struct.r8152*, %struct.r8152** %2, align 8
  %106 = getelementptr inbounds %struct.r8152, %struct.r8152* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %111 = and i32 %109, %110
  %112 = call i32 @rtl_rx_vlan_en(%struct.r8152* %104, i32 %111)
  %113 = load %struct.r8152*, %struct.r8152** %2, align 8
  %114 = getelementptr inbounds %struct.r8152, %struct.r8152* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @ETH_FCS_LEN, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %3, align 4
  %122 = load %struct.r8152*, %struct.r8152** %2, align 8
  %123 = load i32, i32* @MCU_TYPE_PLA, align 4
  %124 = load i32, i32* @PLA_RMS, align 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @ocp_write_word(%struct.r8152* %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.r8152*, %struct.r8152** %2, align 8
  %128 = load i32, i32* @MCU_TYPE_PLA, align 4
  %129 = load i32, i32* @PLA_MTPS, align 4
  %130 = load i32, i32* @MTPS_JUMBO, align 4
  %131 = call i32 @ocp_write_byte(%struct.r8152* %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.r8152*, %struct.r8152** %2, align 8
  %133 = load i32, i32* @MCU_TYPE_PLA, align 4
  %134 = load i32, i32* @PLA_TCR0, align 4
  %135 = call i32 @ocp_read_word(%struct.r8152* %132, i32 %133, i32 %134)
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* @TCR0_AUTO_FIFO, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load %struct.r8152*, %struct.r8152** %2, align 8
  %140 = load i32, i32* @MCU_TYPE_PLA, align 4
  %141 = load i32, i32* @PLA_TCR0, align 4
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @ocp_write_word(%struct.r8152* %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.r8152*, %struct.r8152** %2, align 8
  %145 = call i32 @rtl8152_nic_reset(%struct.r8152* %144)
  %146 = load %struct.r8152*, %struct.r8152** %2, align 8
  %147 = load i32, i32* @MCU_TYPE_PLA, align 4
  %148 = load i32, i32* @PLA_RXFIFO_CTRL0, align 4
  %149 = load i32, i32* @RXFIFO_THR1_NORMAL, align 4
  %150 = call i32 @ocp_write_dword(%struct.r8152* %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.r8152*, %struct.r8152** %2, align 8
  %152 = load i32, i32* @MCU_TYPE_PLA, align 4
  %153 = load i32, i32* @PLA_RXFIFO_CTRL1, align 4
  %154 = load i32, i32* @RXFIFO_THR2_NORMAL, align 4
  %155 = call i32 @ocp_write_word(%struct.r8152* %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.r8152*, %struct.r8152** %2, align 8
  %157 = load i32, i32* @MCU_TYPE_PLA, align 4
  %158 = load i32, i32* @PLA_RXFIFO_CTRL2, align 4
  %159 = load i32, i32* @RXFIFO_THR3_NORMAL, align 4
  %160 = call i32 @ocp_write_word(%struct.r8152* %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.r8152*, %struct.r8152** %2, align 8
  %162 = load i32, i32* @MCU_TYPE_PLA, align 4
  %163 = load i32, i32* @PLA_TXFIFO_CTRL, align 4
  %164 = load i32, i32* @TXFIFO_THR_NORMAL2, align 4
  %165 = call i32 @ocp_write_dword(%struct.r8152* %161, i32 %162, i32 %163, i32 %164)
  ret void
}

declare dso_local i32 @r8153_mac_clk_spd(%struct.r8152*, i32) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_teredo_off(%struct.r8152*) #1

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rtl8152_nic_reset(%struct.r8152*) #1

declare dso_local i32 @rtl_reset_bmu(%struct.r8152*) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtl_rx_vlan_en(%struct.r8152*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
