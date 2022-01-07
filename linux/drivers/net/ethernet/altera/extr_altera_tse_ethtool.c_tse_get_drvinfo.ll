; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_ethtool.c_tse_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_ethtool.c_tse_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.altera_tse_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"altera_tse\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"v8.0\00", align 1
@ETHTOOL_FWVERS_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"v%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @tse_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.altera_tse_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %7)
  store %struct.altera_tse_private* %8, %struct.altera_tse_private** %5, align 8
  %9 = load %struct.altera_tse_private*, %struct.altera_tse_private** %5, align 8
  %10 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @ioread32(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 65535
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, -65536
  %30 = lshr i32 %29, 16
  %31 = call i32 @snprintf(i32 %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sprintf(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
