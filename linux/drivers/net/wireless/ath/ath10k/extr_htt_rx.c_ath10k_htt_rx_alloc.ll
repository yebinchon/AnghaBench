; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.TYPE_10__, %struct.ath10k*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_9__, i64, i32, %struct.TYPE_8__, %struct.timer_list }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i8* }
%struct.timer_list = type { i32 }
%struct.ath10k = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8
@HTT_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"htt rx ring size is not power of 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ath10k_htt_rx_ring_refill_retry = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"htt rx ring size %d fill_level %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_rx_alloc(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timer_list*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %10 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %10, i32 0, i32 2
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %4, align 8
  %13 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 10
  store %struct.timer_list* %15, %struct.timer_list** %9, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %195

23:                                               ; preds = %1
  %24 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @HTT_RX_RING_SIZE, align 4
  %27 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %43 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %46 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @is_power_of_2(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %23
  %52 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %53 = call i32 @ath10k_warn(%struct.ath10k* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %195

56:                                               ; preds = %23
  %57 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %58 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @kcalloc(i32 %60, i32 8, i32 %61)
  %63 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %64 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %67 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  br label %192

72:                                               ; preds = %56
  %73 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %74 = call i64 @ath10k_htt_get_rx_ring_size(%struct.ath10k_htt* %73)
  store i64 %74, i64* %8, align 8
  %75 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %76 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %75, i32 0, i32 2
  %77 = load %struct.ath10k*, %struct.ath10k** %76, align 8
  %78 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @dma_alloc_coherent(i32 %79, i32 %81, i8** %5, i32 %82)
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  br label %186

87:                                               ; preds = %72
  %88 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @ath10k_htt_config_paddrs_ring(%struct.ath10k_htt* %88, i8* %89)
  %91 = load i8*, i8** %5, align 8
  %92 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %93 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  store i8* %91, i8** %94, align 8
  %95 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %96 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %95, i32 0, i32 2
  %97 = load %struct.ath10k*, %struct.ath10k** %96, align 8
  %98 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @dma_alloc_coherent(i32 %99, i32 8, i8** %5, i32 %100)
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %87
  br label %172

105:                                              ; preds = %87
  %106 = load i8*, i8** %6, align 8
  %107 = bitcast i8* %106 to i64*
  %108 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %109 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i64* %107, i64** %111, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %114 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 9
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i8* %112, i8** %116, align 8
  %117 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %118 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %122 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  %125 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %126 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  store i64 0, i64* %129, align 8
  %130 = load %struct.timer_list*, %struct.timer_list** %9, align 8
  %131 = load i32, i32* @ath10k_htt_rx_ring_refill_retry, align 4
  %132 = call i32 @timer_setup(%struct.timer_list* %130, i32 %131, i32 0)
  %133 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %134 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 8
  %136 = call i32 @spin_lock_init(i32* %135)
  %137 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %138 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 7
  store i64 0, i64* %139, align 8
  %140 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %141 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %145 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @hash_init(i32 %147)
  %149 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %150 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %149, i32 0, i32 6
  %151 = call i32 @skb_queue_head_init(i32* %150)
  %152 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %153 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %152, i32 0, i32 5
  %154 = call i32 @skb_queue_head_init(i32* %153)
  %155 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %156 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %155, i32 0, i32 4
  %157 = call i32 @skb_queue_head_init(i32* %156)
  %158 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %159 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %158, i32 0, i32 3
  %160 = call i32 @atomic_set(i32* %159, i32 0)
  %161 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %162 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %163 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %164 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %168 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ath10k_dbg(%struct.ath10k* %161, i32 %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %170)
  store i32 0, i32* %2, align 4
  br label %195

172:                                              ; preds = %104
  %173 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %174 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %173, i32 0, i32 2
  %175 = load %struct.ath10k*, %struct.ath10k** %174, align 8
  %176 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %179 = call i64 @ath10k_htt_get_rx_ring_size(%struct.ath10k_htt* %178)
  %180 = load i8*, i8** %7, align 8
  %181 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %182 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @dma_free_coherent(i32 %177, i64 %179, i8* %180, i8* %184)
  br label %186

186:                                              ; preds = %172, %86
  %187 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %188 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @kfree(i32 %190)
  br label %192

192:                                              ; preds = %186, %71
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %192, %105, %51, %22
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i64 @ath10k_htt_get_rx_ring_size(%struct.ath10k_htt*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @ath10k_htt_config_paddrs_ring(%struct.ath10k_htt*, i8*) #1

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i8*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
