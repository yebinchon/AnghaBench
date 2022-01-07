; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_slow_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_slow_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PL_INT_CAUSE_A = common dso_local global i32 0, align 4
@PL_INT_ENABLE_A = common dso_local global i32 0, align 4
@GLBL_INTR_MASK = common dso_local global i32 0, align 4
@CIM_F = common dso_local global i32 0, align 4
@MPS_F = common dso_local global i32 0, align 4
@NCSI_F = common dso_local global i32 0, align 4
@PL_F = common dso_local global i32 0, align 4
@SMB_F = common dso_local global i32 0, align 4
@XGMAC0_F = common dso_local global i32 0, align 4
@XGMAC1_F = common dso_local global i32 0, align 4
@XGMAC_KR0_F = common dso_local global i32 0, align 4
@XGMAC_KR1_F = common dso_local global i32 0, align 4
@PCIE_F = common dso_local global i32 0, align 4
@MC_F = common dso_local global i32 0, align 4
@MEM_MC = common dso_local global i32 0, align 4
@MC1_F = common dso_local global i32 0, align 4
@MEM_MC1 = common dso_local global i32 0, align 4
@EDC0_F = common dso_local global i32 0, align 4
@MEM_EDC0 = common dso_local global i32 0, align 4
@EDC1_F = common dso_local global i32 0, align 4
@MEM_EDC1 = common dso_local global i32 0, align 4
@LE_F = common dso_local global i32 0, align 4
@TP_F = common dso_local global i32 0, align 4
@MA_F = common dso_local global i32 0, align 4
@PM_TX_F = common dso_local global i32 0, align 4
@PM_RX_F = common dso_local global i32 0, align 4
@ULP_RX_F = common dso_local global i32 0, align 4
@CPL_SWITCH_F = common dso_local global i32 0, align 4
@SGE_F = common dso_local global i32 0, align 4
@ULP_TX_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_slow_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = load i32, i32* @PL_INT_CAUSE_A, align 4
  %9 = call i32 @t4_read_reg(%struct.adapter* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load i32, i32* @PL_INT_ENABLE_A, align 4
  %12 = call i32 @t4_read_reg(%struct.adapter* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GLBL_INTR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %226

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CIM_F, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = call i32 @cim_intr_handler(%struct.adapter* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MPS_F, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = call i32 @mps_intr_handler(%struct.adapter* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NCSI_F, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = call i32 @ncsi_intr_handler(%struct.adapter* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PL_F, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = call i32 @pl_intr_handler(%struct.adapter* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SMB_F, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = call i32 @smb_intr_handler(%struct.adapter* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @XGMAC0_F, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = call i32 @xgmac_intr_handler(%struct.adapter* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @XGMAC1_F, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = call i32 @xgmac_intr_handler(%struct.adapter* %75, i32 1)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @XGMAC_KR0_F, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = call i32 @xgmac_intr_handler(%struct.adapter* %83, i32 2)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @XGMAC_KR1_F, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = call i32 @xgmac_intr_handler(%struct.adapter* %91, i32 3)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PCIE_F, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = call i32 @pcie_intr_handler(%struct.adapter* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MC_F, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = load i32, i32* @MEM_MC, align 4
  %109 = call i32 @mem_intr_handler(%struct.adapter* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @is_t5(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %110
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @MC1_F, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = load i32, i32* @MEM_MC1, align 4
  %125 = call i32 @mem_intr_handler(%struct.adapter* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %117, %110
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @EDC0_F, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.adapter*, %struct.adapter** %3, align 8
  %133 = load i32, i32* @MEM_EDC0, align 4
  %134 = call i32 @mem_intr_handler(%struct.adapter* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @EDC1_F, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.adapter*, %struct.adapter** %3, align 8
  %142 = load i32, i32* @MEM_EDC1, align 4
  %143 = call i32 @mem_intr_handler(%struct.adapter* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @LE_F, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.adapter*, %struct.adapter** %3, align 8
  %151 = call i32 @le_intr_handler(%struct.adapter* %150)
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @TP_F, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.adapter*, %struct.adapter** %3, align 8
  %159 = call i32 @tp_intr_handler(%struct.adapter* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @MA_F, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.adapter*, %struct.adapter** %3, align 8
  %167 = call i32 @ma_intr_handler(%struct.adapter* %166)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @PM_TX_F, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.adapter*, %struct.adapter** %3, align 8
  %175 = call i32 @pmtx_intr_handler(%struct.adapter* %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @PM_RX_F, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.adapter*, %struct.adapter** %3, align 8
  %183 = call i32 @pmrx_intr_handler(%struct.adapter* %182)
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @ULP_RX_F, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.adapter*, %struct.adapter** %3, align 8
  %191 = call i32 @ulprx_intr_handler(%struct.adapter* %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @CPL_SWITCH_F, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.adapter*, %struct.adapter** %3, align 8
  %199 = call i32 @cplsw_intr_handler(%struct.adapter* %198)
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @SGE_F, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.adapter*, %struct.adapter** %3, align 8
  %207 = call i32 @sge_intr_handler(%struct.adapter* %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @ULP_TX_F, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.adapter*, %struct.adapter** %3, align 8
  %215 = call i32 @ulptx_intr_handler(%struct.adapter* %214)
  br label %216

216:                                              ; preds = %213, %208
  %217 = load %struct.adapter*, %struct.adapter** %3, align 8
  %218 = load i32, i32* @PL_INT_CAUSE_A, align 4
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @GLBL_INTR_MASK, align 4
  %221 = and i32 %219, %220
  %222 = call i32 @t4_write_reg(%struct.adapter* %217, i32 %218, i32 %221)
  %223 = load %struct.adapter*, %struct.adapter** %3, align 8
  %224 = load i32, i32* @PL_INT_CAUSE_A, align 4
  %225 = call i32 @t4_read_reg(%struct.adapter* %223, i32 %224)
  store i32 1, i32* %2, align 4
  br label %226

226:                                              ; preds = %216, %20
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @cim_intr_handler(%struct.adapter*) #1

declare dso_local i32 @mps_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ncsi_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pl_intr_handler(%struct.adapter*) #1

declare dso_local i32 @smb_intr_handler(%struct.adapter*) #1

declare dso_local i32 @xgmac_intr_handler(%struct.adapter*, i32) #1

declare dso_local i32 @pcie_intr_handler(%struct.adapter*) #1

declare dso_local i32 @mem_intr_handler(%struct.adapter*, i32) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i32 @le_intr_handler(%struct.adapter*) #1

declare dso_local i32 @tp_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ma_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pmtx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pmrx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ulprx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @cplsw_intr_handler(%struct.adapter*) #1

declare dso_local i32 @sge_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ulptx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
