; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rdma_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rdma_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i64, i64 }

@RDMA_STATUS = common dso_local global i64 0, align 8
@SYS_PORT_RDMA_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*, i64, i64)* @rdma_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_writel(%struct.bcm_sysport_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @RDMA_STATUS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %16, 4
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %15, %11, %3
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SYS_PORT_RDMA_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i64 %19, i64 %26)
  ret void
}

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
