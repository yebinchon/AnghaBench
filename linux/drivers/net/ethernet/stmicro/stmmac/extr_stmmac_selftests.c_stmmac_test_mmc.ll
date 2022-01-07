; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_mmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.stmmac_counters, %struct.TYPE_2__ }
%struct.stmmac_counters = type { i64 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_test_mmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_mmc(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.stmmac_counters, align 8
  %5 = alloca %struct.stmmac_counters, align 8
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %7 = call i32 @memset(%struct.stmmac_counters* %4, i32 0, i32 8)
  %8 = call i32 @memset(%struct.stmmac_counters* %5, i32 0, i32 8)
  %9 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %10 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 1
  %24 = call i32 @stmmac_mmc_read(%struct.stmmac_priv* %18, i32 %21, %struct.stmmac_counters* %23)
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %26 = call i32 @stmmac_test_mac_loopback(%struct.stmmac_priv* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %17
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @stmmac_mmc_read(%struct.stmmac_priv* %32, i32 %35, %struct.stmmac_counters* %5)
  %37 = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42, %29, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.stmmac_counters*, i32, i32) #1

declare dso_local i32 @stmmac_mmc_read(%struct.stmmac_priv*, i32, %struct.stmmac_counters*) #1

declare dso_local i32 @stmmac_test_mac_loopback(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
