; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_set_entropy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_set_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tun_entropy = type { i32, i32, i64 }
%struct.mlx5_port_tun_entropy_flags = type { i32, i64, i64, i64, i64 }

@MLX5_REFORMAT_TYPE_L2_TO_NVGRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unexpected entropy calc setting - expected %d\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_tun_entropy*, i32, i32)* @mlx5_set_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_set_entropy(%struct.mlx5_tun_entropy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_tun_entropy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_port_tun_entropy_flags, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_tun_entropy* %0, %struct.mlx5_tun_entropy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlx5_query_port_tun_entropy(i32 %12, %struct.mlx5_port_tun_entropy_flags* %8)
  %14 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_NVGRE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %109

26:                                               ; preds = %21
  %27 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @mlx5_set_port_gre_tun_entropy_calc(i32 %29, i32 %30, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %109

40:                                               ; preds = %26
  br label %108

41:                                               ; preds = %17, %3
  %42 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @mlx5_core_warn(i32 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %109

66:                                               ; preds = %49, %45
  %67 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %109

74:                                               ; preds = %66
  %75 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @mlx5_set_port_tun_entropy_calc(i32 %77, i32 %78, i64 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %109

86:                                               ; preds = %74
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.mlx5_port_tun_entropy_flags, %struct.mlx5_port_tun_entropy_flags* %8, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mlx5_set_port_tun_entropy_calc(i32 %99, i32 1, i64 0)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %109

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %93, %86
  br label %107

107:                                              ; preds = %106, %41
  br label %108

108:                                              ; preds = %107, %40
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %103, %84, %71, %54, %38, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @mlx5_query_port_tun_entropy(i32, %struct.mlx5_port_tun_entropy_flags*) #1

declare dso_local i32 @mlx5_set_port_gre_tun_entropy_calc(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @mlx5_set_port_tun_entropy_calc(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
