; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_get_pkt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_get_pkt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_dma_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, %struct.knav_dma_desc*)* @get_pkt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pkt_info(i8** %0, i8** %1, i8** %2, %struct.knav_dma_desc* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.knav_dma_desc*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.knav_dma_desc* %3, %struct.knav_dma_desc** %8, align 8
  %9 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %10 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @le32_to_cpu(i32 %11)
  %13 = load i8**, i8*** %6, align 8
  store i8* %12, i8** %13, align 8
  %14 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %15 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @le32_to_cpu(i32 %16)
  %18 = load i8**, i8*** %5, align 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %8, align 8
  %20 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
