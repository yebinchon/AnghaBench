; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, i32, i32, %struct.TYPE_7__**, %struct.TYPE_5__**, %struct.i40e_q_vector**, %struct.i40e_pf* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_q_vector = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@I40E_RX_ITR = common dso_local global i32 0, align 4
@I40E_TX_ITR = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_MSIX_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_TX = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_MSIX_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_RX = common dso_local global i32 0, align 4
@I40E_QUEUE_END_OF_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_configure_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_configure_msix(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_q_vector*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %14 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %4, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 0
  store %struct.i40e_hw* %19, %struct.i40e_hw** %5, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %236, %1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %241

32:                                               ; preds = %26
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 7
  %35 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %35, i64 %37
  %39 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %38, align 8
  store %struct.i40e_q_vector* %39, %struct.i40e_q_vector** %10, align 8
  %40 = load i8*, i8** @jiffies, align 8
  %41 = getelementptr i8, i8* %40, i64 1
  %42 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %43 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %46 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %45, i32 0, i32 6
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ITR_TO_REG(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %57 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %60 = load i32, i32* @I40E_RX_ITR, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @I40E_PFINT_ITRN(i32 %60, i32 %62)
  %64 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %65 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wr32(%struct.i40e_hw* %59, i32 %63, i32 %67)
  %69 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %70 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %74 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i8*, i8** @jiffies, align 8
  %77 = getelementptr i8, i8* %76, i64 1
  %78 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %79 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %82 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %81, i32 0, i32 5
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ITR_TO_REG(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %93 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %96 = load i32, i32* @I40E_TX_ITR, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @I40E_PFINT_ITRN(i32 %96, i32 %98)
  %100 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %101 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @wr32(%struct.i40e_hw* %95, i32 %99, i32 %103)
  %105 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %106 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %110 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @I40E_PFINT_RATEN(i32 %114)
  %116 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %117 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @i40e_intrl_usec_to_reg(i32 %118)
  %120 = call i32 @wr32(%struct.i40e_hw* %112, i32 %115, i32 %119)
  %121 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @I40E_PFINT_LNKLSTN(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @wr32(%struct.i40e_hw* %121, i32 %124, i32 %125)
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %232, %32
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %130 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %235

133:                                              ; preds = %127
  %134 = load i32, i32* %3, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %139 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  br label %144

142:                                              ; preds = %133
  %143 = load i32, i32* %9, align 4
  br label %144

144:                                              ; preds = %142, %136
  %145 = phi i32 [ %141, %136 ], [ %143, %142 ]
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %147 = load i32, i32* @I40E_RX_ITR, align 4
  %148 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = or i32 %146, %149
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @I40E_QINT_RQCTL_MSIX_INDX_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = or i32 %150, %153
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  %159 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  %160 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = or i32 %158, %161
  store i32 %162, i32* %12, align 4
  %163 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @I40E_QINT_RQCTL(i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @wr32(%struct.i40e_hw* %163, i32 %165, i32 %166)
  %168 = load i32, i32* %3, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %144
  %171 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %172 = load i32, i32* @I40E_TX_ITR, align 4
  %173 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_SHIFT, align 4
  %174 = shl i32 %172, %173
  %175 = or i32 %171, %174
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @I40E_QINT_TQCTL_MSIX_INDX_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = or i32 %175, %178
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = or i32 %179, %182
  %184 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  %185 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = or i32 %183, %186
  store i32 %187, i32* %12, align 4
  %188 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @I40E_QINT_TQCTL(i32 %189)
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @wr32(%struct.i40e_hw* %188, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %170, %144
  %194 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %195 = load i32, i32* @I40E_TX_ITR, align 4
  %196 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = or i32 %194, %197
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @I40E_QINT_TQCTL_MSIX_INDX_SHIFT, align 4
  %201 = shl i32 %199, %200
  %202 = or i32 %198, %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %206 = shl i32 %204, %205
  %207 = or i32 %202, %206
  %208 = load i32, i32* @I40E_QUEUE_TYPE_RX, align 4
  %209 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT, align 4
  %210 = shl i32 %208, %209
  %211 = or i32 %207, %210
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %10, align 8
  %214 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %215, 1
  %217 = icmp eq i32 %212, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %193
  %219 = load i32, i32* @I40E_QUEUE_END_OF_LIST, align 4
  %220 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %221 = shl i32 %219, %220
  %222 = load i32, i32* %12, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %218, %193
  %225 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @I40E_QINT_TQCTL(i32 %226)
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @wr32(%struct.i40e_hw* %225, i32 %227, i32 %228)
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %9, align 4
  br label %232

232:                                              ; preds = %224
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %127

235:                                              ; preds = %127
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %26

241:                                              ; preds = %26
  %242 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %243 = call i32 @i40e_flush(%struct.i40e_hw* %242)
  ret void
}

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i8* @ITR_TO_REG(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_ITRN(i32, i32) #1

declare dso_local i32 @I40E_PFINT_RATEN(i32) #1

declare dso_local i32 @i40e_intrl_usec_to_reg(i32) #1

declare dso_local i32 @I40E_PFINT_LNKLSTN(i32) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
