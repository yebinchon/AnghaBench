; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_init_hw_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_init_hw_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@fm10k_dglort_default = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_ANY = common dso_local global i32 0, align 4
@FM10K_DGLORT_COUNT = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_NONE = common dso_local global i32 0, align 4
@FM10K_ITR_REG_COUNT_PF = common dso_local global i32 0, align 4
@FM10K_INT_CTRL = common dso_local global i32 0, align 4
@FM10K_INT_CTRL_ENABLEMODERATOR = common dso_local global i32 0, align 4
@FM10K_TXQCTL_PF = common dso_local global i32 0, align 4
@FM10K_TXQCTL_UNLIMITED_BW = common dso_local global i32 0, align 4
@FM10K_TXQCTL_VID_SHIFT = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES = common dso_local global i32 0, align 4
@FM10K_TQDLOC_BASE_32_DESC = common dso_local global i32 0, align 4
@FM10K_TQDLOC_SIZE_32_DESC = common dso_local global i32 0, align 4
@FM10K_TPH_TXCTRL_DESC_TPHEN = common dso_local global i32 0, align 4
@FM10K_TPH_TXCTRL_DESC_RROEN = common dso_local global i32 0, align 4
@FM10K_TPH_TXCTRL_DESC_WROEN = common dso_local global i32 0, align 4
@FM10K_TPH_TXCTRL_DATA_RROEN = common dso_local global i32 0, align 4
@FM10K_TPH_RXCTRL_DESC_TPHEN = common dso_local global i32 0, align 4
@FM10K_TPH_RXCTRL_DESC_RROEN = common dso_local global i32 0, align 4
@FM10K_TPH_RXCTRL_DATA_WROEN = common dso_local global i32 0, align 4
@FM10K_TPH_RXCTRL_HDR_WROEN = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_MAX_HOLD_1US_GEN1 = common dso_local global i32 0, align 4
@FM10K_TDLEN_ITR_SCALE_GEN1 = common dso_local global i8* null, align 8
@FM10K_DMA_CTRL_MAX_HOLD_1US_GEN2 = common dso_local global i32 0, align 4
@FM10K_TDLEN_ITR_SCALE_GEN2 = common dso_local global i8* null, align 8
@FM10K_DMA_CTRL_MAX_HOLD_1US_GEN3 = common dso_local global i32 0, align 4
@FM10K_TDLEN_ITR_SCALE_GEN3 = common dso_local global i8* null, align 8
@FM10K_DTXTCPFLGL = common dso_local global i32 0, align 4
@FM10K_TSO_FLAGS_LOW = common dso_local global i32 0, align 4
@FM10K_DTXTCPFLGH = common dso_local global i32 0, align 4
@FM10K_TSO_FLAGS_HI = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_TX_ENABLE = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_RX_ENABLE = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_RX_DESC_SIZE = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_MINMSS_64 = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_32_DESC = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*)* @fm10k_init_hw_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_init_hw_pf(%struct.fm10k_hw* %0) #0 {
  %2 = alloca %struct.fm10k_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %2, align 8
  %6 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %7 = load i32, i32* @fm10k_dglort_default, align 4
  %8 = call i32 @FM10K_DGLORTDEC(i32 %7)
  %9 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %6, i32 %8, i32 0)
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %11 = load i32, i32* @fm10k_dglort_default, align 4
  %12 = call i32 @FM10K_DGLORTMAP(i32 %11)
  %13 = load i32, i32* @FM10K_DGLORTMAP_ANY, align 4
  %14 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %10, i32 %12, i32 %13)
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %25, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FM10K_DGLORT_COUNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @FM10K_DGLORTMAP(i32 %21)
  %23 = load i32, i32* @FM10K_DGLORTMAP_NONE, align 4
  %24 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %30 = call i32 @FM10K_ITR2(i32 0)
  %31 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %29, i32 %30, i32 0)
  %32 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %33 = load i32, i32* @FM10K_ITR_REG_COUNT_PF, align 4
  %34 = call i32 @FM10K_ITR2(i32 %33)
  %35 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %32, i32 %34, i32 0)
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %47, %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FM10K_ITR_REG_COUNT_PF, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @FM10K_ITR2(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %41, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %52 = load i32, i32* @FM10K_INT_CTRL, align 4
  %53 = load i32, i32* @FM10K_INT_CTRL_ENABLEMODERATOR, align 4
  %54 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @FM10K_TXQCTL_PF, align 4
  %56 = load i32, i32* @FM10K_TXQCTL_UNLIMITED_BW, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %59 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FM10K_TXQCTL_VID_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %57, %63
  store i32 %64, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %106, %50
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @FM10K_MAX_QUEUES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %65
  %70 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @FM10K_TQDLOC(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @FM10K_TQDLOC_BASE_32_DESC, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* @FM10K_TQDLOC_SIZE_32_DESC, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %70, i32 %72, i32 %77)
  %79 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @FM10K_TXQCTL(i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %79, i32 %81, i32 %82)
  %84 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @FM10K_TPH_TXCTRL(i32 %85)
  %87 = load i32, i32* @FM10K_TPH_TXCTRL_DESC_TPHEN, align 4
  %88 = load i32, i32* @FM10K_TPH_TXCTRL_DESC_RROEN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @FM10K_TPH_TXCTRL_DESC_WROEN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @FM10K_TPH_TXCTRL_DATA_RROEN, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %84, i32 %86, i32 %93)
  %95 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @FM10K_TPH_RXCTRL(i32 %96)
  %98 = load i32, i32* @FM10K_TPH_RXCTRL_DESC_TPHEN, align 4
  %99 = load i32, i32* @FM10K_TPH_RXCTRL_DESC_RROEN, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @FM10K_TPH_RXCTRL_DATA_WROEN, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @FM10K_TPH_RXCTRL_HDR_WROEN, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %95, i32 %97, i32 %104)
  br label %106

