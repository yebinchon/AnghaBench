; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_xmitlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_xmitlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfspi = type { i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.caif_payload_info = type { i64 }

@spi_up_head_align = common dso_local global i32 0, align 4
@spi_up_tail_align = common dso_local global i32 0, align 4
@CAIF_MAX_SPI_FRAME = common dso_local global i64 0, align 8
@CAIF_MAX_SPI_PKTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfspi_xmitlen(%struct.cfspi* %0) #0 {
  %2 = alloca %struct.cfspi*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.caif_payload_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfspi* %0, %struct.cfspi** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %11 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %10, i32 0, i32 5
  %12 = call i64 @skb_peek(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %16 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %15, i32 0, i32 5
  %17 = call %struct.sk_buff* @skb_dequeue_tail(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %3, align 8
  %18 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %19 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %18, i32 0, i32 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @skb_queue_head(%struct.TYPE_5__* %19, %struct.sk_buff* %20)
  br label %9

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %93, %22
  store %struct.caif_payload_info* null, %struct.caif_payload_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %25 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %24, i32 0, i32 4
  %26 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_5__* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %97

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = bitcast i32* %32 to %struct.caif_payload_info*
  store %struct.caif_payload_info* %33, %struct.caif_payload_info** %6, align 8
  %34 = load i32, i32* @spi_up_head_align, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.caif_payload_info*, %struct.caif_payload_info** %6, align 8
  %38 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* @spi_up_head_align, align 4
  %42 = call i32 @PAD_POW2(i64 %40, i32 %41)
  %43 = add nsw i32 1, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* @spi_up_tail_align, align 4
  %52 = call i32 @PAD_POW2(i64 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i64, i64* @CAIF_MAX_SPI_FRAME, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %44
  %68 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %69 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %68, i32 0, i32 5
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i32 @skb_queue_tail(i32* %69, %struct.sk_buff* %70)
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %44
  %88 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %89 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %88, i32 0, i32 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call i32 @skb_queue_head(%struct.TYPE_5__* %89, %struct.sk_buff* %90)
  br label %97

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @CAIF_MAX_SPI_PKTS, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %23, label %97

97:                                               ; preds = %93, %87, %29
  %98 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %99 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %97
  %103 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %104 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %108 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %102
  %112 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %113 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32 (i32, i32)*, i32 (i32, i32)** %114, align 8
  %116 = icmp ne i32 (i32, i32)* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %119 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %121 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32 (i32, i32)*, i32 (i32, i32)** %122, align 8
  %124 = load %struct.cfspi*, %struct.cfspi** %2, align 8
  %125 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 %123(i32 %126, i32 1)
  br label %128

128:                                              ; preds = %117, %111, %102, %97
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue_tail(i32*) #1

declare dso_local i32 @skb_queue_head(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_5__*) #1

declare dso_local i32 @PAD_POW2(i64, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
