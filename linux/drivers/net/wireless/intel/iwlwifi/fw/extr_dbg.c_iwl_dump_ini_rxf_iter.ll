; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_rxf_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_rxf_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { %struct.TYPE_4__, i8**, i8* }
%struct.TYPE_4__ = type { i64, i8* }
%struct.iwl_fw_ini_error_dump_range = type { i8*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.iwl_ini_rxf_data = type { i32, i32, i32 }
%struct.iwl_fw_ini_error_dump_register = type { i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RXF_SET_FENCE_MODE = common dso_local global i32 0, align 4
@RXF_LD_WR2FENCE = common dso_local global i32 0, align 4
@RXF_LD_FENCE_OFFSET_ADDR = common dso_local global i32 0, align 4
@RXF_FIFO_RD_FENCE_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, i8*, i32)* @iwl_dump_ini_rxf_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_rxf_iter(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_runtime*, align 8
  %7 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_fw_ini_error_dump_range*, align 8
  %11 = alloca %struct.iwl_ini_rxf_data, align 4
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
  %21 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.iwl_fw_ini_error_dump_register*
  store %struct.iwl_fw_ini_error_dump_register* %25, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %26 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %27 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @le32_to_cpu(i8* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @le32_to_cpu(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %15, align 4
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %39 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %40 = call i32 @iwl_ini_get_rxf_data(%struct.iwl_fw_runtime* %38, %struct.iwl_fw_ini_region_cfg* %39, %struct.iwl_ini_rxf_data* %11)
  %41 = getelementptr inbounds %struct.iwl_ini_rxf_data, %struct.iwl_ini_rxf_data* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %189

47:                                               ; preds = %4
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iwl_trans_grab_nic_access(i32 %50, i64* %17)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %189

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.iwl_ini_rxf_data, %struct.iwl_ini_rxf_data* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %61 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %68 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = getelementptr inbounds %struct.iwl_ini_rxf_data, %struct.iwl_ini_rxf_data* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %76 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  store i32 0, i32* %18, align 4
  br label %77

77:                                               ; preds = %110, %56
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @le32_to_cpu(i8* %82)
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %77
  %86 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %87 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le32_to_cpu(i8* %92)
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %99 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, %struct.iwl_fw_ini_error_dump_register* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %101 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @iwl_read_prph_no_grab(i32 %102, i32 %103)
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %107 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, %struct.iwl_fw_ini_error_dump_register* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %109 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_register, %struct.iwl_fw_ini_error_dump_register* %108, i32 1
  store %struct.iwl_fw_ini_error_dump_register* %109, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  br label %77

113:                                              ; preds = %77
  %114 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %7, align 8
  %115 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* %15, align 4
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %123 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %177

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.iwl_ini_rxf_data, %struct.iwl_ini_rxf_data* %11, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %130 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @RXF_SET_FENCE_MODE, align 4
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @iwl_write_prph_no_grab(i32 %131, i32 %134, i32 1)
  %136 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %137 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RXF_LD_WR2FENCE, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i32 @iwl_write_prph_no_grab(i32 %138, i32 %141, i32 1)
  %143 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %144 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RXF_LD_FENCE_OFFSET_ADDR, align 4
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @iwl_write_prph_no_grab(i32 %145, i32 %148, i32 0)
  %150 = load i32, i32* @RXF_FIFO_RD_FENCE_INC, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %14, align 4
  %153 = load %struct.iwl_fw_ini_error_dump_register*, %struct.iwl_fw_ini_error_dump_register** %12, align 8
  %154 = bitcast %struct.iwl_fw_ini_error_dump_register* %153 to i8*
  %155 = bitcast i8* %154 to i32*
  store i32* %155, i32** %16, align 8
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %171, %124
  %157 = load i32, i32* %18, align 4
  %158 = getelementptr inbounds %struct.iwl_ini_rxf_data, %struct.iwl_ini_rxf_data* %11, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %163 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @iwl_read_prph_no_grab(i32 %164, i32 %165)
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %16, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %16, align 8
  store i32 %168, i32* %169, align 4
  br label %171

171:                                              ; preds = %161
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, 4
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %18, align 4
  br label %156

176:                                              ; preds = %156
  br label %177

177:                                              ; preds = %176, %119
  %178 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %179 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @iwl_trans_release_nic_access(i32 %180, i64* %17)
  %182 = load %struct.iwl_fw_ini_error_dump_range*, %struct.iwl_fw_ini_error_dump_range** %10, align 8
  %183 = getelementptr inbounds %struct.iwl_fw_ini_error_dump_range, %struct.iwl_fw_ini_error_dump_range* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @le32_to_cpu(i8* %184)
  %186 = sext i32 %185 to i64
  %187 = add i64 32, %186
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %177, %53, %44
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @iwl_ini_get_rxf_data(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*, %struct.iwl_ini_rxf_data*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_read_prph_no_grab(i32, i32) #1

declare dso_local i32 @iwl_write_prph_no_grab(i32, i32, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
