; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vrs_lpm_tree_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vrs_lpm_tree_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mlxsw_sp_vr* }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_lpm_tree** }
%struct.mlxsw_sp_vr = type { i32 }
%struct.mlxsw_sp_fib = type { i32 }
%struct.mlxsw_sp_lpm_tree = type { i32, i32 }

@MAX_VRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_lpm_tree*)* @mlxsw_sp_vrs_lpm_tree_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_vrs_lpm_tree_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib* %1, %struct.mlxsw_sp_lpm_tree* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib*, align 8
  %7 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_vr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib* %1, %struct.mlxsw_sp_fib** %6, align 8
  store %struct.mlxsw_sp_lpm_tree* %2, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %15 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %26, i64 %28
  %30 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %29, align 8
  store %struct.mlxsw_sp_lpm_tree* %30, %struct.mlxsw_sp_lpm_tree** %9, align 8
  %31 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %9, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %68, %3
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAX_VRS, align 4
  %40 = call i32 @MLXSW_CORE_RES_GET(i32 %38, i32 %39)
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %34
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %47, i64 %49
  store %struct.mlxsw_sp_vr* %50, %struct.mlxsw_sp_vr** %12, align 8
  %51 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mlxsw_sp_vr_lpm_tree_should_replace(%struct.mlxsw_sp_vr* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %68

57:                                               ; preds = %42
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %59 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mlxsw_sp_vr_fib(%struct.mlxsw_sp_vr* %59, i32 %60)
  %62 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %63 = call i32 @mlxsw_sp_vr_lpm_tree_replace(%struct.mlxsw_sp* %58, i32 %61, %struct.mlxsw_sp_lpm_tree* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %92

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %9, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32 %74, i32 %77, i32 4)
  %79 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %80 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %85, i64 %87
  store %struct.mlxsw_sp_lpm_tree* %79, %struct.mlxsw_sp_lpm_tree** %88, align 8
  %89 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %90 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %9, align 8
  %91 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %89, %struct.mlxsw_sp_lpm_tree* %90)
  store i32 0, i32* %4, align 4
  br label %117

92:                                               ; preds = %66
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %112, %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @mlxsw_sp_vr_lpm_tree_should_replace(%struct.mlxsw_sp_vr* %99, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %112

105:                                              ; preds = %98
  %106 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %107 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @mlxsw_sp_vr_fib(%struct.mlxsw_sp_vr* %107, i32 %108)
  %110 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %9, align 8
  %111 = call i32 @mlxsw_sp_vr_lpm_tree_replace(%struct.mlxsw_sp* %106, i32 %109, %struct.mlxsw_sp_lpm_tree* %110)
  br label %112

112:                                              ; preds = %105, %104
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %13, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %71
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @mlxsw_sp_vr_lpm_tree_should_replace(%struct.mlxsw_sp_vr*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_vr_lpm_tree_replace(%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_vr_fib(%struct.mlxsw_sp_vr*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
