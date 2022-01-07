; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.parman_item = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32, i32 }

@IN6ADDR_ANY_INIT = common dso_local global %struct.in6_addr zeroinitializer, align 4
@MLXSW_REG_RMFT2_LEN = common dso_local global i32 0, align 4
@rmft2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.parman_item*, %struct.mlxsw_sp_mr_route_key*)* @mlxsw_sp1_mr_tcam_route_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_route_remove(%struct.mlxsw_sp* %0, %struct.parman_item* %1, %struct.mlxsw_sp_mr_route_key* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.parman_item*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.parman_item* %1, %struct.parman_item** %5, align 8
  store %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_sp_mr_route_key** %6, align 8
  %10 = bitcast %struct.in6_addr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.in6_addr* @IN6ADDR_ANY_INIT to i8*), i64 4, i1 false)
  %11 = load i32, i32* @MLXSW_REG_RMFT2_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 129, label %18
    i32 128, label %26
  ]

18:                                               ; preds = %3
  %19 = load %struct.parman_item*, %struct.parman_item** %5, align 8
  %20 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlxsw_reg_rmft2_ipv4_pack(i8* %14, i32 0, i32 %21, i32 %24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.parman_item*, %struct.parman_item** %5, align 8
  %28 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlxsw_reg_rmft2_ipv6_pack(i8* %14, i32 0, i32 %29, i32 %32, i32 0, i32 0, i32 %34, i32 %36, i32 %38, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %3, %26, %18
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @rmft2, align 4
  %47 = call i32 @MLXSW_REG(i32 %46)
  %48 = call i32 @mlxsw_reg_write(i32 %45, i32 %47, i8* %14)
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_rmft2_ipv4_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #3

declare dso_local i32 @mlxsw_reg_rmft2_ipv6_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #3

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #3

declare dso_local i32 @MLXSW_REG(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
