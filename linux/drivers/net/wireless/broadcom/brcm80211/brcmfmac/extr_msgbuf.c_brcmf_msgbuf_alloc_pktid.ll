; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_alloc_pktid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_alloc_pktid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_msgbuf_pktids = type { i64, i64, i32, %struct.brcmf_msgbuf_pktid* }
%struct.brcmf_msgbuf_pktid = type { %struct.sk_buff*, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"dma_map_single failed !!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.brcmf_msgbuf_pktids*, %struct.sk_buff*, i64, i32*, i64*)* @brcmf_msgbuf_alloc_pktid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_msgbuf_alloc_pktid(%struct.device* %0, %struct.brcmf_msgbuf_pktids* %1, %struct.sk_buff* %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.brcmf_msgbuf_pktids*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.brcmf_msgbuf_pktid*, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.brcmf_msgbuf_pktids* %1, %struct.brcmf_msgbuf_pktids** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %17 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %16, i32 0, i32 3
  %18 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %17, align 8
  store %struct.brcmf_msgbuf_pktid* %18, %struct.brcmf_msgbuf_pktid** %14, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %31 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_map_single(%struct.device* %19, i64 %24, i64 %29, i32 %32)
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dma_mapping_error(%struct.device* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %122

44:                                               ; preds = %6
  %45 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %46 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %13, align 8
  store i64 %47, i64* %48, align 8
  store i64 0, i64* %15, align 8
  br label %49

49:                                               ; preds = %83, %44
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %56 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64*, i64** %13, align 8
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %59, %49
  %62 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %14, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %62, i64 %64
  %66 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %14, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %71, i64 %73
  %75 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %74, i32 0, i32 3
  %76 = call i64 @atomic_cmpxchg(%struct.TYPE_2__* %75, i32 0, i32 1)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %89

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i64, i64* %15, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %15, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %15, align 8
  %85 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %86 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %49, label %89

89:                                               ; preds = %83, %78
  %90 = load i64, i64* %15, align 8
  %91 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %92 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %122

98:                                               ; preds = %89
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %14, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %100, i64 %102
  %104 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %103, i32 0, i32 2
  store i64 %99, i64* %104, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %14, align 8
  %108 = load i64*, i64** %13, align 8
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %107, i64 %109
  %111 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %110, i32 0, i32 1
  store i32 %106, i32* %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %14, align 8
  %114 = load i64*, i64** %13, align 8
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %113, i64 %115
  %117 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %116, i32 0, i32 0
  store %struct.sk_buff* %112, %struct.sk_buff** %117, align 8
  %118 = load i64*, i64** %13, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %121 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %98, %95, %40
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @dma_map_single(%struct.device*, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i64 @atomic_cmpxchg(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
