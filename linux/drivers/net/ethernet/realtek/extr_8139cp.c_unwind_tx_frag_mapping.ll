; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_unwind_tx_frag_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_unwind_tx_frag_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { %struct.TYPE_3__*, %struct.cp_desc*, i32** }
%struct.TYPE_3__ = type { i32 }
%struct.cp_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*, %struct.sk_buff*, i32, i32)* @unwind_tx_frag_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_tx_frag_mapping(%struct.cp_private* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cp_private*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cp_desc*, align 8
  %12 = alloca i32*, align 8
  store %struct.cp_private* %0, %struct.cp_private** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %54, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %24 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* null, i32** %28, align 8
  %29 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %30 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %29, i32 0, i32 1
  %31 = load %struct.cp_desc*, %struct.cp_desc** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %31, i64 %33
  store %struct.cp_desc* %34, %struct.cp_desc** %11, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %12, align 8
  %42 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %43 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.cp_desc*, %struct.cp_desc** %11, align 8
  %47 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le64_to_cpu(i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @skb_frag_size(i32* %50)
  %52 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %53 = call i32 @dma_unmap_single(i32* %45, i32 %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %19
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %13

57:                                               ; preds = %13
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
