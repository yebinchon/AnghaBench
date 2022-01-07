; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.cp_private = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cp_dma_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@StatsAddr = common dso_local global i64 0, align 8
@DumpStats = common dso_local global i32 0, align 4
@CP_NUM_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @cp_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cp_private*, align 8
  %8 = alloca %struct.cp_dma_stats*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.cp_private* @netdev_priv(%struct.net_device* %11)
  store %struct.cp_private* %12, %struct.cp_private** %7, align 8
  %13 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %14 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cp_dma_stats* @dma_alloc_coherent(i32* %16, i32 52, i64* %9, i32 %17)
  store %struct.cp_dma_stats* %18, %struct.cp_dma_stats** %8, align 8
  %19 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %20 = icmp ne %struct.cp_dma_stats* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %200

22:                                               ; preds = %3
  %23 = load i64, i64* @StatsAddr, align 8
  %24 = add nsw i64 %23, 4
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = ashr i32 %26, 32
  %28 = call i32 @cpw32(i64 %24, i32 %27)
  %29 = load i64, i64* @StatsAddr, align 8
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @DMA_BIT_MASK(i32 32)
  %33 = and i32 %31, %32
  %34 = load i32, i32* @DumpStats, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cpw32(i64 %29, i32 %35)
  %37 = load i64, i64* @StatsAddr, align 8
  %38 = call i32 @cpr32(i64 %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %51, %22
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 1000
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i64, i64* @StatsAddr, align 8
  %44 = call i32 @cpr32(i64 %43)
  %45 = load i32, i32* @DumpStats, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %54

49:                                               ; preds = %42
  %50 = call i32 @udelay(i32 10)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %39

54:                                               ; preds = %48, %39
  %55 = load i64, i64* @StatsAddr, align 8
  %56 = call i32 @cpw32(i64 %55, i32 0)
  %57 = load i64, i64* @StatsAddr, align 8
  %58 = add nsw i64 %57, 4
  %59 = call i32 @cpw32(i64 %58, i32 0)
  %60 = load i64, i64* @StatsAddr, align 8
  %61 = call i32 @cpr32(i64 %60)
  store i32 0, i32* %10, align 4
  %62 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %63 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le64_to_cpu(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %72 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le64_to_cpu(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %81 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le64_to_cpu(i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %90 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %99 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %108 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le16_to_cpu(i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %117 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %126 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %135 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le64_to_cpu(i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %144 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le64_to_cpu(i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %153 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %162 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le16_to_cpu(i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %171 = getelementptr inbounds %struct.cp_dma_stats, %struct.cp_dma_stats* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %180 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @CP_NUM_STATS, align 4
  %190 = icmp ne i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @BUG_ON(i32 %191)
  %193 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %194 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.cp_dma_stats*, %struct.cp_dma_stats** %8, align 8
  %198 = load i64, i64* %9, align 8
  %199 = call i32 @dma_free_coherent(i32* %196, i32 52, %struct.cp_dma_stats* %197, i64 %198)
  br label %200

200:                                              ; preds = %54, %21
  ret void
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.cp_dma_stats* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @cpw32(i64, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @cpr32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.cp_dma_stats*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
