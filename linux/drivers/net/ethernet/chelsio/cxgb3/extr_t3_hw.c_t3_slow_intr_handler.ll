; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_slow_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_slow_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32 }

@A_PL_INT_CAUSE0 = common dso_local global i32 0, align 4
@F_PCIM0 = common dso_local global i32 0, align 4
@F_SGE3 = common dso_local global i32 0, align 4
@F_MC7_PMRX = common dso_local global i32 0, align 4
@F_MC7_PMTX = common dso_local global i32 0, align 4
@F_MC7_CM = common dso_local global i32 0, align 4
@F_CIM = common dso_local global i32 0, align 4
@F_TP1 = common dso_local global i32 0, align 4
@F_ULP2_RX = common dso_local global i32 0, align 4
@F_ULP2_TX = common dso_local global i32 0, align 4
@F_PM1_RX = common dso_local global i32 0, align 4
@F_PM1_TX = common dso_local global i32 0, align 4
@F_CPL_SWITCH = common dso_local global i32 0, align 4
@F_MPS0 = common dso_local global i32 0, align 4
@F_MC5A = common dso_local global i32 0, align 4
@F_XGMAC0_0 = common dso_local global i32 0, align 4
@F_XGMAC0_1 = common dso_local global i32 0, align 4
@F_T3DBG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_slow_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load i32, i32* @A_PL_INT_CAUSE0, align 4
  %7 = call i32 @t3_read_reg(%struct.adapter* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @F_PCIM0, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = call i64 @is_pcie(%struct.adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = call i32 @pcie_intr_handler(%struct.adapter* %26)
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = call i32 @pci_intr_handler(%struct.adapter* %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @F_SGE3, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = call i32 @t3_sge_err_intr_handler(%struct.adapter* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @F_MC7_PMRX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 4
  %48 = call i32 @mc7_intr_handler(i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @F_MC7_PMTX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 3
  %57 = call i32 @mc7_intr_handler(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @F_MC7_CM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 2
  %66 = call i32 @mc7_intr_handler(i32* %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @F_CIM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = call i32 @cim_intr_handler(%struct.adapter* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @F_TP1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = call i32 @tp_intr_handler(%struct.adapter* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @F_ULP2_RX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = call i32 @ulprx_intr_handler(%struct.adapter* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @F_ULP2_TX, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.adapter*, %struct.adapter** %3, align 8
  %98 = call i32 @ulptx_intr_handler(%struct.adapter* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @F_PM1_RX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = call i32 @pmrx_intr_handler(%struct.adapter* %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @F_PM1_TX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = call i32 @pmtx_intr_handler(%struct.adapter* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @F_CPL_SWITCH, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.adapter*, %struct.adapter** %3, align 8
  %122 = call i32 @cplsw_intr_handler(%struct.adapter* %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @F_MPS0, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.adapter*, %struct.adapter** %3, align 8
  %130 = call i32 @mps_intr_handler(%struct.adapter* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @F_MC5A, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 1
  %139 = call i32 @t3_mc5_intr_handler(i32* %138)
  br label %140

140:                                              ; preds = %136, %131
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @F_XGMAC0_0, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = call i32 @mac_intr_handler(%struct.adapter* %146, i32 0)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @F_XGMAC0_1, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.adapter*, %struct.adapter** %3, align 8
  %155 = call i32 @mac_intr_handler(%struct.adapter* %154, i32 1)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @F_T3DBG, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.adapter*, %struct.adapter** %3, align 8
  %163 = call i32 @t3_os_ext_intr_handler(%struct.adapter* %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.adapter*, %struct.adapter** %3, align 8
  %166 = load i32, i32* @A_PL_INT_CAUSE0, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @t3_write_reg(%struct.adapter* %165, i32 %166, i32 %167)
  %169 = load %struct.adapter*, %struct.adapter** %3, align 8
  %170 = load i32, i32* @A_PL_INT_CAUSE0, align 4
  %171 = call i32 @t3_read_reg(%struct.adapter* %169, i32 %170)
  store i32 1, i32* %2, align 4
  br label %172

172:                                              ; preds = %164, %15
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_pcie(%struct.adapter*) #1

declare dso_local i32 @pcie_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pci_intr_handler(%struct.adapter*) #1

declare dso_local i32 @t3_sge_err_intr_handler(%struct.adapter*) #1

declare dso_local i32 @mc7_intr_handler(i32*) #1

declare dso_local i32 @cim_intr_handler(%struct.adapter*) #1

declare dso_local i32 @tp_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ulprx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ulptx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pmrx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pmtx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @cplsw_intr_handler(%struct.adapter*) #1

declare dso_local i32 @mps_intr_handler(%struct.adapter*) #1

declare dso_local i32 @t3_mc5_intr_handler(i32*) #1

declare dso_local i32 @mac_intr_handler(%struct.adapter*, i32) #1

declare dso_local i32 @t3_os_ext_intr_handler(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
