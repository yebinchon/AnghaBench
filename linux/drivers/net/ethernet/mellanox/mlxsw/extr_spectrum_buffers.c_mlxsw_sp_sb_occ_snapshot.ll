; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_occ_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_occ_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_sb_sr_occ_query_cb_ctx = type { i64, i64 }

@bulk_list = common dso_local global i32 0, align 4
@MLXSW_REG_SBSR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@MLXSW_SP_SB_ING_TC_COUNT = common dso_local global i32 0, align 4
@MLXSW_SP_SB_EG_TC_COUNT = common dso_local global i32 0, align 4
@MASKED_COUNT_MAX = common dso_local global i64 0, align 8
@sbsr = common dso_local global i32 0, align 4
@mlxsw_sp_sb_sr_occ_query_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_occ_snapshot(%struct.mlxsw_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %17 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %16)
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %6, align 8
  %18 = load i32, i32* @bulk_list, align 4
  %19 = call i32 @LIST_HEAD(i32 %18)
  %20 = load i32, i32* @MLXSW_REG_SBSR_LEN, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i32 %20, i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %150

28:                                               ; preds = %2
  %29 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %136, %28
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @mlxsw_reg_sbsr_pack(i8* %32, i32 0)
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %42, %30
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @MLXSW_SP_SB_ING_TC_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @mlxsw_reg_sbsr_pg_buff_mask_set(i8* %39, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %34

45:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @MLXSW_SP_SB_EG_TC_COUNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mlxsw_reg_sbsr_tclass_mask_set(i8* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %46

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %111, %57
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %61 = call i64 @mlxsw_core_max_ports(%struct.mlxsw_core* %60)
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %58
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %111

72:                                               ; preds = %63
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @mlxsw_reg_sbsr_ingress_port_mask_set(i8* %77, i64 %78, i32 1)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @mlxsw_reg_sbsr_egress_port_mask_set(i8* %81, i64 %82, i32 1)
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %101, %80
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %84
  %93 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @mlxsw_sp_sb_pm_occ_query(%struct.mlxsw_sp* %93, i64 %94, i32 %95, i32* @bulk_list)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %140

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %84

104:                                              ; preds = %84
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* @MASKED_COUNT_MAX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %115

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %71
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %58

114:                                              ; preds = %58
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %7, i32 0, i32 0
  store i64 %116, i64* %117, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %7, i32 0, i32 1
  store i64 %118, i64* %119, align 8
  %120 = call i32 @memcpy(i64* %8, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx* %7, i32 16)
  %121 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %122 = load i32, i32* @sbsr, align 4
  %123 = call i32 @MLXSW_REG(i32 %122)
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* @mlxsw_sp_sb_sr_occ_query_cb, align 4
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @mlxsw_reg_trans_query(%struct.mlxsw_core* %121, i32 %123, i8* %124, i32* @bulk_list, i32 %125, i64 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %140

131:                                              ; preds = %115
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %134 = call i64 @mlxsw_core_max_ports(%struct.mlxsw_core* %133)
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %12, align 8
  br label %30

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %130, %99
  %141 = call i32 @mlxsw_reg_trans_bulk_wait(i32* @bulk_list)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @kfree(i8* %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %25
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_sbsr_pack(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_sbsr_pg_buff_mask_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_sbsr_tclass_mask_set(i8*, i32, i32) #1

declare dso_local i64 @mlxsw_core_max_ports(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_reg_sbsr_ingress_port_mask_set(i8*, i64, i32) #1

declare dso_local i32 @mlxsw_reg_sbsr_egress_port_mask_set(i8*, i64, i32) #1

declare dso_local i32 @mlxsw_sp_sb_pm_occ_query(%struct.mlxsw_sp*, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i64*, %struct.mlxsw_sp_sb_sr_occ_query_cb_ctx*, i32) #1

declare dso_local i32 @mlxsw_reg_trans_query(%struct.mlxsw_core*, i32, i8*, i32*, i32, i64) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @mlxsw_reg_trans_bulk_wait(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
