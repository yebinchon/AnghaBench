; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_fill_sg_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_fill_sg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sg_desc* }
%struct.sg_desc = type { %struct.TYPE_5__*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hix5hd2_priv*, %struct.sk_buff*, i32)* @hix5hd2_fill_sg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_fill_sg_desc(%struct.hix5hd2_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hix5hd2_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sg_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.sg_desc*, %struct.sg_desc** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %17, i64 %19
  store %struct.sg_desc* %20, %struct.sg_desc** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.sg_desc*, %struct.sg_desc** %8, align 8
  %26 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @skb_headlen(%struct.sk_buff* %33)
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_map_single(i32 %29, i32 %32, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %38 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dma_mapping_error(i32 %39, i32 %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %115

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.sg_desc*, %struct.sg_desc** %8, align 8
  %51 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @skb_headlen(%struct.sk_buff* %52)
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.sg_desc*, %struct.sg_desc** %8, align 8
  %56 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %111, %47
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @skb_frag_size(i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %75 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = call i32 @skb_frag_dma_map(i32 %76, i32* %77, i32 0, i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %82 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dma_mapping_error(i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %64
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %115

92:                                               ; preds = %64
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.sg_desc*, %struct.sg_desc** %8, align 8
  %96 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i8* %94, i8** %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.sg_desc*, %struct.sg_desc** %8, align 8
  %105 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i8* %103, i8** %110, align 8
  br label %111

111:                                              ; preds = %92
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %57

114:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %89, %44
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
