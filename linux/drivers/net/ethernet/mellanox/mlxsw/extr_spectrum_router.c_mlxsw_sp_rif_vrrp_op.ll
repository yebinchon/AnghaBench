; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_vrrp_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_vrrp_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RITR_LEN = common dso_local global i32 0, align 4
@ritr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32*, i32)* @mlxsw_sp_rif_vrrp_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_vrrp_op(%struct.mlxsw_sp* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MLXSW_REG_RITR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @mlxsw_sp_rif_macvlan_is_vrrp4(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @mlxsw_sp_rif_macvlan_is_vrrp6(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mlxsw_reg_ritr_rif_pack(i8* %18, i32 %37)
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ritr, align 4
  %43 = call i32 @MLXSW_REG(i32 %42)
  %44 = call i32 @mlxsw_reg_query(i32 %41, i32 %43, i8* %18)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

49:                                               ; preds = %36
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @mlxsw_sp_rif_macvlan_is_vrrp4(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @mlxsw_reg_ritr_if_vrrp_id_ipv4_set(i8* %18, i32 %54)
  br label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @mlxsw_reg_ritr_if_vrrp_id_ipv6_set(i8* %18, i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ritr, align 4
  %64 = call i32 @MLXSW_REG(i32 %63)
  %65 = call i32 @mlxsw_reg_write(i32 %62, i32 %64, i8* %18)
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %59, %47, %35
  %67 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mlxsw_sp_rif_macvlan_is_vrrp4(i32*) #2

declare dso_local i32 @mlxsw_sp_rif_macvlan_is_vrrp6(i32*) #2

declare dso_local i32 @mlxsw_reg_ritr_rif_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ritr_if_vrrp_id_ipv4_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_ritr_if_vrrp_id_ipv6_set(i8*, i32) #2

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
