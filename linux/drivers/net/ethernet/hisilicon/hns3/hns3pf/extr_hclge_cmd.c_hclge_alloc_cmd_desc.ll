; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_alloc_cmd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_alloc_cmd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_cmq_ring = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_cmq_ring*)* @hclge_alloc_cmd_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_alloc_cmd_desc(%struct.hclge_cmq_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_cmq_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.hclge_cmq_ring* %0, %struct.hclge_cmq_ring** %3, align 8
  %5 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %6 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %12 = call i32 @cmq_ring_to_dev(%struct.hclge_cmq_ring* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %14, i32 0, i32 2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @dma_alloc_coherent(i32 %12, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %21 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @cmq_ring_to_dev(%struct.hclge_cmq_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
