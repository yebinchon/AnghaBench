; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_get_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_get_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nicvf = type { i32 }
%struct.cqe_rx_t = type { i32, i64 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RCV_FRAG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @nicvf_get_rcv_skb(%struct.nicvf* %0, %struct.cqe_rx_t* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.cqe_rx_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.cqe_rx_t* %1, %struct.cqe_rx_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store i32* null, i32** %13, align 8
  store i64* null, i64** %14, align 8
  %16 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %17 = bitcast %struct.cqe_rx_t* %16 to i8*
  %18 = getelementptr i8, i8* %17, i64 24
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %13, align 8
  %20 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %21 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %26 = bitcast %struct.cqe_rx_t* %25 to i8*
  %27 = getelementptr i8, i8* %26, i64 48
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %14, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %31 = bitcast %struct.cqe_rx_t* %30 to i8*
  %32 = getelementptr i8, i8* %31, i64 56
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** %14, align 8
  br label %34

34:                                               ; preds = %29, %24
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %122, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %38 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %125

41:                                               ; preds = %35
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @frag_num(i32 %43)
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @nicvf_iova_to_phys(%struct.nicvf* %47, i64 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %56, %53
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %127

60:                                               ; preds = %41
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %65 = load i64*, i64** %14, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %68 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load i64, i64* %15, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @nicvf_unmap_rcv_buffer(%struct.nicvf* %64, i64 %70, i64 %71, i32 %72)
  %74 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %77 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load i32, i32* %9, align 4
  %81 = call %struct.sk_buff* @nicvf_rb_ptr_to_skb(%struct.nicvf* %74, i64 %79, i32 %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %10, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %63
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %127

85:                                               ; preds = %63
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %6, align 8
  %88 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @skb_reserve(%struct.sk_buff* %86, i64 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @skb_put(%struct.sk_buff* %91, i32 %92)
  br label %119

94:                                               ; preds = %60
  %95 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @nicvf_unmap_rcv_buffer(%struct.nicvf* %95, i64 %97, i64 %98, i32 %99)
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @phys_to_virt(i64 %101)
  %103 = call %struct.page* @virt_to_page(i32 %102)
  store %struct.page* %103, %struct.page** %11, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @phys_to_virt(i64 %104)
  %106 = load %struct.page*, %struct.page** %11, align 8
  %107 = call i32 @page_address(%struct.page* %106)
  %108 = sub nsw i32 %105, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.page*, %struct.page** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @RCV_FRAG_LEN, align 4
  %118 = call i32 @skb_add_rx_frag(%struct.sk_buff* %109, i32 %113, %struct.page* %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %94, %85
  %120 = load i64*, i64** %14, align 8
  %121 = getelementptr inbounds i64, i64* %120, i32 1
  store i64* %121, i64** %14, align 8
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %35

125:                                              ; preds = %35
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %126, %struct.sk_buff** %4, align 8
  br label %127

127:                                              ; preds = %125, %84, %59
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %128
}

declare dso_local i64 @frag_num(i32) #1

declare dso_local i64 @nicvf_iova_to_phys(%struct.nicvf*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @nicvf_unmap_rcv_buffer(%struct.nicvf*, i64, i64, i32) #1

declare dso_local %struct.sk_buff* @nicvf_rb_ptr_to_skb(%struct.nicvf*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @phys_to_virt(i64) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
