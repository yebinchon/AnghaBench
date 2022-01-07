; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rdma_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rdma_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i64, i64 }

@RDMA_STATUS = common dso_local global i64 0, align 8
@SYS_PORT_RDMA_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bcm_sysport_priv*, i64)* @rdma_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rdma_readl(%struct.bcm_sysport_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %6 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @RDMA_STATUS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 4
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %13, %9, %2
  %17 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SYS_PORT_RDMA_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @readl_relaxed(i64 %23)
  ret i64 %24
}

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
