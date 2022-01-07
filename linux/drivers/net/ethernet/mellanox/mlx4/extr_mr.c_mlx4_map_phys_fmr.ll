; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mlx4_fmr = type { i64, %struct.TYPE_10__*, i32, i8**, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@MLX4_MPT_STATUS_SW = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MLX4_MTT_FLAG_PRESENT = common dso_local global i32 0, align 4
@MLX4_MPT_STATUS_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_map_phys_fmr(%struct.mlx4_dev* %0, %struct.mlx4_fmr* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca %struct.mlx4_fmr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store %struct.mlx4_fmr* %1, %struct.mlx4_fmr** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @mlx4_check_fmr(%struct.mlx4_fmr* %19, i32* %20, i32 %21, i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* %18, align 4
  store i32 %27, i32* %8, align 4
  br label %150

28:                                               ; preds = %7
  %29 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %34 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @key_to_hw_index(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @hw_index_to_key(i32 %46)
  %48 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %49 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32*, i32** %15, align 8
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %14, align 8
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @MLX4_MPT_STATUS_SW, align 4
  %54 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %55 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = bitcast %struct.TYPE_10__* %56 to i32*
  store i32 %53, i32* %57, align 4
  %58 = call i32 (...) @wmb()
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %66 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_sync_single_for_cpu(i32* %64, i32 %67, i32 %71, i32 %72)
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %93, %28
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MLX4_MTT_FLAG_PRESENT, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @cpu_to_be64(i32 %85)
  %87 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %88 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %87, i32 0, i32 3
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %86, i8** %92, align 8
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %74

96:                                               ; preds = %74
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %104 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = call i32 @dma_sync_single_for_device(i32* %102, i32 %105, i32 %109, i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = call i8* @cpu_to_be32(i32 %112)
  %114 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %115 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  store i8* %113, i8** %117, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i8* @cpu_to_be32(i32 %118)
  %120 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %121 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i8* %119, i8** %123, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %127 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = shl i64 1, %128
  %130 = mul i64 %125, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @cpu_to_be64(i32 %131)
  %133 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %134 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i8* %132, i8** %136, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i8* @cpu_to_be64(i32 %137)
  %139 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %140 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i8* %138, i8** %142, align 8
  %143 = call i32 (...) @wmb()
  %144 = load i32, i32* @MLX4_MPT_STATUS_HW, align 4
  %145 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %146 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = bitcast %struct.TYPE_10__* %147 to i32*
  store i32 %144, i32* %148, align 4
  %149 = call i32 (...) @wmb()
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %96, %26
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @mlx4_check_fmr(%struct.mlx4_fmr*, i32*, i32, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @hw_index_to_key(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
