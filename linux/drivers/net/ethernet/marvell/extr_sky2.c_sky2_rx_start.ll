; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, i32, %struct.rx_ring_info*, %struct.TYPE_2__*, i32, i64, i64, %struct.sky2_hw* }
%struct.rx_ring_info = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sky2_hw = type { i64, i64, i32, i32 }

@rxqaddr = common dso_local global i32* null, align 8
@Q_WM = common dso_local global i32 0, align 4
@BMU_WM_PEX = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@CHIP_REV_YU_EC_U_A0 = common dso_local global i64 0, align 8
@Q_TEST = common dso_local global i32 0, align 4
@F_M_RX_RAM_DIS = common dso_local global i32 0, align 4
@RX_LE_SIZE = common dso_local global i64 0, align 8
@SKY2_HW_NEW_LE = common dso_local global i32 0, align 4
@SKY2_HW_RSS_BROKEN = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@RX_TRUNC_OFF = common dso_local global i32 0, align 4
@RX_GMF_TR_THR = common dso_local global i32 0, align 4
@RX_TRUNC_ON = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_SUPR = common dso_local global i64 0, align 8
@RX_MACSEC_FLUSH_OFF = common dso_local global i32 0, align 4
@RX_GMF_FL_CTRL = common dso_local global i32 0, align 4
@RX_IPV6_SA_MOB_ENA = common dso_local global i32 0, align 4
@RX_IPV6_DA_MOB_ENA = common dso_local global i32 0, align 4
@txqaddr = common dso_local global i32* null, align 8
@TBMU_TEST_HOME_ADD_FIX_EN = common dso_local global i32 0, align 4
@TBMU_TEST_ROUTING_ADD_FIX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_rx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_rx_start(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %8 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 7
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %9, align 8
  store %struct.sky2_hw* %10, %struct.sky2_hw** %3, align 8
  %11 = load i32*, i32** @rxqaddr, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %18 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sky2_qset(%struct.sky2_hw* %21, i32 %22)
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %25 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pci_is_pcie(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @Q_WM, align 4
  %33 = call i32 @Q_ADDR(i32 %31, i32 %32)
  %34 = load i32, i32* @BMU_WM_PEX, align 4
  %35 = call i32 @sky2_write32(%struct.sky2_hw* %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %38 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %44 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHIP_REV_YU_EC_U_A0, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @Q_TEST, align 4
  %52 = call i32 @Q_ADDR(i32 %50, i32 %51)
  %53 = load i32, i32* @F_M_RX_RAM_DIS, align 4
  %54 = call i32 @sky2_write32(%struct.sky2_hw* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %42, %36
  %56 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %59 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @RX_LE_SIZE, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @sky2_prefetch_init(%struct.sky2_hw* %56, i32 %57, i32 %60, i64 %62)
  %64 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %65 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SKY2_HW_NEW_LE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %55
  %71 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %72 = call i32 @rx_set_checksum(%struct.sky2_port* %71)
  br label %73

73:                                               ; preds = %70, %55
  %74 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %75 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SKY2_HW_RSS_BROKEN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %73
  %81 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %82 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %85 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rx_set_rss(%struct.TYPE_2__* %83, i32 %88)
  br label %90

90:                                               ; preds = %80, %73
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %107, %90
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %94 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %99 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %98, i32 0, i32 2
  %100 = load %struct.rx_ring_info*, %struct.rx_ring_info** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %100, i64 %102
  store %struct.rx_ring_info* %103, %struct.rx_ring_info** %4, align 8
  %104 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %105 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %106 = call i32 @sky2_rx_submit(%struct.sky2_port* %104, %struct.rx_ring_info* %105)
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %91

110:                                              ; preds = %91
  %111 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %112 = call i32 @sky2_get_rx_threshold(%struct.sky2_port* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ugt i32 %113, 511
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %117 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %118 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %121 = call i32 @SK_REG(i64 %119, i32 %120)
  %122 = load i32, i32* @RX_TRUNC_OFF, align 4
  %123 = call i32 @sky2_write32(%struct.sky2_hw* %116, i32 %121, i32 %122)
  br label %141

124:                                              ; preds = %110
  %125 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %126 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %127 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @RX_GMF_TR_THR, align 4
  %130 = call i32 @SK_REG(i64 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @sky2_write16(%struct.sky2_hw* %125, i32 %130, i32 %131)
  %133 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %134 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %135 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %138 = call i32 @SK_REG(i64 %136, i32 %137)
  %139 = load i32, i32* @RX_TRUNC_ON, align 4
  %140 = call i32 @sky2_write32(%struct.sky2_hw* %133, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %124, %115
  %142 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @sky2_rx_update(%struct.sky2_port* %142, i32 %143)
  %145 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %146 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %141
  %151 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %152 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150, %141
  %157 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %158 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %159 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %162 = call i32 @SK_REG(i64 %160, i32 %161)
  %163 = load i32, i32* @RX_MACSEC_FLUSH_OFF, align 4
  %164 = call i32 @sky2_write32(%struct.sky2_hw* %157, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %150
  %166 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %167 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %165
  %172 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %173 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %174 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @RX_GMF_FL_CTRL, align 4
  %177 = call i32 @SK_REG(i64 %175, i32 %176)
  %178 = load i32, i32* @RX_IPV6_SA_MOB_ENA, align 4
  %179 = load i32, i32* @RX_IPV6_DA_MOB_ENA, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @sky2_write16(%struct.sky2_hw* %172, i32 %177, i32 %180)
  %182 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %183 = load i32*, i32** @txqaddr, align 8
  %184 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %185 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @Q_TEST, align 4
  %190 = call i32 @Q_ADDR(i32 %188, i32 %189)
  %191 = load i32, i32* @TBMU_TEST_HOME_ADD_FIX_EN, align 4
  %192 = load i32, i32* @TBMU_TEST_ROUTING_ADD_FIX_EN, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @sky2_write32(%struct.sky2_hw* %182, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %171, %165
  ret void
}

declare dso_local i32 @sky2_qset(%struct.sky2_hw*, i32) #1

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @sky2_prefetch_init(%struct.sky2_hw*, i32, i32, i64) #1

declare dso_local i32 @rx_set_checksum(%struct.sky2_port*) #1

declare dso_local i32 @rx_set_rss(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @sky2_rx_submit(%struct.sky2_port*, %struct.rx_ring_info*) #1

declare dso_local i32 @sky2_get_rx_threshold(%struct.sky2_port*) #1

declare dso_local i32 @SK_REG(i64, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_rx_update(%struct.sky2_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
