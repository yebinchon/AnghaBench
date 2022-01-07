; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_ctxt-info.c_iwl_pcie_init_fw_sec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_ctxt-info.c_iwl_pcie_init_fw_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.iwl_self_init_dram }
%struct.iwl_self_init_dram = type { i64, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fw_img = type { i32* }
%struct.iwl_context_info_dram = type { i8**, i8**, i8** }

@.str = private unnamed_addr constant [52 x i8] c"paging shouldn't already be initialized (%d pages)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_init_fw_sec(%struct.iwl_trans* %0, %struct.fw_img* %1, %struct.iwl_context_info_dram* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.fw_img*, align 8
  %7 = alloca %struct.iwl_context_info_dram*, align 8
  %8 = alloca %struct.iwl_self_init_dram*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.fw_img* %1, %struct.fw_img** %6, align 8
  store %struct.iwl_context_info_dram* %2, %struct.iwl_context_info_dram** %7, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  store %struct.iwl_self_init_dram* %16, %struct.iwl_self_init_dram** %8, align 8
  %17 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %18 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @WARN(%struct.TYPE_3__* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %27 = call i32 @iwl_pcie_ctxt_info_free_paging(%struct.iwl_trans* %26)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %30 = call i32 @iwl_pcie_get_num_sections(%struct.fw_img* %29, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @iwl_pcie_get_num_sections(%struct.fw_img* %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 2
  %40 = call i32 @iwl_pcie_get_num_sections(%struct.fw_img* %35, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kcalloc(i32 %43, i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_3__*
  %47 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %47, i32 0, i32 3
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %50 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %28
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %226

56:                                               ; preds = %28
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kcalloc(i32 %57, i32 4, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_3__*
  %61 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %61, i32 0, i32 2
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %62, align 8
  %63 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %64 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %226

70:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %119

75:                                               ; preds = %71
  %76 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %77 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %78 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %84 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %88
  %90 = call i32 @iwl_pcie_ctxt_info_alloc_dma(%struct.iwl_trans* %76, i32* %82, %struct.TYPE_3__* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %75
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %226

95:                                               ; preds = %75
  %96 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %97 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %100 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_le64(i32 %104)
  %106 = load %struct.iwl_context_info_dram*, %struct.iwl_context_info_dram** %7, align 8
  %107 = getelementptr inbounds %struct.iwl_context_info_dram, %struct.iwl_context_info_dram* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %105, i8** %111, align 8
  %112 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %113 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %95
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %71

119:                                              ; preds = %71
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %167, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %170

124:                                              ; preds = %120
  %125 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %126 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %127 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %130 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %135 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %134, i32 0, i32 3
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %138 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %139
  %141 = call i32 @iwl_pcie_ctxt_info_alloc_dma(%struct.iwl_trans* %125, i32* %133, %struct.TYPE_3__* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %124
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %226

146:                                              ; preds = %124
  %147 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %148 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %147, i32 0, i32 3
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %151 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @cpu_to_le64(i32 %155)
  %157 = load %struct.iwl_context_info_dram*, %struct.iwl_context_info_dram** %7, align 8
  %158 = getelementptr inbounds %struct.iwl_context_info_dram, %struct.iwl_context_info_dram* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %164 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %120

170:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %222, %170
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %225

175:                                              ; preds = %171
  %176 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %177 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %178, %180
  %182 = add i64 %181, 2
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %14, align 4
  %184 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %185 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %186 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %192 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %191, i32 0, i32 2
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %195
  %197 = call i32 @iwl_pcie_ctxt_info_alloc_dma(%struct.iwl_trans* %184, i32* %190, %struct.TYPE_3__* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %175
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %4, align 4
  br label %226

202:                                              ; preds = %175
  %203 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %204 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @cpu_to_le64(i32 %210)
  %212 = load %struct.iwl_context_info_dram*, %struct.iwl_context_info_dram** %7, align 8
  %213 = getelementptr inbounds %struct.iwl_context_info_dram, %struct.iwl_context_info_dram* %212, i32 0, i32 0
  %214 = load i8**, i8*** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  store i8* %211, i8** %217, align 8
  %218 = load %struct.iwl_self_init_dram*, %struct.iwl_self_init_dram** %8, align 8
  %219 = getelementptr inbounds %struct.iwl_self_init_dram, %struct.iwl_self_init_dram* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %202
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %171

225:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %200, %144, %93, %67, %53
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i64 @WARN(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_ctxt_info_free_paging(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_get_num_sections(%struct.fw_img*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_ctxt_info_alloc_dma(%struct.iwl_trans*, i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