106:                                              ; preds = %69
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %65

109:                                              ; preds = %65
  %110 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %111 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %132 [
    i32 130, label %114
    i32 129, label %120
    i32 128, label %126
  ]

114:                                              ; preds = %109
  %115 = load i32, i32* @FM10K_DMA_CTRL_MAX_HOLD_1US_GEN1, align 4
  store i32 %115, i32* %3, align 4
  %116 = load i8*, i8** @FM10K_TDLEN_ITR_SCALE_GEN1, align 8
  %117 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %118 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i8* %116, i8** %119, align 8
  br label %137

120:                                              ; preds = %109
  %121 = load i32, i32* @FM10K_DMA_CTRL_MAX_HOLD_1US_GEN2, align 4
  store i32 %121, i32* %3, align 4
  %122 = load i8*, i8** @FM10K_TDLEN_ITR_SCALE_GEN2, align 8
  %123 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %124 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  br label %137

126:                                              ; preds = %109
  %127 = load i32, i32* @FM10K_DMA_CTRL_MAX_HOLD_1US_GEN3, align 4
  store i32 %127, i32* %3, align 4
  %128 = load i8*, i8** @FM10K_TDLEN_ITR_SCALE_GEN3, align 8
  %129 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %130 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i8* %128, i8** %131, align 8
  br label %137

132:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  %133 = load i8*, i8** @FM10K_TDLEN_ITR_SCALE_GEN3, align 8
  %134 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %135 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i8* %133, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %126, %120, %114
  %138 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %139 = load i32, i32* @FM10K_DTXTCPFLGL, align 4
  %140 = load i32, i32* @FM10K_TSO_FLAGS_LOW, align 4
  %141 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %138, i32 %139, i32 %140)
  %142 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %143 = load i32, i32* @FM10K_DTXTCPFLGH, align 4
  %144 = load i32, i32* @FM10K_TSO_FLAGS_HI, align 4
  %145 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %142, i32 %143, i32 %144)
  %146 = load i32, i32* @FM10K_DMA_CTRL_TX_ENABLE, align 4
  %147 = load i32, i32* @FM10K_DMA_CTRL_RX_ENABLE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @FM10K_DMA_CTRL_RX_DESC_SIZE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @FM10K_DMA_CTRL_MINMSS_64, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @FM10K_DMA_CTRL_32_DESC, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %3, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %3, align 4
  %157 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %158 = load i32, i32* @FM10K_DMA_CTRL, align 4
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @FM10K_MAX_QUEUES_PF, align 4
  %162 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %163 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %166 = call i64 @fm10k_is_ari_hierarchy_pf(%struct.fm10k_hw* %165)
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 64, i32 7
  %170 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %171 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  ret i32 0
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_DGLORTDEC(i32) #1

declare dso_local i32 @FM10K_DGLORTMAP(i32) #1

declare dso_local i32 @FM10K_ITR2(i32) #1

declare dso_local i32 @FM10K_TQDLOC(i32) #1

declare dso_local i32 @FM10K_TXQCTL(i32) #1

declare dso_local i32 @FM10K_TPH_TXCTRL(i32) #1

declare dso_local i32 @FM10K_TPH_RXCTRL(i32) #1

declare dso_local i64 @fm10k_is_ari_hierarchy_pf(%struct.fm10k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
