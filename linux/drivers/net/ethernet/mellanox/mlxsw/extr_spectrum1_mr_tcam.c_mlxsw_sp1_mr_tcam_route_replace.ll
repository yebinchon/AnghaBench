; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.parman_item = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlxsw_afa_block = type { i32 }

@MLXSW_REG_RMFT2_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RMFT2_IRIF_MASK_IGNORE = common dso_local global i32 0, align 4
@rmft2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.parman_item*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*)* @mlxsw_sp1_mr_tcam_route_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_route_replace(%struct.mlxsw_sp* %0, %struct.parman_item* %1, %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_afa_block* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.parman_item*, align 8
  %7 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %8 = alloca %struct.mlxsw_afa_block*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.parman_item* %1, %struct.parman_item** %6, align 8
  store %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_sp_mr_route_key** %7, align 8
  store %struct.mlxsw_afa_block* %3, %struct.mlxsw_afa_block** %8, align 8
  %11 = load i32, i32* @MLXSW_REG_RMFT2_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %76 [
    i32 129, label %18
    i32 128, label %49
  ]

18:                                               ; preds = %4
  %19 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %20 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MLXSW_REG_RMFT2_IRIF_MASK_IGNORE, align 4
  %26 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  %31 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohl(i32 %39)
  %41 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %8, align 8
  %47 = call i32 @mlxsw_afa_block_first_set(%struct.mlxsw_afa_block* %46)
  %48 = call i32 @mlxsw_reg_rmft2_ipv4_pack(i8* %14, i32 1, i32 %21, i32 %24, i32 %25, i32 0, i32 %30, i32 %35, i32 %40, i32 %45, i32 %47)
  br label %76

49:                                               ; preds = %4
  %50 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %51 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MLXSW_REG_RMFT2_IRIF_MASK_IGNORE, align 4
  %57 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %8, align 8
  %74 = call i32 @mlxsw_afa_block_first_set(%struct.mlxsw_afa_block* %73)
  %75 = call i32 @mlxsw_reg_rmft2_ipv6_pack(i8* %14, i32 1, i32 %52, i32 %55, i32 %56, i32 0, i32 %60, i32 %64, i32 %68, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %49, %4, %18
  %77 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @rmft2, align 4
  %81 = call i32 @MLXSW_REG(i32 %80)
  %82 = call i32 @mlxsw_reg_write(i32 %79, i32 %81, i8* %14)
  %83 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %83)
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_rmft2_ipv4_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @mlxsw_afa_block_first_set(%struct.mlxsw_afa_block*) #2

declare dso_local i32 @mlxsw_reg_rmft2_ipv6_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
