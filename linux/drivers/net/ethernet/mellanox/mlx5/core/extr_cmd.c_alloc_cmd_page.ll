; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_alloc_cmd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_alloc_cmd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.mlx5_cmd = type { i32, i32, i32, i8*, i8* }

@MLX5_ADAPTER_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_cmd*)* @alloc_cmd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmd_page(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_cmd*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_cmd* %1, %struct.mlx5_cmd** %5, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %12 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @dma_alloc_coherent(%struct.device* %10, i32 %11, i32* %13, i32 %14)
  %16 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %2
  %26 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %25
  %36 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %47 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %96

49:                                               ; preds = %25
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %52 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dma_free_coherent(%struct.device* %50, i32 %51, i8* %54, i32 %57)
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %61 = mul nsw i32 2, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @dma_alloc_coherent(%struct.device* %59, i32 %62, i32* %64, i32 %65)
  %67 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %49
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %96

76:                                               ; preds = %49
  %77 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %81 = call i8* @PTR_ALIGN(i8* %79, i32 %80)
  %82 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %88 = call i32 @ALIGN(i32 %86, i32 %87)
  %89 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %92 = mul nsw i32 2, %91
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %76, %73, %35, %22
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
