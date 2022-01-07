; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_handle_hca_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_handle_hca_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_3__, %struct.mlx5_profile* }
%struct.TYPE_3__ = type { i32* }
%struct.mlx5_profile = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@set_hca_cap_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_CAP_GENERAL = common dso_local global i64 0, align 8
@capability = common dso_local global i32 0, align 4
@cmd_hca_cap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Current Pkey table size %d Setting new size %d\0A\00", align 1
@pkey_table_size = common dso_local global i32 0, align 4
@log_max_qp = common dso_local global i32 0, align 4
@profile = common dso_local global %struct.TYPE_4__* null, align 8
@prof_sel = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"log_max_qp value in current profile is %d, changing it to HCA capability limit (%d)\0A\00", align 1
@MLX5_PROF_MASK_QP_SIZE = common dso_local global i32 0, align 4
@cmdif_checksum = common dso_local global i32 0, align 4
@uar_4k = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@log_uar_page_sz = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@cache_line_128byte = common dso_local global i32 0, align 4
@dct = common dso_local global i32 0, align 4
@num_vhca_ports = common dso_local global i32 0, align 4
@MLX5_SET_HCA_CAP_OP_MOD_GENERAL_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @handle_hca_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hca_cap(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 1
  %10 = load %struct.mlx5_profile*, %struct.mlx5_profile** %9, align 8
  store %struct.mlx5_profile* %10, %struct.mlx5_profile** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @set_hca_cap_in, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %164

21:                                               ; preds = %1
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %23 = load i64, i64* @MLX5_CAP_GENERAL, align 8
  %24 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %164

28:                                               ; preds = %21
  %29 = load i32, i32* @set_hca_cap_in, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @capability, align 4
  %32 = call i8* @MLX5_ADDR_OF(i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MLX5_CAP_GENERAL, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @cmd_hca_cap, align 4
  %42 = call i32 @MLX5_ST_SZ_BYTES(i32 %41)
  %43 = call i32 @memcpy(i8* %33, i32 %40, i32 %42)
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %46 = load i32, i32* @pkey_table_size, align 4
  %47 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %45, i32 %46)
  %48 = call i32 @mlx5_to_sw_pkey_sz(i32 %47)
  %49 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48, i32 128)
  %50 = load i32, i32* @cmd_hca_cap, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @pkey_table_size, align 4
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %54 = call i32 @to_fw_pkey_sz(%struct.mlx5_core_dev* %53, i32 128)
  %55 = call i32 @MLX5_SET(i32 %50, i8* %51, i32 %52, i32 %54)
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %57 = load i32, i32* @log_max_qp, align 4
  %58 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %56, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @profile, align 8
  %60 = load i64, i64* @prof_sel, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %28
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @profile, align 8
  %68 = load i64, i64* @prof_sel, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %73 = load i32, i32* @log_max_qp, align 4
  %74 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %72, i32 %73)
  %75 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %66, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %77 = load i32, i32* @log_max_qp, align 4
  %78 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %76, i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @profile, align 8
  %80 = load i64, i64* @prof_sel, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %65, %28
  %84 = load %struct.mlx5_profile*, %struct.mlx5_profile** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5_profile, %struct.mlx5_profile* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MLX5_PROF_MASK_QP_SIZE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32, i32* @cmd_hca_cap, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @log_max_qp, align 4
  %94 = load %struct.mlx5_profile*, %struct.mlx5_profile** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_profile, %struct.mlx5_profile* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MLX5_SET(i32 %91, i8* %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %83
  %99 = load i32, i32* @cmd_hca_cap, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @cmdif_checksum, align 4
  %102 = call i32 @MLX5_SET(i32 %99, i8* %100, i32 %101, i32 0)
  %103 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %104 = load i32, i32* @uar_4k, align 4
  %105 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = icmp sgt i32 %108, 4096
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @cmd_hca_cap, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* @uar_4k, align 4
  %114 = call i32 @MLX5_SET(i32 %111, i8* %112, i32 %113, i32 1)
  br label %115

115:                                              ; preds = %110, %107, %98
  %116 = load i32, i32* @cmd_hca_cap, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* @log_uar_page_sz, align 4
  %119 = load i32, i32* @PAGE_SHIFT, align 4
  %120 = sub nsw i32 %119, 12
  %121 = call i32 @MLX5_SET(i32 %116, i8* %117, i32 %118, i32 %120)
  %122 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %123 = load i32, i32* @cache_line_128byte, align 4
  %124 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %115
  %127 = load i32, i32* @cmd_hca_cap, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* @cache_line_128byte, align 4
  %130 = call i32 (...) @cache_line_size()
  %131 = icmp sge i32 %130, 128
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = call i32 @MLX5_SET(i32 %127, i8* %128, i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %126, %115
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %137 = load i32, i32* @dct, align 4
  %138 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* @cmd_hca_cap, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* @dct, align 4
  %144 = call i32 @MLX5_SET(i32 %141, i8* %142, i32 %143, i32 1)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %147 = load i32, i32* @num_vhca_ports, align 4
  %148 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i32, i32* @cmd_hca_cap, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* @num_vhca_ports, align 4
  %154 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %155 = load i32, i32* @num_vhca_ports, align 4
  %156 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %154, i32 %155)
  %157 = call i32 @MLX5_SET(i32 %151, i8* %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %150, %145
  %159 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %160 = load i8*, i8** %3, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @MLX5_SET_HCA_CAP_OP_MOD_GENERAL_DEVICE, align 4
  %163 = call i32 @set_caps(%struct.mlx5_core_dev* %159, i8* %160, i32 %161, i32 %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %27, %20
  %165 = load i8*, i8** %3, align 8
  %166 = call i32 @kfree(i8* %165)
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_get_caps(%struct.mlx5_core_dev*, i64) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @to_fw_pkey_sz(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @set_caps(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
