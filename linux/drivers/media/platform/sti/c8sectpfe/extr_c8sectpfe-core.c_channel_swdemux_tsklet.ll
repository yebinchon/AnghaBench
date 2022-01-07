; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_channel_swdemux_tsklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_channel_swdemux_tsklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_info = type { i64, i64, i64, i32, i64, %struct.c8sectpfei* }
%struct.c8sectpfei = type { %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FEI_BUFFER_SIZE = common dso_local global i64 0, align 8
@PACKET_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"chan=%d channel=%p num_packets = %d, buf = %p, pos = 0x%x\0A\09rp=0x%lx, wp=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @channel_swdemux_tsklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_swdemux_tsklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.channel_info*, align 8
  %4 = alloca %struct.c8sectpfei*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.channel_info*
  store %struct.channel_info* %13, %struct.channel_info** %3, align 8
  %14 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %15 = icmp ne %struct.channel_info* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %18 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ true, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %145

28:                                               ; preds = %22
  %29 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %30 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %29, i32 0, i32 5
  %31 = load %struct.c8sectpfei*, %struct.c8sectpfei** %30, align 8
  store %struct.c8sectpfei* %31, %struct.c8sectpfei** %4, align 8
  %32 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %33 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @DMA_PRDS_BUSWP_TP(i32 0)
  %36 = add nsw i64 %34, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %39 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @DMA_PRDS_BUSRP_TP(i32 0)
  %42 = add nsw i64 %40, %41
  %43 = call i64 @readl(i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %46 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %28
  %54 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %55 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FEI_BUFFER_SIZE, align 8
  %58 = add i64 %56, %57
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %53, %28
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PACKET_SIZE, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %68 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i32 @dma_sync_single_for_cpu(i32 %69, i64 %70, i32 %71, i32 %72)
  %74 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %75 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %11, align 8
  %78 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %79 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %82 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %83, %struct.channel_info* %84, i32 %85, i32* %86, i32 %87, i64 %88, i64 %89)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %116, %59
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %97 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %104 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @dvb_dmx_swfilter_packets(i32* %107, i32* %111, i32 1)
  %113 = load i32, i32* @PACKET_SIZE, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %95
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %91

119:                                              ; preds = %91
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %122 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @FEI_BUFFER_SIZE, align 8
  %125 = add i64 %123, %124
  %126 = icmp eq i64 %120, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %119
  %128 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %129 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %132 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @DMA_PRDS_BUSRP_TP(i32 0)
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i64 %130, i64 %135)
  br label %145

137:                                              ; preds = %119
  %138 = load i64, i64* %5, align 8
  %139 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %140 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @DMA_PRDS_BUSRP_TP(i32 0)
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i64 %138, i64 %143)
  br label %145

145:                                              ; preds = %27, %137, %127
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @DMA_PRDS_BUSWP_TP(i32) #1

declare dso_local i64 @DMA_PRDS_BUSRP_TP(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.channel_info*, i32, i32*, i32, i64, i64) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i32*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
