; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_txf_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_txf_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.iwl_txf_iter_data }
%struct.iwl_txf_iter_data = type { i32, i32 }
%struct.iwl_fw_ini_region_cfg = type { %struct.TYPE_6__, i8**, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.iwl_fw_ini_error_dump_range = type { i8*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.iwl_fw_ini_error_dump_register = type { i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TXF_LARC_NUM = common dso_local global i32 0, align 4
@TXF_READ_MODIFY_ADDR = common dso_local global i32 0, align 4
@TXF_WR_PTR = common dso_local global i32 0, align 4
@TXF_READ_MODIFY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*, i32)* @iwl_dump_ini_txf_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_txf_iter(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_runtime*, align 8
  %7 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_fw_ini_error_dump_range*, align 8
  %11 = alloca %struct.iwl_txf_iter_data*, align 8
  %12 = alloca %struct.iwl_fw_ini_error_dump_register*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %6, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.iwl_fw_ini_error_dump_range*
  store %struct.iwl_fw_ini_error_dump_range* %20, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %21 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.iwl_txf_iter_data* %23, %struct.iwl_txf_iter_data** %11, align 8
  %24 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %25 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.iwl_fw_ini_error_dump_register*
  store %struct.iwl_fw_ini_error_dump_register* %28, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %29 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @le32_to_cpu(i8* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @le32_to_cpu(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 16
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %42 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @iwl_ini_txf_iter(%struct.iwl_fw_runtime* %41, %struct.iwl_fw_ini_region_cfg* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %196

49:                                               ; preds = %4
  %50 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @iwl_trans_grab_nic_access(i32 %52, i64* %17)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %196

58:                                               ; preds = %49
  %59 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %11, align 8
  %60 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %64 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %71 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %11, align 8
  %74 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %80 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TXF_LARC_NUM, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %11, align 8
  %88 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iwl_write_prph_no_grab(i32 %83, i32 %86, i32 %89)
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %124, %58
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @le32_to_cpu(i8* %96)
  %98 = icmp slt i32 %92, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %91
  %100 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @le32_to_cpu(i8* %106)
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %113 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, %struct.iwl_fw_ini_error_dump_register* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %115 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @iwl_read_prph_no_grab(i32 %116, i32 %117)
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %121 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, %struct.iwl_fw_ini_error_dump_register* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %123 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, %struct.iwl_fw_ini_error_dump_register* %122, i32 1
  store %struct.iwl_fw_ini_error_dump_register* %123, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  br label %124

124:                                              ; preds = %99
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %91

127:                                              ; preds = %91
  %128 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i32, i32* %15, align 4
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %137 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %184

138:                                              ; preds = %127
  %139 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %140 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @TXF_READ_MODIFY_ADDR, align 4
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* @TXF_WR_PTR, align 4
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i32 @iwl_write_prph_no_grab(i32 %141, i32 %144, i32 %147)
  %149 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %150 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TXF_READ_MODIFY_DATA, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i32 @iwl_read_prph_no_grab(i32 %151, i32 %154)
  %156 = load i32, i32* @TXF_READ_MODIFY_DATA, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %14, align 4
  %159 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %160 = bitcast %struct.iwl_fw_ini_error_dump_register* %159 to i8*
  %161 = bitcast i8* %160 to i32*
  store i32* %161, i32** %16, align 8
  store i32 0, i32* %18, align 4
  br label %162

162:                                              ; preds = %178, %138
  %163 = load i32, i32* %18, align 4
  %164 = load %struct.iwl_txf_iter_data*, %struct.iwl_txf_iter_data** %11, align 8
  %165 = getelementptr inbounds %struct.iwl_txf_iter_data, %struct.iwl_txf_iter_data* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %162
  %169 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %170 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @iwl_read_prph_no_grab(i32 %171, i32 %172)
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load i32*, i32** %16, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %16, align 8
  store i32 %175, i32* %176, align 4
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %180, 4
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %18, align 4
  br label %162

183:                                              ; preds = %162
  br label %184

184:                                              ; preds = %183, %133
  %185 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %186 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @iwl_trans_release_nic_access(i32 %187, i64* %17)
  %189 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %190 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @le32_to_cpu(i8* %191)
  %193 = sext i32 %192 to i64
  %194 = add i64 32, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %184, %55, %46
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @iwl_ini_txf_iter(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i32) #1

declare dso_local i32 @iwl_trans_grab_nic_access(i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_write_prph_no_grab(i32, i32, i32) #1

declare dso_local i32 @iwl_read_prph_no_grab(i32, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
