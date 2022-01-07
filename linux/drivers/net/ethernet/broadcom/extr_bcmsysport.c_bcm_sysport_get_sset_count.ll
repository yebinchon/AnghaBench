; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_stats = type { i32 }
%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32 }

@BCM_SYSPORT_STATS_LEN = common dso_local global i32 0, align 4
@bcm_sysport_gstrings_stats = common dso_local global %struct.bcm_sysport_stats* null, align 8
@NUM_SYSPORT_TXQ_STAT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcm_sysport_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_sysport_priv*, align 8
  %7 = alloca %struct.bcm_sysport_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.bcm_sysport_priv* %11, %struct.bcm_sysport_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %48 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BCM_SYSPORT_STATS_LEN, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** @bcm_sysport_gstrings_stats, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %19, i64 %21
  store %struct.bcm_sysport_stats* %22, %struct.bcm_sysport_stats** %7, align 8
  %23 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %24 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %7, align 8
  %29 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bcm_sysport_lite_stat_valid(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27, %18
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NUM_SYSPORT_TXQ_STAT, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add i32 %41, %46
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_sysport_lite_stat_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
