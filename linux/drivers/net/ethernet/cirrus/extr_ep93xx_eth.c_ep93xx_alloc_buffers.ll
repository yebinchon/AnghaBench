; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_priv = type { %struct.TYPE_10__*, i8**, i8**, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@PKT_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_priv*)* @ep93xx_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_alloc_buffers(%struct.ep93xx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ep93xx_priv* %0, %struct.ep93xx_priv** %3, align 8
  %10 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %17, i32 0, i32 3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_10__* @dma_alloc_coherent(%struct.device* %16, i32 4, i32* %18, i32 %19)
  %21 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %21, i32 0, i32 0
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %22, align 8
  %23 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %137

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %84, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load i32, i32* @PKT_BUF_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 %34, i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %134

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @PKT_BUF_SIZE, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i8* @dma_map_single(%struct.device* %41, i8* %42, i32 %43, i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @dma_mapping_error(%struct.device* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @kfree(i8* %51)
  br label %134

53:                                               ; preds = %40
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %61, i8** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* @PKT_BUF_SIZE, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %76 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %74, i32* %83, align 8
  br label %84

84:                                               ; preds = %53
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %29

87:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %130, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %133

92:                                               ; preds = %88
  %93 = load i32, i32* @PKT_BUF_SIZE, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @kmalloc(i32 %93, i32 %94)
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %134

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* @PKT_BUF_SIZE, align 4
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i8* @dma_map_single(%struct.device* %100, i8* %101, i32 %102, i32 %103)
  store i8* %104, i8** %9, align 8
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @dma_mapping_error(%struct.device* %105, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @kfree(i8* %110)
  br label %134

112:                                              ; preds = %99
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %115 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %122 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i8* %120, i8** %129, align 8
  br label %130

130:                                              ; preds = %112
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %88

133:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %137

134:                                              ; preds = %109, %98, %50, %39
  %135 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %136 = call i32 @ep93xx_free_buffers(%struct.ep93xx_priv* %135)
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %133, %27
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_10__* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ep93xx_free_buffers(%struct.ep93xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
