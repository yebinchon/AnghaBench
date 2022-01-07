; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_ini_txf_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_ini_txf_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_8__*, %struct.iwl_fwrt_shared_mem_cfg, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_5__ = type { %struct.iwl_txf_iter_data }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i64 }
%struct.iwl_fw_ini_region_cfg = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid lmac offset: 0x%x\0A\00", align 1
@IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i32)* @iwl_ini_txf_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_ini_txf_iter(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_txf_iter_data*, align 8
  %9 = alloca %struct.iwl_fwrt_shared_mem_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.iwl_txf_iter_data* %15, %struct.iwl_txf_iter_data** %8, align 8
  %16 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %16, i32 0, i32 1
  store %struct.iwl_fwrt_shared_mem_cfg* %17, %struct.iwl_fwrt_shared_mem_cfg** %9, align 8
  %18 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %9, align 8
  %22 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i64* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %3
  %33 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %9, align 8
  %40 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = call i64 @WARN_ONCE(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %185

51:                                               ; preds = %38, %32
  %52 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %53 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %57 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 4
  %58 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %6, align 8
  %59 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %69

66:                                               ; preds = %51
  %67 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %68 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %126, label %75

75:                                               ; preds = %70
  %76 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %120, %75
  %81 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %82 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %80
  %87 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %9, align 8
  %88 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %98 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %104 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %106 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %86
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %112 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 @BIT(i64 %114)
  %116 = and i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %185

119:                                              ; preds = %109, %86
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %122 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %80

125:                                              ; preds = %80
  br label %126

126:                                              ; preds = %125, %70
  %127 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %128 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %130 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* @IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG, align 4
  %134 = call i32 @fw_has_capa(i32* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %185

137:                                              ; preds = %126
  %138 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %139 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %179, %137
  %143 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %144 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %184

150:                                              ; preds = %142
  %151 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %9, align 8
  %152 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %151, i32 0, i32 2
  %153 = load i64*, i64** %152, align 8
  %154 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %155 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %153, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %163 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %162, i32 0, i32 3
  store i64 %161, i64* %163, align 8
  %164 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %165 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %150
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %171 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = call i32 @BIT(i64 %173)
  %175 = and i32 %169, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  store i32 1, i32* %4, align 4
  br label %185

178:                                              ; preds = %168, %150
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %8, align 8
  %181 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %142

184:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %177, %136, %118, %50
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
