; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mac_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mac_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32)* @mac_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %8, align 4
  br label %79

27:                                               ; preds = %7
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @get_param_l(i32* %31)
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %15, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %32, %30 ], [ %34, %33 ]
  store i32 %36, i32* %17, align 4
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %37, i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %79

46:                                               ; preds = %35
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %18, align 4
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @__mlx4_register_mac(%struct.mlx4_dev* %48, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @set_param_l(i32* %56, i32 %57)
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @mac_add_to_slave(%struct.mlx4_dev* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @__mlx4_unregister_mac(%struct.mlx4_dev* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %62
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %43, %25
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @__mlx4_register_mac(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @mac_add_to_slave(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_unregister_mac(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
