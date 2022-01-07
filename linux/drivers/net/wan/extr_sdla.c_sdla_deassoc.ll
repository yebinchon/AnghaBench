; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_deassoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_deassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.frad_local = type { %struct.TYPE_2__, i64*, %struct.net_device** }
%struct.TYPE_2__ = type { i64 }

@CONFIG_DLCI_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FRAD_STATION_CPE = common dso_local global i64 0, align 8
@SDLA_DELETE_DLCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @sdla_deassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_deassoc(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.frad_local*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.frad_local* @netdev_priv(%struct.net_device* %8)
  store %struct.frad_local* %9, %struct.frad_local** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %16 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %15, i32 0, i32 2
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %19
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp eq %struct.net_device* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %29
  %37 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %38 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %37, i32 0, i32 2
  %39 = load %struct.net_device**, %struct.net_device*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.net_device*, %struct.net_device** %39, i64 %41
  store %struct.net_device* null, %struct.net_device** %42, align 8
  %43 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %44 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i64 @netif_running(%struct.net_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %36
  %53 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %54 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FRAD_STATION_CPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @sdla_reconfig(%struct.net_device* %60)
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load i32, i32* @SDLA_DELETE_DLCI, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sdla_cmd(%struct.net_device* %63, i32 %64, i32 0, i32 0, i32 %67, i32 2, i32* null, i32* null)
  br label %69

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %69, %36
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sdla_reconfig(%struct.net_device*) #1

declare dso_local i32 @sdla_cmd(%struct.net_device*, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
