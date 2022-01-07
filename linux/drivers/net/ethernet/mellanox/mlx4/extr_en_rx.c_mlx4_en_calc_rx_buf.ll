; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_calc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_calc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32, i64* }
%struct.TYPE_2__ = type { i32, i32 }

@TX_XDP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@MLX4_EN_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Rx buffer scatter-list (effective-mtu:%d num_frags:%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"  frag:%d - size:%d stride:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_calc_rx_buf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MLX4_EN_EFF_MTU(i32 %16)
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 6
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @TX_XDP, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  store i32 1, i32* %5, align 4
  br label %119

44:                                               ; preds = %1
  store i32 2048, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 %48, 2048
  %50 = add nsw i32 %46, %49
  %51 = icmp sgt i32 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @min(i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %82 = call i32 @ALIGN(i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sub nsw i32 %86, %89
  %91 = load i32, i32* %11, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %94 = sub nsw i32 %93, 1
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %100, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %55

113:                                              ; preds = %55
  %114 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %25
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @ROUNDUP_LOG2(i32 %129)
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @DRV, align 4
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %137 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, i32, ...) @en_dbg(i32 %133, %struct.mlx4_en_priv* %134, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %167, %119
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %143 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %140
  %147 = load i32, i32* @DRV, align 4
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %159 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, i32, ...) @en_dbg(i32 %147, %struct.mlx4_en_priv* %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %157, i32 %165)
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %140

170:                                              ; preds = %140
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @MLX4_EN_EFF_MTU(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ROUNDUP_LOG2(i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
