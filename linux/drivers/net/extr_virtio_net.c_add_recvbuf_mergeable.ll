; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_add_recvbuf_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_add_recvbuf_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32 }
%struct.receive_queue = type { i32, i32, i32, %struct.page_frag }
%struct.page_frag = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, %struct.receive_queue*, i32)* @add_recvbuf_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recvbuf_mergeable(%struct.virtnet_info* %0, %struct.receive_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtnet_info*, align 8
  %6 = alloca %struct.receive_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page_frag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %5, align 8
  store %struct.receive_queue* %1, %struct.receive_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %18 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %17, i32 0, i32 3
  store %struct.page_frag* %18, %struct.page_frag** %8, align 8
  %19 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %20 = call i32 @virtnet_get_headroom(%struct.virtnet_info* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i64 4, i64 0
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %26, %27
  %29 = call i32 @SKB_DATA_ALIGN(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %31 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %32 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @get_mergeable_buf_len(%struct.receive_queue* %30, i32* %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %35, %36
  %38 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @skb_page_frag_refill(i32 %37, %struct.page_frag* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %124

49:                                               ; preds = %3
  %50 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %51 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @page_address(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %56 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %12, align 8
  %64 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %65 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @get_page(i32 %66)
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %68, %69
  %71 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %72 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %76 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %79 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %77, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %83, %84
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %49
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %93 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %87, %49
  %97 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %98 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @sg_init_one(i32 %99, i8* %100, i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i8* @mergeable_len_to_ctx(i32 %103, i32 %104)
  store i8* %105, i8** %13, align 8
  %106 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %107 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %110 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @virtqueue_add_inbuf_ctx(i32 %108, i32 %111, i32 1, i8* %112, i8* %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %96
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @virt_to_head_page(i8* %119)
  %121 = call i32 @put_page(i32 %120)
  br label %122

122:                                              ; preds = %118, %96
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %46
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @virtnet_get_headroom(%struct.virtnet_info*) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @get_mergeable_buf_len(%struct.receive_queue*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_page_frag_refill(i32, %struct.page_frag*, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @sg_init_one(i32, i8*, i32) #1

declare dso_local i8* @mergeable_len_to_ctx(i32, i32) #1

declare dso_local i32 @virtqueue_add_inbuf_ctx(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_head_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
