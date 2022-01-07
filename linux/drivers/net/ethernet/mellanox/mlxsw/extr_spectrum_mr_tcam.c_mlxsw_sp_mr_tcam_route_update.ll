; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr_tcam_ops* }
%struct.mlxsw_sp_mr_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32*, %struct.mlxsw_afa_block*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp_mr_route_info = type { i32, i32, i32 }
%struct.mlxsw_sp_mr_tcam_route = type { i32, i32, i32, %struct.mlxsw_sp_mr_tcam_erif_list, %struct.mlxsw_afa_block*, i32, i32, i32 }
%struct.mlxsw_sp_mr_tcam_erif_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, %struct.mlxsw_sp_mr_route_info*)* @mlxsw_sp_mr_tcam_route_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_tcam_route_update(%struct.mlxsw_sp* %0, i8* %1, %struct.mlxsw_sp_mr_route_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp_mr_route_info*, align 8
  %8 = alloca %struct.mlxsw_sp_mr_tcam_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_tcam_route*, align 8
  %10 = alloca %struct.mlxsw_sp_mr_tcam_erif_list, align 4
  %11 = alloca %struct.mlxsw_afa_block*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_sp_mr_route_info* %2, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %14, align 8
  store %struct.mlxsw_sp_mr_tcam_ops* %15, %struct.mlxsw_sp_mr_tcam_ops** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.mlxsw_sp_mr_tcam_route*
  store %struct.mlxsw_sp_mr_tcam_route* %17, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %18 = call i32 @mlxsw_sp_mr_erif_list_init(%struct.mlxsw_sp_mr_tcam_erif_list* %10)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %20 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %21 = call i32 @mlxsw_sp_mr_tcam_erif_populate(%struct.mlxsw_sp* %19, %struct.mlxsw_sp_mr_tcam_erif_list* %10, %struct.mlxsw_sp_mr_route_info* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %96

25:                                               ; preds = %3
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %27 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, %struct.mlxsw_sp_mr_route_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, %struct.mlxsw_sp_mr_route_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, %struct.mlxsw_sp_mr_route_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.mlxsw_afa_block* @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp* %26, i32 %29, i32 %32, i32 %35, i32 %38, %struct.mlxsw_sp_mr_tcam_erif_list* %10)
  store %struct.mlxsw_afa_block* %39, %struct.mlxsw_afa_block** %11, align 8
  %40 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %11, align 8
  %41 = call i64 @IS_ERR(%struct.mlxsw_afa_block* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %11, align 8
  %45 = call i32 @PTR_ERR(%struct.mlxsw_afa_block* %44)
  store i32 %45, i32* %12, align 4
  br label %95

46:                                               ; preds = %25
  %47 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %8, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.mlxsw_sp.0*, i32, i32*, %struct.mlxsw_afa_block*)*, i32 (%struct.mlxsw_sp.0*, i32, i32*, %struct.mlxsw_afa_block*)** %48, align 8
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %51 = bitcast %struct.mlxsw_sp* %50 to %struct.mlxsw_sp.0*
  %52 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %55, i32 0, i32 5
  %57 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %11, align 8
  %58 = call i32 %49(%struct.mlxsw_sp.0* %51, i32 %54, i32* %56, %struct.mlxsw_afa_block* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %92

62:                                               ; preds = %46
  %63 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %63, i32 0, i32 4
  %65 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %64, align 8
  %66 = call i32 @mlxsw_sp_mr_tcam_afa_block_destroy(%struct.mlxsw_afa_block* %65)
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %68 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %68, i32 0, i32 3
  %70 = call i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp* %67, %struct.mlxsw_sp_mr_tcam_erif_list* %69)
  %71 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %11, align 8
  %72 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %72, i32 0, i32 4
  store %struct.mlxsw_afa_block* %71, %struct.mlxsw_afa_block** %73, align 8
  %74 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %74, i32 0, i32 3
  %76 = call i32 @mlxsw_sp_mr_erif_list_move(%struct.mlxsw_sp_mr_tcam_erif_list* %75, %struct.mlxsw_sp_mr_tcam_erif_list* %10)
  %77 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, %struct.mlxsw_sp_mr_route_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, %struct.mlxsw_sp_mr_route_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mlxsw_sp_mr_route_info*, %struct.mlxsw_sp_mr_route_info** %7, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, %struct.mlxsw_sp_mr_route_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %4, align 4
  br label %100

92:                                               ; preds = %61
  %93 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %11, align 8
  %94 = call i32 @mlxsw_sp_mr_tcam_afa_block_destroy(%struct.mlxsw_afa_block* %93)
  br label %95

95:                                               ; preds = %92, %43
  br label %96

96:                                               ; preds = %95, %24
  %97 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %98 = call i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp* %97, %struct.mlxsw_sp_mr_tcam_erif_list* %10)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %62
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @mlxsw_sp_mr_erif_list_init(%struct.mlxsw_sp_mr_tcam_erif_list*) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_erif_populate(%struct.mlxsw_sp*, %struct.mlxsw_sp_mr_tcam_erif_list*, %struct.mlxsw_sp_mr_route_info*) #1

declare dso_local %struct.mlxsw_afa_block* @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp*, i32, i32, i32, i32, %struct.mlxsw_sp_mr_tcam_erif_list*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_afa_block_destroy(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp*, %struct.mlxsw_sp_mr_tcam_erif_list*) #1

declare dso_local i32 @mlxsw_sp_mr_erif_list_move(%struct.mlxsw_sp_mr_tcam_erif_list*, %struct.mlxsw_sp_mr_tcam_erif_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
