; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_clear_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_clear_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_GLPCI_CNF2 = common dso_local global i32 0, align 4
@I40E_GLPCI_CNF2_MSI_X_PF_N_MASK = common dso_local global i32 0, align 4
@I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT = common dso_local global i32 0, align 4
@I40E_GLPCI_CNF2_MSI_X_VF_N_MASK = common dso_local global i32 0, align 4
@I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT = common dso_local global i32 0, align 4
@I40E_PFLAN_QALLOC = common dso_local global i32 0, align 4
@I40E_PFLAN_QALLOC_FIRSTQ_MASK = common dso_local global i32 0, align 4
@I40E_PFLAN_QALLOC_FIRSTQ_SHIFT = common dso_local global i32 0, align 4
@I40E_PFLAN_QALLOC_LASTQ_MASK = common dso_local global i32 0, align 4
@I40E_PFLAN_QALLOC_LASTQ_SHIFT = common dso_local global i32 0, align 4
@I40E_PFLAN_QALLOC_VALID_MASK = common dso_local global i32 0, align 4
@I40E_PF_VT_PFALLOC = common dso_local global i32 0, align 4
@I40E_PF_VT_PFALLOC_FIRSTVF_MASK = common dso_local global i32 0, align 4
@I40E_PF_VT_PFALLOC_FIRSTVF_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_VT_PFALLOC_LASTVF_MASK = common dso_local global i32 0, align 4
@I40E_PF_VT_PFALLOC_LASTVF_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_VT_PFALLOC_VALID_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0 = common dso_local global i32 0, align 4
@I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_GLLAN_TXPRE_QDIS_QINDX_MASK = common dso_local global i32 0, align 4
@I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT = common dso_local global i32 0, align 4
@I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_clear_hw(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 2047, i32* %11, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = load i32, i32* @I40E_GLPCI_CNF2, align 4
  %16 = call i32 @rd32(%struct.i40e_hw* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @I40E_GLPCI_CNF2_MSI_X_PF_N_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @I40E_GLPCI_CNF2_MSI_X_VF_N_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %28 = load i32, i32* @I40E_PFLAN_QALLOC, align 4
  %29 = call i32 @rd32(%struct.i40e_hw* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @I40E_PFLAN_QALLOC_FIRSTQ_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @I40E_PFLAN_QALLOC_FIRSTQ_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @I40E_PFLAN_QALLOC_LASTQ_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @I40E_PFLAN_QALLOC_LASTQ_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @I40E_PFLAN_QALLOC_VALID_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %52 = load i32, i32* @I40E_PF_VT_PFALLOC, align 4
  %53 = call i32 @rd32(%struct.i40e_hw* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @I40E_PF_VT_PFALLOC_FIRSTVF_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @I40E_PF_VT_PFALLOC_FIRSTVF_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @I40E_PF_VT_PFALLOC_LASTVF_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @I40E_PF_VT_PFALLOC_LASTVF_SHIFT, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @I40E_PF_VT_PFALLOC_VALID_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %76 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %77 = call i32 @wr32(%struct.i40e_hw* %75, i32 %76, i32 0)
  %78 = load i32, i32* @I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT, align 4
  %79 = shl i32 3, %78
  store i32 %79, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %91, %74
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 2
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @I40E_PFINT_DYN_CTLN(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @wr32(%struct.i40e_hw* %86, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT, align 4
  %97 = shl i32 %95, %96
  store i32 %97, i32* %10, align 4
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %99 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @wr32(%struct.i40e_hw* %98, i32 %99, i32 %100)
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %113, %94
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 2
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @I40E_PFINT_LNKLSTN(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @wr32(%struct.i40e_hw* %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %102

116:                                              ; preds = %102
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT, align 4
  %119 = shl i32 %117, %118
  store i32 %119, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %130, %116
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @I40E_VPINT_LNKLST0(i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @wr32(%struct.i40e_hw* %125, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %120

133:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %145, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %136, 2
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @I40E_VPINT_LNKLSTN(i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @wr32(%struct.i40e_hw* %140, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %134

148:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %186, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %3, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %189

153:                                              ; preds = %149
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp sge i32 %157, 128
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* %12, align 4
  %161 = sdiv i32 %160, 128
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %12, align 4
  %163 = srem i32 %162, 128
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %159, %153
  %165 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @I40E_GLLAN_TXPRE_QDIS(i32 %166)
  %168 = call i32 @rd32(%struct.i40e_hw* %165, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_QINDX_MASK, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK, align 4
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @I40E_GLLAN_TXPRE_QDIS(i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @wr32(%struct.i40e_hw* %181, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %164
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %149

189:                                              ; preds = %149
  %190 = call i32 @udelay(i32 400)
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %212, %189
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %3, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %215

195:                                              ; preds = %191
  %196 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @I40E_QINT_TQCTL(i32 %197)
  %199 = call i32 @wr32(%struct.i40e_hw* %196, i32 %198, i32 0)
  %200 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @I40E_QTX_ENA(i32 %201)
  %203 = call i32 @wr32(%struct.i40e_hw* %200, i32 %202, i32 0)
  %204 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @I40E_QINT_RQCTL(i32 %205)
  %207 = call i32 @wr32(%struct.i40e_hw* %204, i32 %206, i32 0)
  %208 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @I40E_QRX_ENA(i32 %209)
  %211 = call i32 @wr32(%struct.i40e_hw* %208, i32 %210, i32 0)
  br label %212

212:                                              ; preds = %195
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %191

215:                                              ; preds = %191
  %216 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_DYN_CTLN(i32) #1

declare dso_local i32 @I40E_PFINT_LNKLSTN(i32) #1

declare dso_local i32 @I40E_VPINT_LNKLST0(i32) #1

declare dso_local i32 @I40E_VPINT_LNKLSTN(i32) #1

declare dso_local i32 @I40E_GLLAN_TXPRE_QDIS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

declare dso_local i32 @I40E_QTX_ENA(i32) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QRX_ENA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
