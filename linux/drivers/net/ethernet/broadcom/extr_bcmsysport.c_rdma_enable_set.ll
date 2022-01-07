; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rdma_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rdma_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }

@RDMA_CONTROL = common dso_local global i32 0, align 4
@RDMA_EN = common dso_local global i32 0, align 4
@RDMA_STATUS = common dso_local global i32 0, align 4
@RDMA_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"timeout waiting for RDMA to finish\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*, i32)* @rdma_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_enable_set(%struct.bcm_sysport_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %9 = load i32, i32* @RDMA_CONTROL, align 4
  %10 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @RDMA_EN, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @RDMA_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RDMA_CONTROL, align 4
  %26 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %46, %22
  %28 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %29 = load i32, i32* @RDMA_STATUS, align 4
  %30 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RDMA_DISABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %57

44:                                               ; preds = %27
  %45 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = icmp ugt i32 %47, 0
  br i1 %49, label %27, label %50

50:                                               ; preds = %46
  %51 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netdev_err(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @rdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @rdma_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
