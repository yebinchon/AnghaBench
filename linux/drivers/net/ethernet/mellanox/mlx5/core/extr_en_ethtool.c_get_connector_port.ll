; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_get_connector_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_get_connector_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5E_CONNECTOR_TYPE_NUMBER = common dso_local global i64 0, align 8
@ptys2connector_type = common dso_local global i64* null, align 8
@MLX5E_10GBASE_SR = common dso_local global i32 0, align 4
@MLX5E_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLX5E_100GBASE_SR4 = common dso_local global i32 0, align 4
@MLX5E_1000BASE_CX_SGMII = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i64 0, align 8
@MLX5E_40GBASE_CR4 = common dso_local global i32 0, align 4
@MLX5E_10GBASE_CR = common dso_local global i32 0, align 4
@MLX5E_100GBASE_CR4 = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i64 0, align 8
@MLX5E_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLX5E_10GBASE_KR = common dso_local global i32 0, align 4
@MLX5E_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLX5E_100GBASE_KR4 = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i64 0, align 8
@PORT_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @get_connector_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_connector_port(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MLX5E_CONNECTOR_TYPE_NUMBER, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i64*, i64** @ptys2connector_type, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  br label %67

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MLX5E_10GBASE_SR, align 4
  %20 = call i32 @MLX5E_PROT_MASK(i32 %19)
  %21 = load i32, i32* @MLX5E_40GBASE_SR4, align 4
  %22 = call i32 @MLX5E_PROT_MASK(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @MLX5E_100GBASE_SR4, align 4
  %25 = call i32 @MLX5E_PROT_MASK(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @MLX5E_1000BASE_CX_SGMII, align 4
  %28 = call i32 @MLX5E_PROT_MASK(i32 %27)
  %29 = or i32 %26, %28
  %30 = and i32 %18, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i64, i64* @PORT_FIBRE, align 8
  store i64 %33, i64* %3, align 8
  br label %67

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MLX5E_40GBASE_CR4, align 4
  %37 = call i32 @MLX5E_PROT_MASK(i32 %36)
  %38 = load i32, i32* @MLX5E_10GBASE_CR, align 4
  %39 = call i32 @MLX5E_PROT_MASK(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @MLX5E_100GBASE_CR4, align 4
  %42 = call i32 @MLX5E_PROT_MASK(i32 %41)
  %43 = or i32 %40, %42
  %44 = and i32 %35, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* @PORT_DA, align 8
  store i64 %47, i64* %3, align 8
  br label %67

48:                                               ; preds = %34
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MLX5E_10GBASE_KX4, align 4
  %51 = call i32 @MLX5E_PROT_MASK(i32 %50)
  %52 = load i32, i32* @MLX5E_10GBASE_KR, align 4
  %53 = call i32 @MLX5E_PROT_MASK(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @MLX5E_40GBASE_KR4, align 4
  %56 = call i32 @MLX5E_PROT_MASK(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @MLX5E_100GBASE_KR4, align 4
  %59 = call i32 @MLX5E_PROT_MASK(i32 %58)
  %60 = or i32 %57, %59
  %61 = and i32 %49, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i64, i64* @PORT_NONE, align 8
  store i64 %64, i64* %3, align 8
  br label %67

65:                                               ; preds = %48
  %66 = load i64, i64* @PORT_OTHER, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %63, %46, %32, %12
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @MLX5E_PROT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
