; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hip04_priv = type { i32, i64, i8*, i8* }

@SPEED_1000 = common dso_local global i8* null, align 8
@SGMII_SPEED_1000 = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@SGMII_SPEED_100 = common dso_local global i8* null, align 8
@SGMII_SPEED_10 = common dso_local global i8* null, align 8
@MII_SPEED_100 = common dso_local global i8* null, align 8
@MII_SPEED_10 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"not supported mode\0A\00", align 1
@GE_PORT_MODE = common dso_local global i64 0, align 8
@GE_DUPLEX_FULL = common dso_local global i8* null, align 8
@GE_DUPLEX_HALF = common dso_local global i8* null, align 8
@GE_DUPLEX_TYPE = common dso_local global i64 0, align 8
@GE_MODE_CHANGE_EN = common dso_local global i8* null, align 8
@GE_MODE_CHANGE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i8*)* @hip04_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_config_port(%struct.net_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hip04_priv*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hip04_priv* %10, %struct.hip04_priv** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %13 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %16 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %18 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %45 [
    i32 128, label %20
    i32 129, label %36
  ]

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** @SPEED_1000, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** @SGMII_SPEED_1000, align 8
  store i8* %25, i8** %8, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** @SPEED_100, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** @SGMII_SPEED_100, align 8
  store i8* %31, i8** %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** @SGMII_SPEED_10, align 8
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %24
  br label %49

36:                                               ; preds = %3
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** @SPEED_100, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** @MII_SPEED_100, align 8
  store i8* %41, i8** %8, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** @MII_SPEED_10, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %49

45:                                               ; preds = %3
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netdev_warn(%struct.net_device* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** @MII_SPEED_10, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %45, %44, %35
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %52 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GE_PORT_MODE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel_relaxed(i8* %50, i64 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i8*, i8** @GE_DUPLEX_FULL, align 8
  br label %63

61:                                               ; preds = %49
  %62 = load i8*, i8** @GE_DUPLEX_HALF, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i8* [ %60, %59 ], [ %62, %61 ]
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %67 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @GE_DUPLEX_TYPE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i8* %65, i64 %70)
  %72 = load i8*, i8** @GE_MODE_CHANGE_EN, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %75 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GE_MODE_CHANGE_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i8* %73, i64 %78)
  ret void
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @writel_relaxed(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
