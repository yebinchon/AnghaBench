; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_xdp_linearize_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_xdp_linearize_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_queue = type { i32 }
%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_XDP_HEADROOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.receive_queue*, i64*, %struct.page*, i32, i32, i32*)* @xdp_linearize_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @xdp_linearize_page(%struct.receive_queue* %0, i64* %1, %struct.page* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.receive_queue*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.receive_queue* %0, %struct.receive_queue** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.page* @alloc_page(i32 %19)
  store %struct.page* %20, %struct.page** %14, align 8
  %21 = load %struct.page*, %struct.page** %14, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store %struct.page* null, %struct.page** %7, align 8
  br label %107

24:                                               ; preds = %6
  %25 = load %struct.page*, %struct.page** %14, align 8
  %26 = call i8* @page_address(%struct.page* %25)
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = call i8* @page_address(%struct.page* %30)
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i8* %29, i8* %34, i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %80, %24
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %42
  %48 = call i32 @SKB_DATA_ALIGN(i32 4)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.receive_queue*, %struct.receive_queue** %8, align 8
  %50 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @virtqueue_get_buf(i32 %51, i32* %16)
  store i8* %52, i8** %17, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = icmp ne i8* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %104

60:                                               ; preds = %47
  %61 = load i8*, i8** %17, align 8
  %62 = call %struct.page* @virt_to_head_page(i8* %61)
  store %struct.page* %62, %struct.page** %10, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = call i8* @page_address(%struct.page* %64)
  %66 = ptrtoint i8* %63 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load %struct.page*, %struct.page** %10, align 8
  %79 = call i32 @put_page(%struct.page* %78)
  br label %104

80:                                               ; preds = %60
  %81 = load %struct.page*, %struct.page** %14, align 8
  %82 = call i8* @page_address(%struct.page* %81)
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr i8, i8* %82, i64 %84
  %86 = load %struct.page*, %struct.page** %10, align 8
  %87 = call i8* @page_address(%struct.page* %86)
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @memcpy(i8* %85, i8* %90, i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load %struct.page*, %struct.page** %10, align 8
  %97 = call i32 @put_page(%struct.page* %96)
  br label %42

98:                                               ; preds = %42
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @VIRTIO_XDP_HEADROOM, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %103, %struct.page** %7, align 8
  br label %107

104:                                              ; preds = %77, %59
  %105 = load %struct.page*, %struct.page** %14, align 8
  %106 = call i32 @__free_pages(%struct.page* %105, i32 0)
  store %struct.page* null, %struct.page** %7, align 8
  br label %107

107:                                              ; preds = %104, %98, %23
  %108 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %108
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i8* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
