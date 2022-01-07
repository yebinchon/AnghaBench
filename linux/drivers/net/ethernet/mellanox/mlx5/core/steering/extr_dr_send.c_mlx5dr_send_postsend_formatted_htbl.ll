; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_postsend_formatted_htbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_postsend_formatted_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_ste_htbl = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.postsend_info = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }

@DR_STE_SIZE = common dso_local global i32 0, align 4
@DR_STE_SIZE_REDUCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_send_postsend_formatted_htbl(%struct.mlx5dr_domain* %0, %struct.mlx5dr_ste_htbl* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.postsend_info, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store %struct.mlx5dr_ste_htbl* %1, %struct.mlx5dr_ste_htbl** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %25 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %7, align 8
  %26 = call i32 @dr_get_tbl_copy_details(%struct.mlx5dr_domain* %24, %struct.mlx5dr_ste_htbl* %25, i32** %13, i32* %10, i32* %11, i32* %12)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %114

31:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %63, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @DR_STE_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @DR_STE_SIZE, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %36
  %50 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %32

66:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %106, %66
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DR_STE_SIZE, align 4
  %75 = sdiv i32 %73, %74
  %76 = mul nsw i32 %72, %75
  store i32 %76, i32* %17, align 4
  %77 = bitcast %struct.postsend_info* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %77, i8 0, i64 32, i1 false)
  %78 = load i32*, i32** %13, align 8
  %79 = ptrtoint i32* %78 to i64
  %80 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %18, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %18, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %18, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %7, align 8
  %88 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @mlx5dr_ste_get_mr_addr(i32 %91)
  %93 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %18, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %7, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %18, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %101 = call i32 @dr_postsend_icm_data(%struct.mlx5dr_domain* %100, %struct.postsend_info* %18)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %71
  br label %110

105:                                              ; preds = %71
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %67

109:                                              ; preds = %67
  br label %110

110:                                              ; preds = %109, %104
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %29
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @dr_get_tbl_copy_details(%struct.mlx5dr_domain*, %struct.mlx5dr_ste_htbl*, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlx5dr_ste_get_mr_addr(i32) #1

declare dso_local i32 @dr_postsend_icm_data(%struct.mlx5dr_domain*, %struct.postsend_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
