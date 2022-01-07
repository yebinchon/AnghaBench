; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_occ_max_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_occ_max_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@bulk_list = common dso_local global i32 0, align 4
@MLXSW_REG_SBSR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@MLXSW_SP_SB_ING_TC_COUNT = common dso_local global i32 0, align 4
@MLXSW_SP_SB_EG_TC_COUNT = common dso_local global i32 0, align 4
@MASKED_COUNT_MAX = common dso_local global i32 0, align 4
@sbsr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_occ_max_clear(%struct.mlxsw_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %14 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %13)
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %6, align 8
  %15 = load i32, i32* @bulk_list, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  %17 = load i32, i32* @MLXSW_REG_SBSR_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %139

25:                                               ; preds = %2
  %26 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %125, %25
  store i32 0, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @mlxsw_reg_sbsr_pack(i8* %28, i32 1)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %38, %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MLXSW_SP_SB_ING_TC_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @mlxsw_reg_sbsr_pg_buff_mask_set(i8* %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %30

41:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MLXSW_SP_SB_EG_TC_COUNT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mlxsw_reg_sbsr_tclass_mask_set(i8* %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %42

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %107, %53
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %57 = call i64 @mlxsw_core_max_ports(%struct.mlxsw_core* %56)
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %54
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %107

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @mlxsw_reg_sbsr_ingress_port_mask_set(i8* %73, i64 %74, i32 1)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @mlxsw_reg_sbsr_egress_port_mask_set(i8* %77, i64 %78, i32 1)
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %97, %76
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @mlxsw_sp_sb_pm_occ_clear(%struct.mlxsw_sp* %89, i64 %90, i32 %91, i32* @bulk_list)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %129

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* @MASKED_COUNT_MAX, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %111

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %67
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %54

110:                                              ; preds = %54
  br label %111

111:                                              ; preds = %110, %105
  %112 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %113 = load i32, i32* @sbsr, align 4
  %114 = call i32 @MLXSW_REG(i32 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @mlxsw_reg_trans_query(%struct.mlxsw_core* %112, i32 %114, i8* %115, i32* @bulk_list, i32* null, i32 0)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %129

120:                                              ; preds = %111
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %123 = call i64 @mlxsw_core_max_ports(%struct.mlxsw_core* %122)
  %124 = icmp ult i64 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %9, align 8
  br label %27

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %119, %95
  %130 = call i32 @mlxsw_reg_trans_bulk_wait(i32* @bulk_list)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @kfree(i8* %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %22
  %140 = load i32, i32* %3, align 4
  ret i32 %140
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

declare dso_local i32 @mlxsw_sp_sb_pm_occ_clear(%struct.mlxsw_sp*, i64, i32, i32*) #1

declare dso_local i32 @mlxsw_reg_trans_query(%struct.mlxsw_core*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @mlxsw_reg_trans_bulk_wait(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
