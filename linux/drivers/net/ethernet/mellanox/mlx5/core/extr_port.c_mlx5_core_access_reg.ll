; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_port.c_mlx5_core_access_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_port.c_mlx5_core_access_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@access_register_out = common dso_local global i32 0, align 4
@access_register_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@register_data = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_ACCESS_REG = common dso_local global i32 0, align 4
@op_mod = common dso_local global i32 0, align 4
@argument = common dso_local global i32 0, align 4
@register_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* @access_register_out, align 4
  %24 = call i32 @MLX5_ST_SZ_BYTES(i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* @access_register_in, align 4
  %28 = call i32 @MLX5_ST_SZ_BYTES(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %19, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kvzalloc(i32 %33, i32 %34)
  store i32* %35, i32** %21, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kvzalloc(i32 %36, i32 %37)
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %8
  %42 = load i32*, i32** %20, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %8
  br label %95

45:                                               ; preds = %41
  %46 = load i32, i32* @access_register_in, align 4
  %47 = load i32*, i32** %21, align 8
  %48 = load i32, i32* @register_data, align 4
  %49 = call i8* @MLX5_ADDR_OF(i32 %46, i32* %47, i32 %48)
  store i8* %49, i8** %22, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  %54 = load i32, i32* @access_register_in, align 4
  %55 = load i32*, i32** %21, align 8
  %56 = load i32, i32* @opcode, align 4
  %57 = load i32, i32* @MLX5_CMD_OP_ACCESS_REG, align 4
  %58 = call i32 @MLX5_SET(i32 %54, i32* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @access_register_in, align 4
  %60 = load i32*, i32** %21, align 8
  %61 = load i32, i32* @op_mod, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @MLX5_SET(i32 %59, i32* %60, i32 %61, i32 %65)
  %67 = load i32, i32* @access_register_in, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = load i32, i32* @argument, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @MLX5_SET(i32 %67, i32* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @access_register_in, align 4
  %73 = load i32*, i32** %21, align 8
  %74 = load i32, i32* @register_id, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @MLX5_SET(i32 %72, i32* %73, i32 %74, i32 %75)
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %20, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %77, i32* %78, i32 %79, i32* %80, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %45
  br label %95

86:                                               ; preds = %45
  %87 = load i32, i32* @access_register_out, align 4
  %88 = load i32*, i32** %20, align 8
  %89 = load i32, i32* @register_data, align 4
  %90 = call i8* @MLX5_ADDR_OF(i32 %87, i32* %88, i32 %89)
  store i8* %90, i8** %22, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %85, %44
  %96 = load i32*, i32** %20, align 8
  %97 = call i32 @kvfree(i32* %96)
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 @kvfree(i32* %98)
  %100 = load i32, i32* %19, align 4
  ret i32 %100
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
