; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c___mlxsw_sp_port_headroom_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c___mlxsw_sp_port_headroom_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.ieee_pfc = type { i32, i64 }

@MLXSW_REG_PBMC_LEN = common dso_local global i32 0, align 4
@pbmc = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %0, i32 %1, i32* %2, i32 %3, %struct.ieee_pfc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee_pfc*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee_pfc* %4, %struct.ieee_pfc** %11, align 8
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %29, i32 0, i32 1
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %30, align 8
  store %struct.mlxsw_sp* %31, %struct.mlxsw_sp** %12, align 8
  %32 = load %struct.ieee_pfc*, %struct.ieee_pfc** %11, align 8
  %33 = icmp ne %struct.ieee_pfc* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load %struct.ieee_pfc*, %struct.ieee_pfc** %11, align 8
  %36 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %39

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  store i32 %40, i32* %13, align 4
  %41 = load %struct.ieee_pfc*, %struct.ieee_pfc** %11, align 8
  %42 = icmp ne %struct.ieee_pfc* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.ieee_pfc*, %struct.ieee_pfc** %11, align 8
  %45 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i64 [ %46, %43 ], [ 0, %47 ]
  store i64 %49, i64* %14, align 8
  %50 = load i32, i32* @MLXSW_REG_PBMC_LEN, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %15, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %55 = call i64 @mlxsw_sp_sb_max_headroom_cells(%struct.mlxsw_sp* %54)
  store i64 %55, i64* %18, align 8
  %56 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mlxsw_reg_pbmc_pack(i8* %53, i32 %58, i32 0, i32 0)
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @pbmc, align 4
  %64 = call i32 @MLXSW_REG(i32 %63)
  %65 = call i32 @mlxsw_reg_query(i32 %62, i32 %64, i8* %53)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

70:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %138, %70
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %141

75:                                               ; preds = %71
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %20, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %20, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = and i32 %89, %91
  store i32 %92, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %97

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %76

97:                                               ; preds = %88, %76
  %98 = load i32, i32* %23, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %138

101:                                              ; preds = %97
  %102 = load i32, i32* %24, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i1 [ true, %101 ], [ %106, %104 ]
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %28, align 4
  %111 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @mlxsw_sp_pg_buf_threshold_get(%struct.mlxsw_sp* %111, i32 %112)
  store i64 %113, i64* %25, align 8
  %114 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i64, i64* %14, align 8
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @mlxsw_sp_pg_buf_delay_get(%struct.mlxsw_sp* %114, i32 %115, i64 %116, i32 %117, i32 %118)
  store i64 %119, i64* %26, align 8
  %120 = load i64, i64* %25, align 8
  %121 = load i64, i64* %26, align 8
  %122 = add nsw i64 %120, %121
  store i64 %122, i64* %27, align 8
  %123 = load i64, i64* %27, align 8
  %124 = load i64, i64* %17, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %18, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load i32, i32* @ENOBUFS, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

132:                                              ; preds = %107
  %133 = load i32, i32* %19, align 4
  %134 = load i64, i64* %27, align 8
  %135 = load i64, i64* %25, align 8
  %136 = load i32, i32* %28, align 4
  %137 = call i32 @mlxsw_sp_pg_buf_pack(i8* %53, i32 %133, i64 %134, i64 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %100
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %71

141:                                              ; preds = %71
  %142 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %143 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @pbmc, align 4
  %146 = call i32 @MLXSW_REG(i32 %145)
  %147 = call i32 @mlxsw_reg_write(i32 %144, i32 %146, i8* %53)
  store i32 %147, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

148:                                              ; preds = %141, %129, %68
  %149 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mlxsw_sp_sb_max_headroom_cells(%struct.mlxsw_sp*) #2

declare dso_local i32 @mlxsw_reg_pbmc_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i64 @mlxsw_sp_pg_buf_threshold_get(%struct.mlxsw_sp*, i32) #2

declare dso_local i64 @mlxsw_sp_pg_buf_delay_get(%struct.mlxsw_sp*, i32, i64, i32, i32) #2

declare dso_local i32 @mlxsw_sp_pg_buf_pack(i8*, i32, i64, i64, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
