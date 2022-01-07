; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_local = type { i64 }

@XEL_GIER_GIE_MASK = common dso_local global i32 0, align 4
@XEL_GIER_OFFSET = common dso_local global i64 0, align 8
@XEL_TSR_OFFSET = common dso_local global i64 0, align 8
@XEL_TSR_XMIT_IE_MASK = common dso_local global i32 0, align 4
@XEL_RSR_OFFSET = common dso_local global i64 0, align 8
@XEL_RSR_RECV_IE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_local*)* @xemaclite_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_disable_interrupts(%struct.net_local* %0) #0 {
  %2 = alloca %struct.net_local*, align 8
  %3 = alloca i32, align 4
  store %struct.net_local* %0, %struct.net_local** %2, align 8
  %4 = load i32, i32* @XEL_GIER_GIE_MASK, align 4
  %5 = load %struct.net_local*, %struct.net_local** %2, align 8
  %6 = getelementptr inbounds %struct.net_local, %struct.net_local* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XEL_GIER_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @xemaclite_writel(i32 %4, i64 %9)
  %11 = load %struct.net_local*, %struct.net_local** %2, align 8
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @xemaclite_readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @XEL_TSR_XMIT_IE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.net_local*, %struct.net_local** %2, align 8
  %22 = getelementptr inbounds %struct.net_local, %struct.net_local* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @xemaclite_writel(i32 %20, i64 %25)
  %27 = load %struct.net_local*, %struct.net_local** %2, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @xemaclite_readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @XEL_RSR_RECV_IE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.net_local*, %struct.net_local** %2, align 8
  %38 = getelementptr inbounds %struct.net_local, %struct.net_local* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @xemaclite_writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @xemaclite_writel(i32, i64) #1

declare dso_local i32 @xemaclite_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
