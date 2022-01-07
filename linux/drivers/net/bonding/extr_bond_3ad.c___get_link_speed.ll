; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___get_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___get_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.slave* }
%struct.slave = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BOND_LINK_UP = common dso_local global i64 0, align 8
@AD_LINK_SPEED_10MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_100MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_1000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_2500MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_5000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_10000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_14000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_20000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_25000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_40000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_50000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_56000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_100000MBPS = common dso_local global i64 0, align 8
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"%s: (slave %s): unknown ethtool speed (%d) for port %d (set it to 0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Port %d Received link speed %d update from adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port*)* @__get_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_link_speed(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.slave*, align 8
  %4 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 1
  %7 = load %struct.slave*, %struct.slave** %6, align 8
  store %struct.slave* %7, %struct.slave** %3, align 8
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BOND_LINK_UP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.slave*, %struct.slave** %3, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %44 [
    i32 140, label %18
    i32 139, label %20
    i32 138, label %22
    i32 133, label %24
    i32 130, label %26
    i32 137, label %28
    i32 135, label %30
    i32 134, label %32
    i32 132, label %34
    i32 131, label %36
    i32 129, label %38
    i32 128, label %40
    i32 136, label %42
  ]

18:                                               ; preds = %14
  %19 = load i64, i64* @AD_LINK_SPEED_10MBPS, align 8
  store i64 %19, i64* %4, align 8
  br label %71

20:                                               ; preds = %14
  %21 = load i64, i64* @AD_LINK_SPEED_100MBPS, align 8
  store i64 %21, i64* %4, align 8
  br label %71

22:                                               ; preds = %14
  %23 = load i64, i64* @AD_LINK_SPEED_1000MBPS, align 8
  store i64 %23, i64* %4, align 8
  br label %71

24:                                               ; preds = %14
  %25 = load i64, i64* @AD_LINK_SPEED_2500MBPS, align 8
  store i64 %25, i64* %4, align 8
  br label %71

26:                                               ; preds = %14
  %27 = load i64, i64* @AD_LINK_SPEED_5000MBPS, align 8
  store i64 %27, i64* %4, align 8
  br label %71

28:                                               ; preds = %14
  %29 = load i64, i64* @AD_LINK_SPEED_10000MBPS, align 8
  store i64 %29, i64* %4, align 8
  br label %71

30:                                               ; preds = %14
  %31 = load i64, i64* @AD_LINK_SPEED_14000MBPS, align 8
  store i64 %31, i64* %4, align 8
  br label %71

32:                                               ; preds = %14
  %33 = load i64, i64* @AD_LINK_SPEED_20000MBPS, align 8
  store i64 %33, i64* %4, align 8
  br label %71

34:                                               ; preds = %14
  %35 = load i64, i64* @AD_LINK_SPEED_25000MBPS, align 8
  store i64 %35, i64* %4, align 8
  br label %71

36:                                               ; preds = %14
  %37 = load i64, i64* @AD_LINK_SPEED_40000MBPS, align 8
  store i64 %37, i64* %4, align 8
  br label %71

38:                                               ; preds = %14
  %39 = load i64, i64* @AD_LINK_SPEED_50000MBPS, align 8
  store i64 %39, i64* %4, align 8
  br label %71

40:                                               ; preds = %14
  %41 = load i64, i64* @AD_LINK_SPEED_56000MBPS, align 8
  store i64 %41, i64* %4, align 8
  br label %71

42:                                               ; preds = %14
  %43 = load i64, i64* @AD_LINK_SPEED_100000MBPS, align 8
  store i64 %43, i64* %4, align 8
  br label %71

44:                                               ; preds = %14
  %45 = load %struct.slave*, %struct.slave** %3, align 8
  %46 = getelementptr inbounds %struct.slave, %struct.slave* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SPEED_UNKNOWN, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.slave*, %struct.slave** %3, align 8
  %52 = getelementptr inbounds %struct.slave, %struct.slave* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.slave*, %struct.slave** %3, align 8
  %59 = getelementptr inbounds %struct.slave, %struct.slave* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.slave*, %struct.slave** %3, align 8
  %64 = getelementptr inbounds %struct.slave, %struct.slave* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.port*, %struct.port** %2, align 8
  %67 = getelementptr inbounds %struct.port, %struct.port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pr_warn_once(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %50, %44
  store i64 0, i64* %4, align 8
  br label %71

71:                                               ; preds = %70, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18
  br label %72

72:                                               ; preds = %71, %13
  %73 = load %struct.slave*, %struct.slave** %3, align 8
  %74 = getelementptr inbounds %struct.slave, %struct.slave* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.slave*, %struct.slave** %3, align 8
  %79 = getelementptr inbounds %struct.slave, %struct.slave* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.port*, %struct.port** %2, align 8
  %82 = getelementptr inbounds %struct.port, %struct.port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @slave_dbg(%struct.TYPE_5__* %77, %struct.TYPE_6__* %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84)
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i32 @pr_warn_once(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @slave_dbg(%struct.TYPE_5__*, %struct.TYPE_6__*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
