; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_add_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_add_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_queue = type { i64, i32, %struct.TYPE_2__*, i32, %struct.mt76_desc* }
%struct.TYPE_2__ = type { i32, %struct.sk_buff*, i8* }
%struct.mt76_desc = type { i32, i32, i32, i32 }
%struct.mt76_queue_buf = type { i32, i32 }
%struct.sk_buff = type { i32 }

@DMA_DUMMY_DATA = common dso_local global i8* null, align 8
@MT_DMA_CTL_SD_LEN0 = common dso_local global i32 0, align 4
@MT_DMA_CTL_SD_LEN1 = common dso_local global i32 0, align 4
@MT_DMA_CTL_LAST_SEC0 = common dso_local global i32 0, align 4
@MT_DMA_CTL_LAST_SEC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.mt76_queue*, %struct.mt76_queue_buf*, i32, i32, %struct.sk_buff*, i8*)* @mt76_dma_add_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_dma_add_buf(%struct.mt76_dev* %0, %struct.mt76_queue* %1, %struct.mt76_queue_buf* %2, i32 %3, i32 %4, %struct.sk_buff* %5, i8* %6) #0 {
  %8 = alloca %struct.mt76_dev*, align 8
  %9 = alloca %struct.mt76_queue*, align 8
  %10 = alloca %struct.mt76_queue_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mt76_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %8, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %9, align 8
  store %struct.mt76_queue_buf* %2, %struct.mt76_queue_buf** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 -1, i32* %18, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %7
  %24 = load i8*, i8** @DMA_DUMMY_DATA, align 8
  %25 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %26 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %29 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i8* %24, i8** %32, align 8
  %33 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %34 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %37 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %23, %7
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %143, %41
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %148

46:                                               ; preds = %42
  %47 = load %struct.mt76_queue_buf*, %struct.mt76_queue_buf** %10, align 8
  %48 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %47, i64 0
  %49 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %51 = load i32, i32* @MT_DMA_CTL_SD_LEN0, align 4
  %52 = load %struct.mt76_queue_buf*, %struct.mt76_queue_buf** %10, align 8
  %53 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %52, i64 0
  %54 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @FIELD_PREP(i32 %51, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %46
  %62 = load %struct.mt76_queue_buf*, %struct.mt76_queue_buf** %10, align 8
  %63 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %62, i64 1
  %64 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* @MT_DMA_CTL_SD_LEN1, align 4
  %67 = load %struct.mt76_queue_buf*, %struct.mt76_queue_buf** %10, align 8
  %68 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %67, i64 1
  %69 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @FIELD_PREP(i32 %66, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %61, %46
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @MT_DMA_CTL_LAST_SEC0, align 4
  %81 = load i32, i32* %16, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %16, align 4
  br label %93

83:                                               ; preds = %74
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 2
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @MT_DMA_CTL_LAST_SEC1, align 4
  %90 = load i32, i32* %16, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %79
  %94 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %95 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %18, align 4
  %98 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %99 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  %102 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %103 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = urem i64 %101, %105
  %107 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %108 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %110 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %109, i32 0, i32 4
  %111 = load %struct.mt76_desc*, %struct.mt76_desc** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %111, i64 %113
  store %struct.mt76_desc* %114, %struct.mt76_desc** %15, align 8
  %115 = load %struct.mt76_desc*, %struct.mt76_desc** %15, align 8
  %116 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @cpu_to_le32(i32 %118)
  %120 = call i32 @WRITE_ONCE(i32 %117, i32 %119)
  %121 = load %struct.mt76_desc*, %struct.mt76_desc** %15, align 8
  %122 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @cpu_to_le32(i32 %124)
  %126 = call i32 @WRITE_ONCE(i32 %123, i32 %125)
  %127 = load %struct.mt76_desc*, %struct.mt76_desc** %15, align 8
  %128 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @cpu_to_le32(i32 %130)
  %132 = call i32 @WRITE_ONCE(i32 %129, i32 %131)
  %133 = load %struct.mt76_desc*, %struct.mt76_desc** %15, align 8
  %134 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @cpu_to_le32(i32 %136)
  %138 = call i32 @WRITE_ONCE(i32 %135, i32 %137)
  %139 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %140 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %93
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %17, align 4
  %146 = load %struct.mt76_queue_buf*, %struct.mt76_queue_buf** %10, align 8
  %147 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %146, i64 2
  store %struct.mt76_queue_buf* %147, %struct.mt76_queue_buf** %10, align 8
  br label %42

148:                                              ; preds = %42
  %149 = load i8*, i8** %14, align 8
  %150 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %151 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  store i8* %149, i8** %156, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %158 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %159 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store %struct.sk_buff* %157, %struct.sk_buff** %164, align 8
  %165 = load i32, i32* %18, align 4
  ret i32 %165
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
