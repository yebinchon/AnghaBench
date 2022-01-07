; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_ptys2ethtool_update_supported_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_ptys2ethtool_update_supported_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ptys_reg = type { i32 }

@MLX4_10GBASE_T = common dso_local global i32 0, align 4
@MLX4_1000BASE_T = common dso_local global i32 0, align 4
@MLX4_100BASE_TX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_TP_BIT = common dso_local global i32 0, align 4
@MLX4_10GBASE_CR = common dso_local global i32 0, align 4
@MLX4_10GBASE_SR = common dso_local global i32 0, align 4
@MLX4_56GBASE_SR4 = common dso_local global i32 0, align 4
@MLX4_40GBASE_CR4 = common dso_local global i32 0, align 4
@MLX4_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLX4_1000BASE_CX_SGMII = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_FIBRE_BIT = common dso_local global i32 0, align 4
@MLX4_56GBASE_KR4 = common dso_local global i32 0, align 4
@MLX4_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLX4_20GBASE_KR2 = common dso_local global i32 0, align 4
@MLX4_10GBASE_KR = common dso_local global i32 0, align 4
@MLX4_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLX4_1000BASE_KX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Backplane_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.mlx4_ptys_reg*)* @ptys2ethtool_update_supported_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptys2ethtool_update_supported_port(i64* %0, %struct.mlx4_ptys_reg* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.mlx4_ptys_reg*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.mlx4_ptys_reg* %1, %struct.mlx4_ptys_reg** %4, align 8
  %6 = load %struct.mlx4_ptys_reg*, %struct.mlx4_ptys_reg** %4, align 8
  %7 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @be32_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MLX4_10GBASE_T, align 4
  %12 = call i32 @MLX4_PROT_MASK(i32 %11)
  %13 = load i32, i32* @MLX4_1000BASE_T, align 4
  %14 = call i32 @MLX4_PROT_MASK(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @MLX4_100BASE_TX, align 4
  %17 = call i32 @MLX4_PROT_MASK(i32 %16)
  %18 = or i32 %15, %17
  %19 = and i32 %10, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @ETHTOOL_LINK_MODE_TP_BIT, align 4
  %23 = load i64*, i64** %3, align 8
  %24 = call i32 @__set_bit(i32 %22, i64* %23)
  br label %77

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MLX4_10GBASE_CR, align 4
  %28 = call i32 @MLX4_PROT_MASK(i32 %27)
  %29 = load i32, i32* @MLX4_10GBASE_SR, align 4
  %30 = call i32 @MLX4_PROT_MASK(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* @MLX4_56GBASE_SR4, align 4
  %33 = call i32 @MLX4_PROT_MASK(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @MLX4_40GBASE_CR4, align 4
  %36 = call i32 @MLX4_PROT_MASK(i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* @MLX4_40GBASE_SR4, align 4
  %39 = call i32 @MLX4_PROT_MASK(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @MLX4_1000BASE_CX_SGMII, align 4
  %42 = call i32 @MLX4_PROT_MASK(i32 %41)
  %43 = or i32 %40, %42
  %44 = and i32 %26, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i32, i32* @ETHTOOL_LINK_MODE_FIBRE_BIT, align 4
  %48 = load i64*, i64** %3, align 8
  %49 = call i32 @__set_bit(i32 %47, i64* %48)
  br label %76

50:                                               ; preds = %25
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MLX4_56GBASE_KR4, align 4
  %53 = call i32 @MLX4_PROT_MASK(i32 %52)
  %54 = load i32, i32* @MLX4_40GBASE_KR4, align 4
  %55 = call i32 @MLX4_PROT_MASK(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @MLX4_20GBASE_KR2, align 4
  %58 = call i32 @MLX4_PROT_MASK(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @MLX4_10GBASE_KR, align 4
  %61 = call i32 @MLX4_PROT_MASK(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @MLX4_10GBASE_KX4, align 4
  %64 = call i32 @MLX4_PROT_MASK(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* @MLX4_1000BASE_KX, align 4
  %67 = call i32 @MLX4_PROT_MASK(i32 %66)
  %68 = or i32 %65, %67
  %69 = and i32 %51, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %50
  %72 = load i32, i32* @ETHTOOL_LINK_MODE_Backplane_BIT, align 4
  %73 = load i64*, i64** %3, align 8
  %74 = call i32 @__set_bit(i32 %72, i64* %73)
  br label %75

75:                                               ; preds = %71, %50
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %21
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @MLX4_PROT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
