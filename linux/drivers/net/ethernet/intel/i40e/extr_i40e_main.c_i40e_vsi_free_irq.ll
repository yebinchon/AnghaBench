; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, %struct.i40e_pf**, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_END_OF_LIST = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_MSIX_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_MSIX0_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_INTEVENT_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_MSIX_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_MSIX0_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_INTEVENT_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0 = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_free_irq(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 4
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %3, align 8
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 4
  store %struct.i40e_hw* %16, %struct.i40e_hw** %4, align 8
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %180

26:                                               ; preds = %1
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 3
  %29 = load %struct.i40e_pf**, %struct.i40e_pf*** %28, align 8
  %30 = icmp ne %struct.i40e_pf** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %253

32:                                               ; preds = %26
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %253

38:                                               ; preds = %32
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %176, %38
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %179

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %10, align 8
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %53 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %59, i32 0, i32 3
  %61 = load %struct.i40e_pf**, %struct.i40e_pf*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i40e_pf*, %struct.i40e_pf** %61, i64 %63
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %64, align 8
  %66 = icmp ne %struct.i40e_pf* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %47
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 3
  %70 = load %struct.i40e_pf**, %struct.i40e_pf*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i40e_pf*, %struct.i40e_pf** %70, i64 %72
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %73, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %67, %47
  br label %176

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @irq_set_affinity_notifier(i32 %80, i32* null)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @irq_set_affinity_hint(i32 %82, i32* null)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @synchronize_irq(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %87, i32 0, i32 3
  %89 = load %struct.i40e_pf**, %struct.i40e_pf*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.i40e_pf*, %struct.i40e_pf** %89, i64 %91
  %93 = load %struct.i40e_pf*, %struct.i40e_pf** %92, align 8
  %94 = call i32 @free_irq(i32 %86, %struct.i40e_pf* %93)
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub i64 %96, 1
  %98 = call i32 @I40E_PFINT_LNKLSTN(i64 %97)
  %99 = call i32 @rd32(%struct.i40e_hw* %95, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @I40E_QUEUE_END_OF_LIST, align 4
  %106 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub i64 %111, 1
  %113 = call i32 @I40E_PFINT_LNKLSTN(i64 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @wr32(%struct.i40e_hw* %110, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %120, %79
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @I40E_QUEUE_END_OF_LIST, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %175

120:                                              ; preds = %116
  %121 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @I40E_QINT_RQCTL(i32 %122)
  %124 = call i32 @rd32(%struct.i40e_hw* %121, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* @I40E_QINT_RQCTL_MSIX_INDX_MASK, align 4
  %126 = load i32, i32* @I40E_QINT_RQCTL_MSIX0_INDX_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @I40E_QINT_RQCTL_INTEVENT_MASK, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_MASK, align 4
  %136 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_INDX_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @I40E_QINT_RQCTL(i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @wr32(%struct.i40e_hw* %140, i32 %142, i32 %143)
  %145 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @I40E_QINT_TQCTL(i32 %146)
  %148 = call i32 @rd32(%struct.i40e_hw* %145, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %153 = ashr i32 %151, %152
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* @I40E_QINT_TQCTL_MSIX_INDX_MASK, align 4
  %155 = load i32, i32* @I40E_QINT_TQCTL_MSIX0_INDX_MASK, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @I40E_QINT_TQCTL_INTEVENT_MASK, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_MASK, align 4
  %165 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_MASK, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @I40E_QINT_TQCTL(i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @wr32(%struct.i40e_hw* %169, i32 %171, i32 %172)
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %7, align 4
  br label %116

175:                                              ; preds = %116
  br label %176

176:                                              ; preds = %175, %78
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %41

179:                                              ; preds = %41
  br label %253

180:                                              ; preds = %1
  %181 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %182 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %187 = call i32 @free_irq(i32 %185, %struct.i40e_pf* %186)
  %188 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %189 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %190 = call i32 @rd32(%struct.i40e_hw* %188, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT, align 4
  %195 = ashr i32 %193, %194
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* @I40E_QUEUE_END_OF_LIST, align 4
  %197 = load i32, i32* @I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %6, align 4
  %201 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %202 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @wr32(%struct.i40e_hw* %201, i32 %202, i32 %203)
  %205 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @I40E_QINT_RQCTL(i32 %206)
  %208 = call i32 @rd32(%struct.i40e_hw* %205, i32 %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* @I40E_QINT_RQCTL_MSIX_INDX_MASK, align 4
  %210 = load i32, i32* @I40E_QINT_RQCTL_MSIX0_INDX_MASK, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @I40E_QINT_RQCTL_INTEVENT_MASK, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %6, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_MASK, align 4
  %220 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_INDX_MASK, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %6, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %6, align 4
  %224 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @I40E_QINT_RQCTL(i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @wr32(%struct.i40e_hw* %224, i32 %226, i32 %227)
  %229 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @I40E_QINT_TQCTL(i32 %230)
  %232 = call i32 @rd32(%struct.i40e_hw* %229, i32 %231)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* @I40E_QINT_TQCTL_MSIX_INDX_MASK, align 4
  %234 = load i32, i32* @I40E_QINT_TQCTL_MSIX0_INDX_MASK, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @I40E_QINT_TQCTL_INTEVENT_MASK, align 4
  %239 = or i32 %237, %238
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %6, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_MASK, align 4
  %244 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_MASK, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* %6, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %6, align 4
  %248 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @I40E_QINT_TQCTL(i32 %249)
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @wr32(%struct.i40e_hw* %248, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %31, %37, %180, %179
  ret void
}

declare dso_local i32 @irq_set_affinity_notifier(i32, i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.i40e_pf*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PFINT_LNKLSTN(i64) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
