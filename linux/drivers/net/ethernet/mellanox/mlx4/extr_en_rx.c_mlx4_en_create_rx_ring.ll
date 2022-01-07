; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_create_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_create_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_12__, i32, %struct.mlx4_en_dev* }
%struct.TYPE_12__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_14__, i32, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate RX ring structure\0A\00", align 1
@TXBB_SIZE = common dso_local global i64 0, align 8
@MLX4_EN_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocated rx_info ring at addr:%p size:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_rx_ring**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_en_dev*, align 8
  %15 = alloca %struct.mlx4_en_rx_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %8, align 8
  store %struct.mlx4_en_rx_ring** %1, %struct.mlx4_en_rx_ring*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 2
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %14, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.mlx4_en_rx_ring* @kzalloc_node(i32 72, i32 %23, i32 %24)
  store %struct.mlx4_en_rx_ring* %25, %struct.mlx4_en_rx_ring** %15, align 8
  %26 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %27 = icmp ne %struct.mlx4_en_rx_ring* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %6
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %30 = call i32 @en_err(%struct.mlx4_en_priv* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %174

33:                                               ; preds = %6
  %34 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %34, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ffs(i32 %50)
  %52 = sub nsw i64 %51, 1
  %53 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %53, i32 0, i32 9
  store i64 %52, i64* %54, align 8
  %55 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @TXBB_SIZE, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %65, i32 0, i32 8
  store i64 %64, i64* %66, align 8
  %67 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %67, i32 0, i32 3
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @xdp_rxq_info_reg(i32* %68, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %33
  br label %169

76:                                               ; preds = %33
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @roundup_pow_of_two(i32 %81)
  %83 = mul nsw i32 %77, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32* @kvzalloc_node(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %88, i32 0, i32 4
  store i32* %87, i32** %89, align 8
  %90 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %165

97:                                               ; preds = %76
  %98 = load i32, i32* @DRV, align 4
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %100 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @en_dbg(i32 %98, %struct.mlx4_en_priv* %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %102, i32 %103)
  %105 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @set_dev_node(i32* %112, i32 %113)
  %115 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %118, i32 0, i32 6
  %120 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %121 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_13__* %117, %struct.TYPE_14__* %119, i64 %122)
  store i32 %123, i32* %16, align 4
  %124 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %133 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @set_dev_node(i32* %131, i32 %136)
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %97
  br label %158

141:                                              ; preds = %97
  %142 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %143 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %155 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  %156 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %157 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %9, align 8
  store %struct.mlx4_en_rx_ring* %156, %struct.mlx4_en_rx_ring** %157, align 8
  store i32 0, i32* %7, align 4
  br label %174

158:                                              ; preds = %140
  %159 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %160 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @kvfree(i32* %161)
  %163 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %164 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %163, i32 0, i32 4
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %158, %94
  %166 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %167 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %166, i32 0, i32 3
  %168 = call i32 @xdp_rxq_info_unreg(i32* %167)
  br label %169

169:                                              ; preds = %165, %75
  %170 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  %171 = call i32 @kfree(%struct.mlx4_en_rx_ring* %170)
  %172 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %9, align 8
  store %struct.mlx4_en_rx_ring* null, %struct.mlx4_en_rx_ring** %172, align 8
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %169, %141, %28
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local %struct.mlx4_en_rx_ring* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i64 @xdp_rxq_info_reg(i32*, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32* @kvzalloc_node(i32, i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32*, i32) #1

declare dso_local i32 @set_dev_node(i32*, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_13__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
