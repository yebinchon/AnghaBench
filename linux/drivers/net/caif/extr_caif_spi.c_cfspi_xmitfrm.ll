; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_xmitfrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_xmitfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfspi = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.caif_payload_info = type { i64 }

@spi_up_head_align = common dso_local global i32 0, align 4
@spi_up_tail_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfspi_xmitfrm(%struct.cfspi* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.cfspi*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.caif_payload_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cfspi* %0, %struct.cfspi** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %7, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @caif_assert(i64* %13)
  %15 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %16 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %21 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %26 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19, %3
  br label %28

28:                                               ; preds = %102, %27
  store i32 0, i32* %10, align 4
  %29 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %30 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %29, i32 0, i32 2
  %31 = call %struct.sk_buff* @skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %111

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to %struct.caif_payload_info*
  store %struct.caif_payload_info* %38, %struct.caif_payload_info** %9, align 8
  %39 = load i32, i32* @spi_up_head_align, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.caif_payload_info*, %struct.caif_payload_info** %9, align 8
  %43 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i32, i32* @spi_up_head_align, align 4
  %47 = call i32 @PAD_POW2(i64 %45, i32 %46)
  %48 = add nsw i32 1, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64* %56, i64** %7, align 8
  br label %57

57:                                               ; preds = %41, %35
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @skb_copy_bits(%struct.sk_buff* %58, i32 0, i64* %59, i64 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 %66
  store i64* %68, i64** %7, align 8
  %69 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %70 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %80 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %78
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* @spi_up_tail_align, align 4
  %95 = call i32 @PAD_POW2(i64 %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i64*, i64** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64* %99, i64** %7, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @dev_kfree_skb(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %57
  %103 = load i64*, i64** %7, align 8
  %104 = load i64*, i64** %5, align 8
  %105 = ptrtoint i64* %103 to i64
  %106 = ptrtoint i64* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %28, label %111

111:                                              ; preds = %102, %34
  %112 = load i64*, i64** %7, align 8
  %113 = load i64*, i64** %5, align 8
  %114 = ptrtoint i64* %112 to i64
  %115 = ptrtoint i64* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 8
  %118 = trunc i64 %117 to i32
  ret i32 %118
}

declare dso_local i32 @caif_assert(i64*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @PAD_POW2(i64, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i64*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
