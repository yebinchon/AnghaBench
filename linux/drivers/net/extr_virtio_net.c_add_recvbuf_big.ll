; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_add_recvbuf_big.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_add_recvbuf_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i64 }
%struct.receive_queue = type { i32*, i32 }
%struct.page = type { i64 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, %struct.receive_queue*, i32)* @add_recvbuf_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recvbuf_big(%struct.virtnet_info* %0, %struct.receive_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtnet_info*, align 8
  %6 = alloca %struct.receive_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %5, align 8
  store %struct.receive_queue* %1, %struct.receive_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* null, %struct.page** %9, align 8
  %14 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %15 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %18 = add nsw i32 %17, 2
  %19 = call i32 @sg_init_table(i32* %16, i32 %18)
  %20 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %57, %3
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.page* @get_a_page(%struct.receive_queue* %26, i32 %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call i32 @give_pages(%struct.receive_queue* %35, %struct.page* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %120

41:                                               ; preds = %25
  %42 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %43 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i8* @page_address(%struct.page* %48)
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = call i32 @sg_set_buf(i32* %47, i8* %49, i64 %50)
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = ptrtoint %struct.page* %52 to i64
  %54 = load %struct.page*, %struct.page** %8, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %56, %struct.page** %9, align 8
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.page* @get_a_page(%struct.receive_queue* %61, i32 %62)
  store %struct.page* %63, %struct.page** %8, align 8
  %64 = load %struct.page*, %struct.page** %8, align 8
  %65 = icmp ne %struct.page* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %68 = load %struct.page*, %struct.page** %9, align 8
  %69 = call i32 @give_pages(%struct.receive_queue* %67, %struct.page* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %120

72:                                               ; preds = %60
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = call i8* @page_address(%struct.page* %73)
  store i8* %74, i8** %10, align 8
  %75 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %76 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %81 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @sg_set_buf(i32* %78, i8* %79, i64 %82)
  store i32 4, i32* %13, align 4
  %84 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %85 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %92, %94
  %96 = call i32 @sg_set_buf(i32* %87, i8* %91, i64 %95)
  %97 = load %struct.page*, %struct.page** %9, align 8
  %98 = ptrtoint %struct.page* %97 to i64
  %99 = load %struct.page*, %struct.page** %8, align 8
  %100 = getelementptr inbounds %struct.page, %struct.page* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %102 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %105 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %108 = add nsw i32 %107, 2
  %109 = load %struct.page*, %struct.page** %8, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @virtqueue_add_inbuf(i32 %103, i32* %106, i32 %108, %struct.page* %109, i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %72
  %115 = load %struct.receive_queue*, %struct.receive_queue** %6, align 8
  %116 = load %struct.page*, %struct.page** %8, align 8
  %117 = call i32 @give_pages(%struct.receive_queue* %115, %struct.page* %116)
  br label %118

118:                                              ; preds = %114, %72
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %66, %38
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local %struct.page* @get_a_page(%struct.receive_queue*, i32) #1

declare dso_local i32 @give_pages(%struct.receive_queue*, %struct.page*) #1

declare dso_local i32 @sg_set_buf(i32*, i8*, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @virtqueue_add_inbuf(i32, i32*, i32, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
