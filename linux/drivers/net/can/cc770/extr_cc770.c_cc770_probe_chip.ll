; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_probe_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_probe_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.net_device = type { i32 }
%struct.cc770_priv = type { i32, i32, i32 }

@control = common dso_local global i32 0, align 4
@CTRL_CCE = common dso_local global i32 0, align 4
@CTRL_EAF = common dso_local global i32 0, align 4
@CTRL_INI = common dso_local global i32 0, align 4
@cpu_interface = common dso_local global i32 0, align 4
@CPUIF_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"probing @0x%p failed (reset)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"probing @0x%p failed (pattern)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cc770_probe_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_probe_chip(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cc770_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.cc770_priv* %6, %struct.cc770_priv** %4, align 8
  %7 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %8 = load i32, i32* @control, align 4
  %9 = load i32, i32* @CTRL_CCE, align 4
  %10 = load i32, i32* @CTRL_EAF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CTRL_INI, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @cc770_write_reg(%struct.cc770_priv* %7, i32 %8, i32 %13)
  %15 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %16 = load i32, i32* @cpu_interface, align 4
  %17 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %18 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cc770_write_reg(%struct.cc770_priv* %15, i32 %16, i32 %19)
  %21 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %22 = load i32, i32* @cpu_interface, align 4
  %23 = call i32 @cc770_read_reg(%struct.cc770_priv* %21, i32 %22)
  %24 = load i32, i32* @CPUIF_RST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %30 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %111

35:                                               ; preds = %1
  %36 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cc770_write_reg(%struct.cc770_priv* %36, i32 %42, i32 37)
  %44 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cc770_write_reg(%struct.cc770_priv* %44, i32 %50, i32 82)
  %52 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 10
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cc770_write_reg(%struct.cc770_priv* %52, i32 %58, i32 195)
  %60 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cc770_read_reg(%struct.cc770_priv* %60, i32 %66)
  %68 = icmp ne i32 %67, 37
  br i1 %68, label %89, label %69

69:                                               ; preds = %35
  %70 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cc770_read_reg(%struct.cc770_priv* %70, i32 %76)
  %78 = icmp ne i32 %77, 82
  br i1 %78, label %89, label %79

79:                                               ; preds = %69
  %80 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 10
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cc770_read_reg(%struct.cc770_priv* %80, i32 %86)
  %88 = icmp ne i32 %87, 195
  br i1 %88, label %89, label %97

89:                                               ; preds = %79, %69, %35
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %92 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @netdev_info(%struct.net_device* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %111

97:                                               ; preds = %79
  %98 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %99 = load i32, i32* @control, align 4
  %100 = call i32 @cc770_read_reg(%struct.cc770_priv* %98, i32 %99)
  %101 = load i32, i32* @CTRL_EAF, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* @CTRL_EAF, align 4
  %106 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %107 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %97
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %89, %27
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
