; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_dump_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_dump_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i32, i32 }
%struct.qede_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32, i32)* }

@.str = private unnamed_addr constant [24 x i8] c"Edev ops not populated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDE_DUMP_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid cmd = %d\0A\00", align 1
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"dump->version = 0x%x dump->flag = %d dump->len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @qede_get_dump_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_get_dump_flag(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %6, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %15 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %22 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %13
  %26 = load i32, i32* @QEDE_DUMP_VERSION, align 4
  %27 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %30 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %71 [
    i32 128, label %33
    i32 129, label %55
  ]

33:                                               ; preds = %25
  %34 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %34, i32 0, i32 0
  store i32 128, i32* %35, align 4
  %36 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %37 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %44 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %47 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %42(i32 %45, i32 %51)
  %53 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %80

55:                                               ; preds = %25
  %56 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %56, i32 0, i32 0
  store i32 129, i32* %57, align 4
  %58 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %66 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %64(i32 %67)
  %69 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %80

71:                                               ; preds = %25
  %72 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %73 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %74 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %93

80:                                               ; preds = %55, %33
  %81 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %82 = load i32, i32* @QED_MSG_DEBUG, align 4
  %83 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DP_VERBOSE(%struct.qede_dev* %81, i32 %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %80, %71, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
