; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_napi_alloc_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_napi_alloc_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }
%struct.tun_file = type { i32 }
%struct.iov_iter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.tun_file*, i64, %struct.iov_iter*)* @tun_napi_alloc_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tun_napi_alloc_frags(%struct.tun_file* %0, i64 %1, %struct.iov_iter* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tun_file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  store %struct.tun_file* %0, %struct.tun_file** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  %15 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %16 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sk_buff* @ERR_PTR(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  br label %120

25:                                               ; preds = %3
  %26 = call i32 (...) @local_bh_disable()
  %27 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %28 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %27, i32 0, i32 0
  %29 = call %struct.sk_buff* @napi_get_frags(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %8, align 8
  %30 = call i32 (...) @local_bh_enable()
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.sk_buff* @ERR_PTR(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  br label %120

37:                                               ; preds = %25
  %38 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %39 = call i64 @iov_iter_single_seg_count(%struct.iov_iter* %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @__skb_grow(%struct.sk_buff* %40, i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %114

46:                                               ; preds = %37
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %50, %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %109, %46
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %65 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %62
  %69 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %70 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %68
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %68
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %114

86:                                               ; preds = %79
  %87 = load i64, i64* %12, align 8
  %88 = call i8* @netdev_alloc_frag(i64 %87)
  store i8* %88, i8** %14, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %114

94:                                               ; preds = %86
  %95 = load i8*, i8** %14, align 8
  %96 = call %struct.page* @virt_to_head_page(i8* %95)
  store %struct.page* %96, %struct.page** %13, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.page*, %struct.page** %13, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.page*, %struct.page** %13, align 8
  %103 = call i32 @page_address(%struct.page* %102)
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr i8, i8* %101, i64 %105
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @skb_fill_page_desc(%struct.sk_buff* %97, i32 %99, %struct.page* %100, i8* %106, i64 %107)
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %62

112:                                              ; preds = %62
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %113, %struct.sk_buff** %4, align 8
  br label %120

114:                                              ; preds = %91, %83, %45
  %115 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %116 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %115, i32 0, i32 0
  %117 = call i32 @napi_free_frags(i32* %116)
  %118 = load i32, i32* %10, align 4
  %119 = call %struct.sk_buff* @ERR_PTR(i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %4, align 8
  br label %120

120:                                              ; preds = %114, %112, %33, %21
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %121
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i64 @iov_iter_single_seg_count(%struct.iov_iter*) #1

declare dso_local i32 @__skb_grow(%struct.sk_buff*, i64) #1

declare dso_local i8* @netdev_alloc_frag(i64) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i8*, i64) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @napi_free_frags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
