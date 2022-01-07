; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_ptys_get_active_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_ptys_get_active_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ptys_reg = type { i32, i32 }

@MLX4_10GBASE_T = common dso_local global i32 0, align 4
@MLX4_1000BASE_T = common dso_local global i32 0, align 4
@MLX4_100BASE_TX = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@MLX4_10GBASE_SR = common dso_local global i32 0, align 4
@MLX4_56GBASE_SR4 = common dso_local global i32 0, align 4
@MLX4_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLX4_1000BASE_CX_SGMII = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@MLX4_10GBASE_CR = common dso_local global i32 0, align 4
@MLX4_56GBASE_CR4 = common dso_local global i32 0, align 4
@MLX4_40GBASE_CR4 = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@MLX4_56GBASE_KR4 = common dso_local global i32 0, align 4
@MLX4_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLX4_20GBASE_KR2 = common dso_local global i32 0, align 4
@MLX4_10GBASE_KR = common dso_local global i32 0, align 4
@MLX4_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLX4_1000BASE_KX = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ptys_reg*)* @ptys_get_active_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptys_get_active_port(%struct.mlx4_ptys_reg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ptys_reg*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_ptys_reg* %0, %struct.mlx4_ptys_reg** %3, align 8
  %5 = load %struct.mlx4_ptys_reg*, %struct.mlx4_ptys_reg** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be32_to_cpu(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.mlx4_ptys_reg*, %struct.mlx4_ptys_reg** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MLX4_10GBASE_T, align 4
  %19 = call i32 @MLX4_PROT_MASK(i32 %18)
  %20 = load i32, i32* @MLX4_1000BASE_T, align 4
  %21 = call i32 @MLX4_PROT_MASK(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @MLX4_100BASE_TX, align 4
  %24 = call i32 @MLX4_PROT_MASK(i32 %23)
  %25 = or i32 %22, %24
  %26 = and i32 %17, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @PORT_TP, align 4
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MLX4_10GBASE_SR, align 4
  %33 = call i32 @MLX4_PROT_MASK(i32 %32)
  %34 = load i32, i32* @MLX4_56GBASE_SR4, align 4
  %35 = call i32 @MLX4_PROT_MASK(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @MLX4_40GBASE_SR4, align 4
  %38 = call i32 @MLX4_PROT_MASK(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @MLX4_1000BASE_CX_SGMII, align 4
  %41 = call i32 @MLX4_PROT_MASK(i32 %40)
  %42 = or i32 %39, %41
  %43 = and i32 %31, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @MLX4_10GBASE_CR, align 4
  %50 = call i32 @MLX4_PROT_MASK(i32 %49)
  %51 = load i32, i32* @MLX4_56GBASE_CR4, align 4
  %52 = call i32 @MLX4_PROT_MASK(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @MLX4_40GBASE_CR4, align 4
  %55 = call i32 @MLX4_PROT_MASK(i32 %54)
  %56 = or i32 %53, %55
  %57 = and i32 %48, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @PORT_DA, align 4
  store i32 %60, i32* %2, align 4
  br label %86

61:                                               ; preds = %47
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MLX4_56GBASE_KR4, align 4
  %64 = call i32 @MLX4_PROT_MASK(i32 %63)
  %65 = load i32, i32* @MLX4_40GBASE_KR4, align 4
  %66 = call i32 @MLX4_PROT_MASK(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* @MLX4_20GBASE_KR2, align 4
  %69 = call i32 @MLX4_PROT_MASK(i32 %68)
  %70 = or i32 %67, %69
  %71 = load i32, i32* @MLX4_10GBASE_KR, align 4
  %72 = call i32 @MLX4_PROT_MASK(i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @MLX4_10GBASE_KX4, align 4
  %75 = call i32 @MLX4_PROT_MASK(i32 %74)
  %76 = or i32 %73, %75
  %77 = load i32, i32* @MLX4_1000BASE_KX, align 4
  %78 = call i32 @MLX4_PROT_MASK(i32 %77)
  %79 = or i32 %76, %78
  %80 = and i32 %62, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %61
  %83 = load i32, i32* @PORT_NONE, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %61
  %85 = load i32, i32* @PORT_OTHER, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %82, %59, %45, %28
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @MLX4_PROT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
