; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_tso_count_subdescs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_tso_count_subdescs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @nicvf_tso_count_subdescs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_tso_count_subdescs(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.skb_shared_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %14)
  store %struct.skb_shared_info* %15, %struct.skb_shared_info** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i32 @skb_transport_offset(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call i32 @tcp_hdrlen(%struct.sk_buff* %18)
  %20 = add i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %27 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = call i32 @skb_headlen(%struct.sk_buff* %29)
  %31 = load i32, i32* %4, align 4
  %32 = sub i32 %30, %31
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %97, %1
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %84, %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  %55 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %56 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = call i64 @skb_frag_size(i32* %59)
  store i64 %60, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %48

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub i32 %62, %63
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub nsw i64 %67, %68
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %71, %61
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %43

87:                                               ; preds = %43
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %34

100:                                              ; preds = %34
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %103 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  ret i32 %105
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
