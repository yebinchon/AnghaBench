; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_init_sg_desc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_init_sg_desc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.sg_desc* }
%struct.sg_desc = type { i32 }

@TX_DESC_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hix5hd2_priv*)* @hix5hd2_init_sg_desc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_init_sg_desc_queue(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hix5hd2_priv*, align 8
  %4 = alloca %struct.sg_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %3, align 8
  %6 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TX_DESC_NUM, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @dma_alloc_coherent(i32 %8, i32 %12, i32* %5, i32 %13)
  %15 = inttoptr i64 %14 to %struct.sg_desc*
  store %struct.sg_desc* %15, %struct.sg_desc** %4, align 8
  %16 = load %struct.sg_desc*, %struct.sg_desc** %4, align 8
  %17 = icmp ne %struct.sg_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.sg_desc*, %struct.sg_desc** %4, align 8
  %23 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.sg_desc* %22, %struct.sg_desc** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
