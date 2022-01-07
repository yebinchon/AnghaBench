; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_clean_sg_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_clean_sg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sg_desc* }
%struct.sg_desc = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*, %struct.sk_buff*, i32)* @hix5hd2_clean_sg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_clean_sg_desc(%struct.hix5hd2_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.hix5hd2_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sg_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.sg_desc*, %struct.sg_desc** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %14, i64 %16
  store %struct.sg_desc* %17, %struct.sg_desc** %7, align 8
  %18 = load %struct.sg_desc*, %struct.sg_desc** %7, align 8
  %19 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le32_to_cpu(i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.sg_desc*, %struct.sg_desc** %7, align 8
  %23 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @le32_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_unmap_single(i32 %29, i8* %30, i32 %31, i32 %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %68, %3
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %34
  %42 = load %struct.sg_desc*, %struct.sg_desc** %7, align 8
  %43 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le32_to_cpu(i32 %49)
  store i8* %50, i8** %8, align 8
  %51 = load %struct.sg_desc*, %struct.sg_desc** %7, align 8
  %52 = getelementptr inbounds %struct.sg_desc, %struct.sg_desc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %62 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @dma_unmap_page(i32 %63, i8* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %41
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %34

71:                                               ; preds = %34
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
