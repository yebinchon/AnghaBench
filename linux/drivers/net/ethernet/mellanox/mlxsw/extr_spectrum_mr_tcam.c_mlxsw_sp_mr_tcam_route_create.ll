; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr_tcam_ops* }
%struct.mlxsw_sp_mr_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32*, i32, i32)*, i32 }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_mr_route_params = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlxsw_sp_mr_tcam_route = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_mr_tcam = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i8*, %struct.mlxsw_sp_mr_route_params*)* @mlxsw_sp_mr_tcam_route_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_tcam_route_create(%struct.mlxsw_sp* %0, i8* %1, i8* %2, %struct.mlxsw_sp_mr_route_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_route_params*, align 8
  %10 = alloca %struct.mlxsw_sp_mr_tcam_ops*, align 8
  %11 = alloca %struct.mlxsw_sp_mr_tcam_route*, align 8
  %12 = alloca %struct.mlxsw_sp_mr_tcam*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.mlxsw_sp_mr_route_params* %3, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %15, align 8
  store %struct.mlxsw_sp_mr_tcam_ops* %16, %struct.mlxsw_sp_mr_tcam_ops** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.mlxsw_sp_mr_tcam_route*
  store %struct.mlxsw_sp_mr_tcam_route* %18, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.mlxsw_sp_mr_tcam*
  store %struct.mlxsw_sp_mr_tcam* %20, %struct.mlxsw_sp_mr_tcam** %12, align 8
  %21 = load %struct.mlxsw_sp_mr_route_params*, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlxsw_sp_mr_route_params*, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlxsw_sp_mr_route_params*, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlxsw_sp_mr_route_params*, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %44, i32 0, i32 0
  %46 = call i32 @mlxsw_sp_mr_erif_list_init(i32* %45)
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %48 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %48, i32 0, i32 0
  %50 = load %struct.mlxsw_sp_mr_route_params*, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %50, i32 0, i32 1
  %52 = call i32 @mlxsw_sp_mr_tcam_erif_populate(%struct.mlxsw_sp* %47, i32* %49, %struct.TYPE_2__* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  br label %149

56:                                               ; preds = %4
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %58 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %58, i32 0, i32 1
  %60 = call i32 @mlxsw_sp_flow_counter_alloc(%struct.mlxsw_sp* %57, i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %150

64:                                               ; preds = %56
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %66 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %78, i32 0, i32 0
  %80 = call i32 @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp* %65, i32 %68, i32 %71, i32 %74, i32 %77, i32* %79)
  %81 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %64
  %89 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %13, align 4
  br label %143

93:                                               ; preds = %64
  %94 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %10, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @kzalloc(i32 %96, i32 %97)
  %99 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %100 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %102 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %93
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  br label %138

108:                                              ; preds = %93
  %109 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %10, align 8
  %110 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %109, i32 0, i32 0
  %111 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32*, i32, i32)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32*, i32, i32)** %110, align 8
  %112 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %113 = bitcast %struct.mlxsw_sp* %112 to %struct.mlxsw_sp.0*
  %114 = load %struct.mlxsw_sp_mr_tcam*, %struct.mlxsw_sp_mr_tcam** %12, align 8
  %115 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam, %struct.mlxsw_sp_mr_tcam* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %118 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %121 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %120, i32 0, i32 4
  %122 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %123 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlxsw_sp_mr_route_params*, %struct.mlxsw_sp_mr_route_params** %9, align 8
  %126 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 %111(%struct.mlxsw_sp.0* %113, i32 %116, i32 %119, i32* %121, i32 %124, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %108
  br label %133

132:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %156

133:                                              ; preds = %131
  %134 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %135 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @kfree(i32 %136)
  br label %138

138:                                              ; preds = %133, %105
  %139 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %140 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mlxsw_sp_mr_tcam_afa_block_destroy(i32 %141)
  br label %143

143:                                              ; preds = %138, %88
  %144 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %145 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %146 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @mlxsw_sp_flow_counter_free(%struct.mlxsw_sp* %144, i32 %147)
  br label %149

149:                                              ; preds = %143, %55
  br label %150

150:                                              ; preds = %149, %63
  %151 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %152 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %11, align 8
  %153 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %152, i32 0, i32 0
  %154 = call i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp* %151, i32* %153)
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %150, %132
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @mlxsw_sp_mr_erif_list_init(i32*) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_erif_populate(%struct.mlxsw_sp*, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @mlxsw_sp_flow_counter_alloc(%struct.mlxsw_sp*, i32*) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_afa_block_destroy(i32) #1

declare dso_local i32 @mlxsw_sp_flow_counter_free(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
