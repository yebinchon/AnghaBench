; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ALTERA_TSE_RX_SECTION_EMPTY = common dso_local global i32 0, align 4
@rx_section_empty = common dso_local global i32 0, align 4
@ALTERA_TSE_RX_SECTION_FULL = common dso_local global i32 0, align 4
@rx_section_full = common dso_local global i32 0, align 4
@ALTERA_TSE_RX_ALMOST_EMPTY = common dso_local global i32 0, align 4
@rx_almost_empty = common dso_local global i32 0, align 4
@ALTERA_TSE_RX_ALMOST_FULL = common dso_local global i32 0, align 4
@rx_almost_full = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_SECTION_EMPTY = common dso_local global i32 0, align 4
@tx_section_empty = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_SECTION_FULL = common dso_local global i32 0, align 4
@tx_section_full = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_ALMOST_EMPTY = common dso_local global i32 0, align 4
@tx_almost_empty = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_ALMOST_FULL = common dso_local global i32 0, align 4
@tx_almost_full = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_IPG_LENGTH = common dso_local global i32 0, align 4
@tx_ipg_length = common dso_local global i32 0, align 4
@rx_cmd_stat = common dso_local global i32 0, align 4
@ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16 = common dso_local global i32 0, align 4
@tx_cmd_stat = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16 = common dso_local global i32 0, align 4
@ALTERA_TSE_TX_CMD_STAT_OMIT_CRC = common dso_local global i32 0, align 4
@command_config = common dso_local global i32 0, align 4
@MAC_CMDCFG_PAD_EN = common dso_local global i32 0, align 4
@MAC_CMDCFG_CRC_FWD = common dso_local global i32 0, align 4
@MAC_CMDCFG_RX_ERR_DISC = common dso_local global i32 0, align 4
@MAC_CMDCFG_CNTL_FRM_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_TX_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_RX_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_HD_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_ETH_SPEED = common dso_local global i32 0, align 4
@MAC_CMDCFG_ENA_10 = common dso_local global i32 0, align 4
@ALTERA_TSE_PAUSE_QUANTA = common dso_local global i32 0, align 4
@pause_quanta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MAC post-initialization: CMD_CONFIG = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_tse_private*)* @init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mac(%struct.altera_tse_private* %0) #0 {
  %2 = alloca %struct.altera_tse_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %6 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ALTERA_TSE_RX_SECTION_EMPTY, align 4
  %9 = sub i32 %7, %8
  %10 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %11 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @rx_section_empty, align 4
  %14 = call i32 @tse_csroffs(i32 %13)
  %15 = call i32 @csrwr32(i32 %9, i32 %12, i32 %14)
  %16 = load i32, i32* @ALTERA_TSE_RX_SECTION_FULL, align 4
  %17 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %18 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @rx_section_full, align 4
  %21 = call i32 @tse_csroffs(i32 %20)
  %22 = call i32 @csrwr32(i32 %16, i32 %19, i32 %21)
  %23 = load i32, i32* @ALTERA_TSE_RX_ALMOST_EMPTY, align 4
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %25 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @rx_almost_empty, align 4
  %28 = call i32 @tse_csroffs(i32 %27)
  %29 = call i32 @csrwr32(i32 %23, i32 %26, i32 %28)
  %30 = load i32, i32* @ALTERA_TSE_RX_ALMOST_FULL, align 4
  %31 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %32 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @rx_almost_full, align 4
  %35 = call i32 @tse_csroffs(i32 %34)
  %36 = call i32 @csrwr32(i32 %30, i32 %33, i32 %35)
  %37 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %38 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ALTERA_TSE_TX_SECTION_EMPTY, align 4
  %41 = sub i32 %39, %40
  %42 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %43 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @tx_section_empty, align 4
  %46 = call i32 @tse_csroffs(i32 %45)
  %47 = call i32 @csrwr32(i32 %41, i32 %44, i32 %46)
  %48 = load i32, i32* @ALTERA_TSE_TX_SECTION_FULL, align 4
  %49 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %50 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @tx_section_full, align 4
  %53 = call i32 @tse_csroffs(i32 %52)
  %54 = call i32 @csrwr32(i32 %48, i32 %51, i32 %53)
  %55 = load i32, i32* @ALTERA_TSE_TX_ALMOST_EMPTY, align 4
  %56 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %57 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @tx_almost_empty, align 4
  %60 = call i32 @tse_csroffs(i32 %59)
  %61 = call i32 @csrwr32(i32 %55, i32 %58, i32 %60)
  %62 = load i32, i32* @ALTERA_TSE_TX_ALMOST_FULL, align 4
  %63 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %64 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @tx_almost_full, align 4
  %67 = call i32 @tse_csroffs(i32 %66)
  %68 = call i32 @csrwr32(i32 %62, i32 %65, i32 %67)
  %69 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %70 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %71 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @tse_update_mac_addr(%struct.altera_tse_private* %69, i32 %74)
  %76 = load i32, i32* @ETH_HLEN, align 4
  %77 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %78 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %77, i32 0, i32 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %76, %81
  %83 = load i32, i32* @ETH_FCS_LEN, align 4
  %84 = add i32 %82, %83
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %87 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @tse_csroffs(i32 %89)
  %91 = call i32 @csrwr32(i32 %85, i32 %88, i32 %90)
  %92 = load i32, i32* @ALTERA_TSE_TX_IPG_LENGTH, align 4
  %93 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %94 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @tx_ipg_length, align 4
  %97 = call i32 @tse_csroffs(i32 %96)
  %98 = call i32 @csrwr32(i32 %92, i32 %95, i32 %97)
  %99 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %100 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @rx_cmd_stat, align 4
  %103 = call i32 @tse_csroffs(i32 %102)
  %104 = load i32, i32* @ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16, align 4
  %105 = call i32 @tse_set_bit(i32 %101, i32 %103, i32 %104)
  %106 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %107 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @tx_cmd_stat, align 4
  %110 = call i32 @tse_csroffs(i32 %109)
  %111 = load i32, i32* @ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16, align 4
  %112 = load i32, i32* @ALTERA_TSE_TX_CMD_STAT_OMIT_CRC, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @tse_clear_bit(i32 %108, i32 %110, i32 %113)
  %115 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %116 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @command_config, align 4
  %119 = call i32 @tse_csroffs(i32 %118)
  %120 = call i32 @csrrd32(i32 %117, i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* @MAC_CMDCFG_PAD_EN, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* @MAC_CMDCFG_CRC_FWD, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %3, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @MAC_CMDCFG_RX_ERR_DISC, align 4
  %130 = load i32, i32* %3, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* @MAC_CMDCFG_CNTL_FRM_ENA, align 4
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* @MAC_CMDCFG_TX_ENA, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %3, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @MAC_CMDCFG_RX_ENA, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %3, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* @MAC_CMDCFG_HD_ENA, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %3, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* @MAC_CMDCFG_ETH_SPEED, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %3, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* @MAC_CMDCFG_ENA_10, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %3, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %157 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @command_config, align 4
  %160 = call i32 @tse_csroffs(i32 %159)
  %161 = call i32 @csrwr32(i32 %155, i32 %158, i32 %160)
  %162 = load i32, i32* @ALTERA_TSE_PAUSE_QUANTA, align 4
  %163 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %164 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @pause_quanta, align 4
  %167 = call i32 @tse_csroffs(i32 %166)
  %168 = call i32 @csrwr32(i32 %162, i32 %165, i32 %167)
  %169 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %170 = call i64 @netif_msg_hw(%struct.altera_tse_private* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %1
  %173 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %174 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @dev_dbg(i32 %175, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %172, %1
  ret i32 0
}

declare dso_local i32 @csrwr32(i32, i32, i32) #1

declare dso_local i32 @tse_csroffs(i32) #1

declare dso_local i32 @tse_update_mac_addr(%struct.altera_tse_private*, i32) #1

declare dso_local i32 @tse_set_bit(i32, i32, i32) #1

declare dso_local i32 @tse_clear_bit(i32, i32, i32) #1

declare dso_local i32 @csrrd32(i32, i32) #1

declare dso_local i64 @netif_msg_hw(%struct.altera_tse_private*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
