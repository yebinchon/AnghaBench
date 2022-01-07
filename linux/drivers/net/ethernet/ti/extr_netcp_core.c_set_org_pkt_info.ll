; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_set_org_pkt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_set_org_pkt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_dma_desc = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.knav_dma_desc*)* @set_org_pkt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_org_pkt_info(i32 %0, i32 %1, %struct.knav_dma_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.knav_dma_desc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.knav_dma_desc* %2, %struct.knav_dma_desc** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i8* @cpu_to_le32(i32 %7)
  %9 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %10 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @cpu_to_le32(i32 %11)
  %13 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %14 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
