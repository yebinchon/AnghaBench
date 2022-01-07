; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_tx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ravb_private = type { i32, i64*, i32*, i32*, i32***, %struct.ravb_tx_desc**, %struct.net_device_stats* }
%struct.ravb_tx_desc = type { i64, i32, i32 }
%struct.net_device_stats = type { i32, i32 }

@DT_FEMPTY = common dso_local global i64 0, align 8
@TX_DS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DT_EEMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ravb_tx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_tx_free(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ravb_private*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ravb_tx_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %15)
  store %struct.ravb_private* %16, %struct.ravb_private** %7, align 8
  %17 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %18 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %17, i32 0, i32 6
  %19 = load %struct.net_device_stats*, %struct.net_device_stats** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %19, i64 %21
  store %struct.net_device_stats* %22, %struct.net_device_stats** %8, align 8
  %23 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %24 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %174, %3
  %27 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %28 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %35 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %33, %41
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %183

44:                                               ; preds = %26
  %45 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %46 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %53 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = srem i32 %51, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %63 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %62, i32 0, i32 5
  %64 = load %struct.ravb_tx_desc**, %struct.ravb_tx_desc*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %64, i64 %66
  %68 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %68, i64 %70
  store %struct.ravb_tx_desc* %71, %struct.ravb_tx_desc** %10, align 8
  %72 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %10, align 8
  %73 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DT_FEMPTY, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %44
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %183

84:                                               ; preds = %80, %44
  %85 = call i32 (...) @dma_rmb()
  %86 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %10, align 8
  %87 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load i32, i32* @TX_DS, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %13, align 4
  %92 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %93 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %92, i32 0, i32 4
  %94 = load i32***, i32**** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32**, i32*** %94, i64 %96
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sdiv i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %98, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %161

106:                                              ; preds = %84
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %10, align 8
  %112 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i32 @dma_unmap_single(i32 %110, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = srem i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %158

124:                                              ; preds = %106
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sdiv i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %129 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %128, i32 0, i32 4
  %130 = load i32***, i32**** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32**, i32*** %130, i64 %132
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @dev_kfree_skb_any(i32* %138)
  %140 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %141 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %140, i32 0, i32 4
  %142 = load i32***, i32**** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32**, i32*** %142, i64 %144
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %124
  %153 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %154 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %124
  br label %158

158:                                              ; preds = %157, %106
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158, %84
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %167 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i64, i64* @DT_EEMPTY, align 8
  %172 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %10, align 8
  %173 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170
  %175 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %176 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %26

183:                                              ; preds = %83, %26
  %184 = load i32, i32* %11, align 4
  ret i32 %184
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
