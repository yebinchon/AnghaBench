; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_ena_vf_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_ena_vf_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_6__*, %struct.ice_hw, %struct.ice_vsi** }
%struct.TYPE_6__ = type { i32 }
%struct.ice_hw = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_vsi = type { i64, i32*, i32, i64, i32* }

@VPINT_ALLOC_FIRST_S = common dso_local global i32 0, align 4
@VPINT_ALLOC_FIRST_M = common dso_local global i32 0, align 4
@VPINT_ALLOC_LAST_S = common dso_local global i32 0, align 4
@VPINT_ALLOC_LAST_M = common dso_local global i32 0, align 4
@VPINT_ALLOC_VALID_M = common dso_local global i32 0, align 4
@VPINT_ALLOC_PCI_FIRST_S = common dso_local global i32 0, align 4
@VPINT_ALLOC_PCI_FIRST_M = common dso_local global i32 0, align 4
@VPINT_ALLOC_PCI_LAST_S = common dso_local global i32 0, align 4
@VPINT_ALLOC_PCI_LAST_M = common dso_local global i32 0, align 4
@VPINT_ALLOC_PCI_VALID_M = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_VF_NUM_S = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_VF_NUM_M = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_PF_NUM_S = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_PF_NUM_M = common dso_local global i32 0, align 4
@VPINT_MBX_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@VPLAN_TXQ_MAPENA_TX_ENA_M = common dso_local global i32 0, align 4
@ICE_VSI_MAP_CONTIG = common dso_local global i64 0, align 8
@VPLAN_TX_QBASE_VFFIRSTQ_S = common dso_local global i32 0, align 4
@VPLAN_TX_QBASE_VFFIRSTQ_M = common dso_local global i32 0, align 4
@VPLAN_TX_QBASE_VFNUMQ_S = common dso_local global i32 0, align 4
@VPLAN_TX_QBASE_VFNUMQ_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Scattered mode for VF Tx queues is not yet implemented\0A\00", align 1
@VPLAN_RXQ_MAPENA_RX_ENA_M = common dso_local global i32 0, align 4
@VPLAN_RX_QBASE_VFFIRSTQ_S = common dso_local global i32 0, align 4
@VPLAN_RX_QBASE_VFFIRSTQ_M = common dso_local global i32 0, align 4
@VPLAN_RX_QBASE_VFNUMQ_S = common dso_local global i32 0, align 4
@VPLAN_RX_QBASE_VFNUMQ_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Scattered mode for VF Rx queues is not yet implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_ena_vf_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_ena_vf_mappings(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_hw*, align 8
  %12 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %13 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %14 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %13, i32 0, i32 3
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  store %struct.ice_pf* %15, %struct.ice_pf** %6, align 8
  %16 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 2
  store %struct.ice_hw* %17, %struct.ice_hw** %11, align 8
  %18 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %19 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %18, i32 0, i32 3
  %20 = load %struct.ice_vsi**, %struct.ice_vsi*** %19, align 8
  %21 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %22 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %20, i64 %23
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %24, align 8
  store %struct.ice_vsi* %25, %struct.ice_vsi** %7, align 8
  %26 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %27 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %31 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %35, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %50 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %53 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @VPINT_ALLOC_FIRST_S, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @VPINT_ALLOC_FIRST_M, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VPINT_ALLOC_LAST_S, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @VPINT_ALLOC_LAST_M, align 4
  %66 = and i32 %64, %65
  %67 = or i32 %61, %66
  %68 = load i32, i32* @VPINT_ALLOC_VALID_M, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %71 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %72 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VPINT_ALLOC(i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @wr32(%struct.ice_hw* %70, i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @VPINT_ALLOC_PCI_FIRST_S, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* @VPINT_ALLOC_PCI_FIRST_M, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @VPINT_ALLOC_PCI_LAST_S, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* @VPINT_ALLOC_PCI_LAST_M, align 4
  %86 = and i32 %84, %85
  %87 = or i32 %81, %86
  %88 = load i32, i32* @VPINT_ALLOC_PCI_VALID_M, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %91 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %92 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VPINT_ALLOC_PCI(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @wr32(%struct.ice_hw* %90, i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %121, %1
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @GLINT_VECT2FUNC_VF_NUM_S, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* @GLINT_VECT2FUNC_VF_NUM_M, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %109 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @GLINT_VECT2FUNC_PF_NUM_S, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @GLINT_VECT2FUNC_PF_NUM_M, align 4
  %114 = and i32 %112, %113
  %115 = or i32 %107, %114
  store i32 %115, i32* %12, align 4
  %116 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @GLINT_VECT2FUNC(i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @wr32(%struct.ice_hw* %116, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %98

124:                                              ; preds = %98
  %125 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @VPINT_MBX_CTL(i32 %126)
  %128 = load i32, i32* @VPINT_MBX_CTL_CAUSE_ENA_M, align 4
  %129 = call i32 @wr32(%struct.ice_hw* %125, i32 %127, i32 %128)
  %130 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %131 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %132 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @VPLAN_TXQ_MAPENA(i32 %133)
  %135 = load i32, i32* @VPLAN_TXQ_MAPENA_TX_ENA_M, align 4
  %136 = call i32 @wr32(%struct.ice_hw* %130, i32 %134, i32 %135)
  %137 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %138 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ICE_VSI_MAP_CONTIG, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %124
  %143 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %144 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @VPLAN_TX_QBASE_VFFIRSTQ_S, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* @VPLAN_TX_QBASE_VFFIRSTQ_M, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %153 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* @VPLAN_TX_QBASE_VFNUMQ_S, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* @VPLAN_TX_QBASE_VFNUMQ_M, align 4
  %159 = and i32 %157, %158
  %160 = or i32 %151, %159
  store i32 %160, i32* %12, align 4
  %161 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %162 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %163 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @VPLAN_TX_QBASE(i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @wr32(%struct.ice_hw* %161, i32 %165, i32 %166)
  br label %174

168:                                              ; preds = %124
  %169 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %170 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = call i32 @dev_err(i32* %172, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %174

174:                                              ; preds = %168, %142
  %175 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %176 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %177 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @VPLAN_RXQ_MAPENA(i32 %178)
  %180 = load i32, i32* @VPLAN_RXQ_MAPENA_RX_ENA_M, align 4
  %181 = call i32 @wr32(%struct.ice_hw* %175, i32 %179, i32 %180)
  %182 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %183 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @ICE_VSI_MAP_CONTIG, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %213

187:                                              ; preds = %174
  %188 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %189 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @VPLAN_RX_QBASE_VFFIRSTQ_S, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* @VPLAN_RX_QBASE_VFFIRSTQ_M, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %198 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, 1
  %201 = load i32, i32* @VPLAN_RX_QBASE_VFNUMQ_S, align 4
  %202 = shl i32 %200, %201
  %203 = load i32, i32* @VPLAN_RX_QBASE_VFNUMQ_M, align 4
  %204 = and i32 %202, %203
  %205 = or i32 %196, %204
  store i32 %205, i32* %12, align 4
  %206 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %207 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %208 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @VPLAN_RX_QBASE(i32 %209)
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @wr32(%struct.ice_hw* %206, i32 %210, i32 %211)
  br label %219

213:                                              ; preds = %174
  %214 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %215 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %214, i32 0, i32 1
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = call i32 @dev_err(i32* %217, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %219

219:                                              ; preds = %213, %187
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @VPINT_ALLOC(i32) #1

declare dso_local i32 @VPINT_ALLOC_PCI(i32) #1

declare dso_local i32 @GLINT_VECT2FUNC(i32) #1

declare dso_local i32 @VPINT_MBX_CTL(i32) #1

declare dso_local i32 @VPLAN_TXQ_MAPENA(i32) #1

declare dso_local i32 @VPLAN_TX_QBASE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @VPLAN_RXQ_MAPENA(i32) #1

declare dso_local i32 @VPLAN_RX_QBASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
