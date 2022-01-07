; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_stats = type { i8*, i32 }
%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32 }

@BCM_SYSPORT_STATS_LEN = common dso_local global i32 0, align 4
@bcm_sysport_gstrings_stats = common dso_local global %struct.bcm_sysport_stats* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"txq%d_packets\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"txq%d_bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @bcm_sysport_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcm_sysport_priv*, align 8
  %8 = alloca %struct.bcm_sysport_stats*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.bcm_sysport_priv* %13, %struct.bcm_sysport_priv** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %93 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @BCM_SYSPORT_STATS_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** @bcm_sysport_gstrings_stats, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %21, i64 %23
  store %struct.bcm_sysport_stats* %24, %struct.bcm_sysport_stats** %8, align 8
  %25 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %26 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %8, align 8
  %31 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bcm_sysport_lite_stat_valid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %50

36:                                               ; preds = %29, %20
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %8, align 8
  %44 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = call i32 @memcpy(i32* %42, i8* %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %36, %35
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %16

53:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %89, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %54
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @snprintf(i8* %61, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %71 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %72 = call i32 @memcpy(i32* %69, i8* %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @snprintf(i8* %75, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %85 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %86 = call i32 @memcpy(i32* %83, i8* %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %60
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %54

92:                                               ; preds = %54
  br label %94

93:                                               ; preds = %3
  br label %94

94:                                               ; preds = %93, %92
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_sysport_lite_stat_valid(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
