; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_query_port_tun_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_query_port_tun_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_port_tun_entropy_flags = type { i32, i32, i32, i32, i32, i32 }

@pcmr_reg = common dso_local global i32 0, align 4
@ports_check = common dso_local global i32 0, align 4
@entropy_force_cap = common dso_local global i32 0, align 4
@entropy_calc_cap = common dso_local global i32 0, align 4
@entropy_gre_calc_cap = common dso_local global i32 0, align 4
@entropy_force = common dso_local global i32 0, align 4
@entropy_calc = common dso_local global i32 0, align 4
@entropy_gre_calc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_port_tun_entropy_flags*)* @mlx5_query_port_tun_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_query_port_tun_entropy(%struct.mlx5_core_dev* %0, %struct.mlx5_port_tun_entropy_flags* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_port_tun_entropy_flags*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_port_tun_entropy_flags* %1, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %8 = load i32, i32* @pcmr_reg, align 4
  %9 = call i32 @MLX5_ST_SZ_DW(i32 %8)
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %21, i32 0, i32 4
  store i32 1, i32* %22, align 4
  %23 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %23, i32 0, i32 5
  store i32 1, i32* %24, align 4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = load i32, i32* @ports_check, align 4
  %27 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %92

30:                                               ; preds = %2
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %32 = mul nuw i64 4, %10
  %33 = trunc i64 %32 to i32
  %34 = call i64 @mlx5_query_ports_check(%struct.mlx5_core_dev* %31, i32* %12, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %92

37:                                               ; preds = %30
  %38 = load i32, i32* @pcmr_reg, align 4
  %39 = load i32, i32* @entropy_force_cap, align 4
  %40 = call i32 @MLX5_GET(i32 %38, i32* %12, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @pcmr_reg, align 4
  %48 = load i32, i32* @entropy_calc_cap, align 4
  %49 = call i32 @MLX5_GET(i32 %47, i32* %12, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @pcmr_reg, align 4
  %57 = load i32, i32* @entropy_gre_calc_cap, align 4
  %58 = call i32 @MLX5_GET(i32 %56, i32* %12, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @pcmr_reg, align 4
  %66 = load i32, i32* @entropy_force, align 4
  %67 = call i32 @MLX5_GET(i32 %65, i32* %12, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @pcmr_reg, align 4
  %75 = load i32, i32* @entropy_calc, align 4
  %76 = call i32 @MLX5_GET(i32 %74, i32* %12, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @pcmr_reg, align 4
  %84 = load i32, i32* @entropy_gre_calc, align 4
  %85 = call i32 @MLX5_GET(i32 %83, i32* %12, i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.mlx5_port_tun_entropy_flags*, %struct.mlx5_port_tun_entropy_flags** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %37, %36, %29
  %93 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %7, align 4
  switch i32 %94, label %96 [
    i32 0, label %95
    i32 1, label %95
  ]

95:                                               ; preds = %92, %92
  ret void

96:                                               ; preds = %92
  unreachable
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @mlx5_query_ports_check(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
