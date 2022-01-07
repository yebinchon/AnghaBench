; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_4__*, i64, %struct.rx_queue* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rx_queue = type { i32, i32, i32, i64, %struct.rx_desc*, i32*, i64, i64, i64 }
%struct.rx_desc = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't allocate rx ring (%d bytes)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, i32)* @rxq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_init(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_queue*, align 8
  %7 = alloca %struct.rx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %12 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %11, i32 0, i32 4
  %13 = load %struct.rx_queue*, %struct.rx_queue** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %13, i64 %15
  store %struct.rx_queue* %16, %struct.rx_queue** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %19 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %21 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %26 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %28 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %32 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %42 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %47 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %50 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.rx_desc* @ioremap(i64 %48, i32 %51)
  %53 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %54 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %53, i32 0, i32 4
  store %struct.rx_desc* %52, %struct.rx_desc** %54, align 8
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %56 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %59 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  br label %74

60:                                               ; preds = %39, %2
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %69 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %68, i32 0, i32 3
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.rx_desc* @dma_alloc_coherent(i32 %66, i32 %67, i64* %69, i32 %70)
  %72 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %73 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %72, i32 0, i32 4
  store %struct.rx_desc* %71, %struct.rx_desc** %73, align 8
  br label %74

74:                                               ; preds = %60, %45
  %75 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %76 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %75, i32 0, i32 4
  %77 = load %struct.rx_desc*, %struct.rx_desc** %76, align 8
  %78 = icmp eq %struct.rx_desc* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %81 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @netdev_err(%struct.TYPE_4__* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %172

85:                                               ; preds = %74
  %86 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %87 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %86, i32 0, i32 4
  %88 = load %struct.rx_desc*, %struct.rx_desc** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @memset(%struct.rx_desc* %88, i32 0, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %93 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %95 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32* @kcalloc(i32 %96, i32 4, i32 %97)
  %99 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %100 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %99, i32 0, i32 5
  store i32* %98, i32** %100, align 8
  %101 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %102 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %85
  br label %142

106:                                              ; preds = %85
  %107 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %108 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %107, i32 0, i32 4
  %109 = load %struct.rx_desc*, %struct.rx_desc** %108, align 8
  store %struct.rx_desc* %109, %struct.rx_desc** %7, align 8
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %138, %106
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %113 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %121 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %116
  %126 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %127 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = add i64 %128, %131
  %133 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %133, i64 %135
  %137 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %136, i32 0, i32 0
  store i64 %132, i64* %137, align 8
  br label %138

138:                                              ; preds = %125
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %110

141:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %175

142:                                              ; preds = %105
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %148 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %146, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %153 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %152, i32 0, i32 4
  %154 = load %struct.rx_desc*, %struct.rx_desc** %153, align 8
  %155 = call i32 @iounmap(%struct.rx_desc* %154)
  br label %171

156:                                              ; preds = %145, %142
  %157 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %158 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %165 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %164, i32 0, i32 4
  %166 = load %struct.rx_desc*, %struct.rx_desc** %165, align 8
  %167 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %168 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @dma_free_coherent(i32 %162, i32 %163, %struct.rx_desc* %166, i64 %169)
  br label %171

171:                                              ; preds = %156, %151
  br label %172

172:                                              ; preds = %171, %79
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %172, %141
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.rx_desc* @ioremap(i64, i32) #1

declare dso_local %struct.rx_desc* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @memset(%struct.rx_desc*, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @iounmap(%struct.rx_desc*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.rx_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
