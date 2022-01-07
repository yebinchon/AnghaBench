; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_free_cmd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_free_cmd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_cmq_ring = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_cmq_ring*)* @hclgevf_free_cmd_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_free_cmd_desc(%struct.hclgevf_cmq_ring* %0) #0 {
  %2 = alloca %struct.hclgevf_cmq_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.hclgevf_cmq_ring* %0, %struct.hclgevf_cmq_ring** %2, align 8
  %4 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %2, align 8
  %5 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %2, align 8
  %11 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %2, align 8
  %16 = call i32 @cmq_ring_to_dev(%struct.hclgevf_cmq_ring* %15)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %2, align 8
  %19 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %2, align 8
  %22 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_free_coherent(i32 %16, i32 %17, i32* %20, i32 %23)
  %25 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %2, align 8
  %26 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @cmq_ring_to_dev(%struct.hclgevf_cmq_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
