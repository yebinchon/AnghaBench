; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_ptys2ethtool_supported_advertised_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_ptys2ethtool_supported_advertised_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_link_ksettings = type { i32 }

@MLX5E_CONNECTOR_TYPE_NUMBER = common dso_local global i32 0, align 4
@MLX5E_10GBASE_CR = common dso_local global i32 0, align 4
@MLX5E_10GBASE_SR = common dso_local global i32 0, align 4
@MLX5E_40GBASE_CR4 = common dso_local global i32 0, align 4
@MLX5E_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLX5E_100GBASE_SR4 = common dso_local global i32 0, align 4
@MLX5E_1000BASE_CX_SGMII = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@FIBRE = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@MLX5E_100GBASE_KR4 = common dso_local global i32 0, align 4
@MLX5E_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLX5E_10GBASE_KR = common dso_local global i32 0, align 4
@MLX5E_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLX5E_1000BASE_KX = common dso_local global i32 0, align 4
@Backplane = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@AUI = common dso_local global i32 0, align 4
@BNC = common dso_local global i32 0, align 4
@MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ethtool_link_ksettings*, i32, i32)* @ptys2ethtool_supported_advertised_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptys2ethtool_supported_advertised_port(%struct.ethtool_link_ksettings* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ethtool_link_ksettings* %0, %struct.ethtool_link_ksettings** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MLX5E_CONNECTOR_TYPE_NUMBER, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %9, %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MLX5E_10GBASE_CR, align 4
  %16 = call i32 @MLX5E_PROT_MASK(i32 %15)
  %17 = load i32, i32* @MLX5E_10GBASE_SR, align 4
  %18 = call i32 @MLX5E_PROT_MASK(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @MLX5E_40GBASE_CR4, align 4
  %21 = call i32 @MLX5E_PROT_MASK(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @MLX5E_40GBASE_SR4, align 4
  %24 = call i32 @MLX5E_PROT_MASK(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @MLX5E_100GBASE_SR4, align 4
  %27 = call i32 @MLX5E_PROT_MASK(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @MLX5E_1000BASE_CX_SGMII, align 4
  %30 = call i32 @MLX5E_PROT_MASK(i32 %29)
  %31 = or i32 %28, %30
  %32 = and i32 %14, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %13
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %36 = load i32, i32* @supported, align 4
  %37 = load i32, i32* @FIBRE, align 4
  %38 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %35, i32 %36, i32 %37)
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %40 = load i32, i32* @advertising, align 4
  %41 = load i32, i32* @FIBRE, align 4
  %42 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %13
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MLX5E_100GBASE_KR4, align 4
  %46 = call i32 @MLX5E_PROT_MASK(i32 %45)
  %47 = load i32, i32* @MLX5E_40GBASE_KR4, align 4
  %48 = call i32 @MLX5E_PROT_MASK(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @MLX5E_10GBASE_KR, align 4
  %51 = call i32 @MLX5E_PROT_MASK(i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @MLX5E_10GBASE_KX4, align 4
  %54 = call i32 @MLX5E_PROT_MASK(i32 %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* @MLX5E_1000BASE_KX, align 4
  %57 = call i32 @MLX5E_PROT_MASK(i32 %56)
  %58 = or i32 %55, %57
  %59 = and i32 %44, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %43
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %63 = load i32, i32* @supported, align 4
  %64 = load i32, i32* @Backplane, align 4
  %65 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %62, i32 %63, i32 %64)
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %67 = load i32, i32* @advertising, align 4
  %68 = load i32, i32* @Backplane, align 4
  %69 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %43
  br label %129

71:                                               ; preds = %9
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %128 [
    i32 128, label %73
    i32 135, label %82
    i32 134, label %91
    i32 131, label %100
    i32 132, label %109
    i32 133, label %118
    i32 130, label %127
    i32 129, label %127
  ]

73:                                               ; preds = %71
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %75 = load i32, i32* @supported, align 4
  %76 = load i32, i32* @TP, align 4
  %77 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %74, i32 %75, i32 %76)
  %78 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %79 = load i32, i32* @advertising, align 4
  %80 = load i32, i32* @TP, align 4
  %81 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %78, i32 %79, i32 %80)
  br label %129

82:                                               ; preds = %71
  %83 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %84 = load i32, i32* @supported, align 4
  %85 = load i32, i32* @AUI, align 4
  %86 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %83, i32 %84, i32 %85)
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %88 = load i32, i32* @advertising, align 4
  %89 = load i32, i32* @AUI, align 4
  %90 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %87, i32 %88, i32 %89)
  br label %129

91:                                               ; preds = %71
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %93 = load i32, i32* @supported, align 4
  %94 = load i32, i32* @BNC, align 4
  %95 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %92, i32 %93, i32 %94)
  %96 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %97 = load i32, i32* @advertising, align 4
  %98 = load i32, i32* @BNC, align 4
  %99 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %96, i32 %97, i32 %98)
  br label %129

100:                                              ; preds = %71
  %101 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %102 = load i32, i32* @supported, align 4
  %103 = load i32, i32* @MII, align 4
  %104 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %101, i32 %102, i32 %103)
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %106 = load i32, i32* @advertising, align 4
  %107 = load i32, i32* @MII, align 4
  %108 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %105, i32 %106, i32 %107)
  br label %129

109:                                              ; preds = %71
  %110 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %111 = load i32, i32* @supported, align 4
  %112 = load i32, i32* @FIBRE, align 4
  %113 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %110, i32 %111, i32 %112)
  %114 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %115 = load i32, i32* @advertising, align 4
  %116 = load i32, i32* @FIBRE, align 4
  %117 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %114, i32 %115, i32 %116)
  br label %129

118:                                              ; preds = %71
  %119 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %120 = load i32, i32* @supported, align 4
  %121 = load i32, i32* @Backplane, align 4
  %122 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %119, i32 %120, i32 %121)
  %123 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %124 = load i32, i32* @advertising, align 4
  %125 = load i32, i32* @Backplane, align 4
  %126 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %123, i32 %124, i32 %125)
  br label %129

127:                                              ; preds = %71, %71
  br label %128

128:                                              ; preds = %71, %127
  br label %129

129:                                              ; preds = %70, %128, %118, %109, %100, %91, %82, %73
  ret void
}

declare dso_local i32 @MLX5E_PROT_MASK(i32) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
