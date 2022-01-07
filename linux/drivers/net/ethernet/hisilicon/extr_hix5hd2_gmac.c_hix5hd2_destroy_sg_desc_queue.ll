; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_destroy_sg_desc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_destroy_sg_desc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@TX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_destroy_sg_desc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_destroy_sg_desc_queue(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  %3 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %4 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %10 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TX_DESC_NUM, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %17 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %21 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_free_coherent(i32 %11, i32 %15, i32* %19, i32 %23)
  %25 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %26 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
