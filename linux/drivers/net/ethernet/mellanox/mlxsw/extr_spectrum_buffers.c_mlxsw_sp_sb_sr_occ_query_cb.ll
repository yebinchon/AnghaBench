; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_sr_occ_query_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_sr_occ_query_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_sp = type { i32* }
%struct.mlxsw_sp_sb_sr_occ_query_cb_ctx = type { i64, i64 }
%struct.mlxsw_sp_sb_cm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@MLXSW_SP_SB_ING_TC_COUNT = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i32 0, align 4
@MLXSW_SP_SB_EG_TC_COUNT = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DIR_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_core*, i8*, i64, i64)* @mlxsw_sp_sb_sr_occ_query_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_sb_sr_occ_query_cb(%struct.mlxsw_core* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  %15 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %17 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %16)
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = call i32 @memcpy(%struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %10, i64* %8, i32 16)
  store i64 0, i64* %11, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %10, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  br label %21

21:                                               ; preds = %74, %4
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %24 = call i64 @mlxsw_core_max_ports(%struct.mlxsw_core* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %74

35:                                               ; preds = %26
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %74

42:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @MLXSW_SP_SB_ING_TC_COUNT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @MLXSW_REG_SBXX_DIR_INGRESS, align 4
  %52 = call %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp* %48, i64 %49, i32 %50, i32 %51)
  store %struct.mlxsw_sp_sb_cm* %52, %struct.mlxsw_sp_sb_cm** %14, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %14, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %14, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mlxsw_reg_sbsr_rec_unpack(i8* %53, i32 %54, i32* %58, i32* %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %10, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %77

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %39, %34
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %21

77:                                               ; preds = %72, %21
  store i64 0, i64* %11, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %12, align 8
  br label %80

80:                                               ; preds = %126, %77
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %83 = call i64 @mlxsw_core_max_ports(%struct.mlxsw_core* %82)
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %129

85:                                               ; preds = %80
  %86 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %126

94:                                               ; preds = %85
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @MLXSW_SP_SB_EG_TC_COUNT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @MLXSW_REG_SBXX_DIR_EGRESS, align 4
  %104 = call %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp* %100, i64 %101, i32 %102, i32 %103)
  store %struct.mlxsw_sp_sb_cm* %104, %struct.mlxsw_sp_sb_cm** %14, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  %108 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %14, align 8
  %109 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %14, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @mlxsw_reg_sbsr_rec_unpack(i8* %105, i32 %106, i32* %110, i32* %113)
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %95

118:                                              ; preds = %95
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %11, align 8
  %121 = getelementptr inbounds %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %10, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %129

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %12, align 8
  br label %80

129:                                              ; preds = %124, %80
  ret void
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @memcpy(%struct.mlxsw_sp_sb_sr_occ_query_cb_ctx*, i64*, i32) #1

declare dso_local i64 @mlxsw_core_max_ports(%struct.mlxsw_core*) #1

declare dso_local %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp*, i64, i32, i32) #1

declare dso_local i32 @mlxsw_reg_sbsr_rec_unpack(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
