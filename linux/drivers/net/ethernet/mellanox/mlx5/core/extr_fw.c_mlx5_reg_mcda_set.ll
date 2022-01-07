; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_reg_mcda_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_reg_mcda_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mcda_reg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_REG_MCDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32, i32, i32*)* @mlx5_reg_mcda_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_reg_mcda_set(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %22 = load i32, i32* @mcda_reg, align 4
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @mcda_reg, align 4
  %27 = call i32 @MLX5_ST_SZ_DW(i32 %26)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 2
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kzalloc(i32 %33, i32 %34)
  store i32* %35, i32** %20, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %92

41:                                               ; preds = %5
  %42 = load i32, i32* @mcda_reg, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MLX5_SET(i32 %42, i32* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @mcda_reg, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MLX5_SET(i32 %47, i32* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @mcda_reg, align 4
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @MLX5_SET(i32 %52, i32* %53, i32 %54, i32 %55)
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %78, %41
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i32, i32* %16, align 4
  %63 = mul nsw i32 %62, 4
  store i32 %63, i32* %17, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @htonl(i32 %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* @mcda_reg, align 4
  %71 = load i32*, i32** %20, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i64 @MLX5_ADDR_OF(i32 %70, i32* %71, i32* %72)
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = call i32 @memcpy(i64 %76, i32* %19, i32 4)
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %57

81:                                               ; preds = %57
  %82 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %13, align 4
  %85 = mul nuw i64 4, %28
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @MLX5_REG_MCDA, align 4
  %88 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %82, i32* %83, i32 %84, i32* %30, i32 %86, i32 %87, i32 0, i32 1)
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %20, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %92

92:                                               ; preds = %81, %38
  %93 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i32*, i32*) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
