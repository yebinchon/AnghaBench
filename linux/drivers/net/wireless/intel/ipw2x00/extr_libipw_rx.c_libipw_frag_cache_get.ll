; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_frag_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_frag_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.libipw_device = type { i64, %struct.libipw_frag_entry*, %struct.TYPE_2__* }
%struct.libipw_frag_entry = type { i32, i32, %struct.sk_buff*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.libipw_hdr_4addr = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@LIBIPW_FRAG_CACHE_LEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.libipw_device*, %struct.libipw_hdr_4addr*)* @libipw_frag_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @libipw_frag_cache_get(%struct.libipw_device* %0, %struct.libipw_hdr_4addr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca %struct.libipw_hdr_4addr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.libipw_frag_entry*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store %struct.libipw_hdr_4addr* %1, %struct.libipw_hdr_4addr** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %11 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %12 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @WLAN_GET_SEQ_FRAG(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @WLAN_GET_SEQ_SEQ(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %96

21:                                               ; preds = %2
  %22 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %23 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 12
  %28 = add i64 %27, 8
  %29 = add i64 %28, 2
  %30 = add i64 %29, 8
  %31 = load i64, i64* @ETH_ALEN, align 8
  %32 = add i64 %30, %31
  %33 = call %struct.sk_buff* @dev_alloc_skb(i64 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %119

37:                                               ; preds = %21
  %38 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %39 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %38, i32 0, i32 1
  %40 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %39, align 8
  %41 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %42 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %40, i64 %43
  store %struct.libipw_frag_entry* %44, %struct.libipw_frag_entry** %10, align 8
  %45 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %46 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %50 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LIBIPW_FRAG_CACHE_LEN, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %56 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %59 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %58, i32 0, i32 2
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %64 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %63, i32 0, i32 2
  %65 = load %struct.sk_buff*, %struct.sk_buff** %64, align 8
  %66 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %70 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %73 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %76 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %79 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %78, i32 0, i32 2
  store %struct.sk_buff* %77, %struct.sk_buff** %79, align 8
  %80 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %81 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %84 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @ETH_ALEN, align 8
  %87 = call i32 @memcpy(i32 %82, i32 %85, i64 %86)
  %88 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %89 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %92 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @ETH_ALEN, align 8
  %95 = call i32 @memcpy(i32 %90, i32 %93, i64 %94)
  br label %117

96:                                               ; preds = %2
  %97 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %101 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %104 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.libipw_frag_entry* @libipw_frag_cache_find(%struct.libipw_device* %97, i32 %98, i32 %99, i32 %102, i32 %105)
  store %struct.libipw_frag_entry* %106, %struct.libipw_frag_entry** %10, align 8
  %107 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %108 = icmp ne %struct.libipw_frag_entry* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %112 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.libipw_frag_entry*, %struct.libipw_frag_entry** %10, align 8
  %114 = getelementptr inbounds %struct.libipw_frag_entry, %struct.libipw_frag_entry* %113, i32 0, i32 2
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %6, align 8
  br label %116

116:                                              ; preds = %109, %96
  br label %117

117:                                              ; preds = %116, %67
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %118, %struct.sk_buff** %3, align 8
  br label %119

119:                                              ; preds = %117, %36
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %120
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_FRAG(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_SEQ(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local %struct.libipw_frag_entry* @libipw_frag_cache_find(%struct.libipw_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
