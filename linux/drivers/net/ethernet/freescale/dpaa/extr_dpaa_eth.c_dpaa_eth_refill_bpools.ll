; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_eth_refill_bpools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_eth_refill_bpools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_priv = type { %struct.dpaa_bp** }
%struct.dpaa_bp = type { i32 }

@DPAA_BPS_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_priv*)* @dpaa_eth_refill_bpools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_eth_refill_bpools(%struct.dpaa_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa_priv*, align 8
  %4 = alloca %struct.dpaa_bp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @DPAA_BPS_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %14 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %13, i32 0, i32 0
  %15 = load %struct.dpaa_bp**, %struct.dpaa_bp*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dpaa_bp*, %struct.dpaa_bp** %15, i64 %17
  %19 = load %struct.dpaa_bp*, %struct.dpaa_bp** %18, align 8
  store %struct.dpaa_bp* %19, %struct.dpaa_bp** %4, align 8
  %20 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %21 = icmp ne %struct.dpaa_bp* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %27 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @this_cpu_ptr(i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @dpaa_eth_refill_bpool(%struct.dpaa_bp* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %8

41:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %35, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @this_cpu_ptr(i32) #1

declare dso_local i32 @dpaa_eth_refill_bpool(%struct.dpaa_bp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
