; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_snd_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_snd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_queue = type { i64, i64, %struct.TYPE_4__, i64*, i64*, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.sq_hdr_subdesc = type { i64, i32, i64 }

@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.snd_queue*)* @nicvf_free_snd_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_snd_queue(%struct.nicvf* %0, %struct.snd_queue* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.snd_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.sq_hdr_subdesc*, align 8
  %8 = alloca %struct.sq_hdr_subdesc*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %4, align 8
  %9 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %10 = icmp ne %struct.snd_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %160

12:                                               ; preds = %2
  %13 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %14 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %160

19:                                               ; preds = %12
  %20 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %21 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %26 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %30 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %36 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %39 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(i32* %28, i32 %34, i32* %37, i32 %40)
  %42 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %43 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %24, %19
  %45 = call i32 (...) @smp_rmb()
  br label %46

46:                                               ; preds = %132, %44
  %47 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %48 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %51 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %147

54:                                               ; preds = %46
  %55 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %56 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %55, i32 0, i32 4
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %59 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.sk_buff*
  store %struct.sk_buff* %63, %struct.sk_buff** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %68 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %54
  br label %132

72:                                               ; preds = %66
  %73 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %74 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %77 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.page*
  store %struct.page* %81, %struct.page** %6, align 8
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %132

85:                                               ; preds = %72
  %86 = load %struct.page*, %struct.page** %6, align 8
  %87 = call i32 @put_page(%struct.page* %86)
  br label %88

88:                                               ; preds = %85
  %89 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %90 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %91 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @GET_SQ_DESC(%struct.snd_queue* %89, i64 %92)
  %94 = inttoptr i64 %93 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %94, %struct.sq_hdr_subdesc** %7, align 8
  %95 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %7, align 8
  %96 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %88
  %100 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %101 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %7, align 8
  %102 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @GET_SQ_DESC(%struct.snd_queue* %100, i64 %103)
  %105 = inttoptr i64 %104 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %105, %struct.sq_hdr_subdesc** %8, align 8
  %106 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %107 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %108 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %7, align 8
  %109 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %8, align 8
  %112 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @nicvf_unmap_sndq_buffers(%struct.nicvf* %106, %struct.snd_queue* %107, i64 %110, i32 %113)
  br label %125

115:                                              ; preds = %88
  %116 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %117 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %118 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %119 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %7, align 8
  %122 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @nicvf_unmap_sndq_buffers(%struct.nicvf* %116, %struct.snd_queue* %117, i64 %120, i32 %123)
  br label %125

125:                                              ; preds = %115, %99
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %129)
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %84, %71
  %133 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %134 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %138 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %144 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = and i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %46

147:                                              ; preds = %46
  %148 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %149 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %148, i32 0, i32 4
  %150 = load i64*, i64** %149, align 8
  %151 = call i32 @kfree(i64* %150)
  %152 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %153 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %152, i32 0, i32 3
  %154 = load i64*, i64** %153, align 8
  %155 = call i32 @kfree(i64* %154)
  %156 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %157 = load %struct.snd_queue*, %struct.snd_queue** %4, align 8
  %158 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %157, i32 0, i32 2
  %159 = call i32 @nicvf_free_q_desc_mem(%struct.nicvf* %156, %struct.TYPE_4__* %158)
  br label %160

160:                                              ; preds = %147, %18, %11
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i64) #1

declare dso_local i32 @nicvf_unmap_sndq_buffers(%struct.nicvf*, %struct.snd_queue*, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @nicvf_free_q_desc_mem(%struct.nicvf*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
