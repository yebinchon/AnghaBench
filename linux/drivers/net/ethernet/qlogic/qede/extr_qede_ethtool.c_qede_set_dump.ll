; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32 }
%struct.qede_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i64, i32* }

@QEDE_DUMP_CMD_NONE = common dso_local global i32 0, align 4
@QEDE_DUMP_CMD_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid command %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDE_DUMP_MAX_ARGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Arg count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @qede_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_dump(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.qede_dev* %9, %struct.qede_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %11 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @QEDE_DUMP_CMD_NONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QEDE_DUMP_CMD_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %24 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DP_ERR(%struct.qede_dev* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %16
  %31 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %35 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %98

40:                                               ; preds = %2
  %41 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %42 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @QEDE_DUMP_MAX_ARGS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %49 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %50 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @DP_ERR(%struct.qede_dev* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %98

57:                                               ; preds = %40
  %58 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %95 [
    i32 128, label %62
    i32 129, label %80
  ]

62:                                               ; preds = %57
  %63 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %67 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %71 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 %65, i32* %74, align 4
  %75 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %76 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %96

80:                                               ; preds = %57
  %81 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %82 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %86, align 8
  %88 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %89 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %87(i32 %90, i32 %93, i32 1)
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %57
  br label %96

96:                                               ; preds = %95, %80, %62
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %47, %30, %22
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
