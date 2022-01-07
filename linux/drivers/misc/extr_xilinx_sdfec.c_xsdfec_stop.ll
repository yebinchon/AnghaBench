; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i64, i32 }

@XSDFEC_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Device not started correctly\00", align 1
@XSDFEC_AXIS_ENABLE_ADDR = common dso_local global i32 0, align 4
@XSDFEC_AXIS_IN_ENABLE_MASK = common dso_local global i32 0, align 4
@XSDFEC_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*)* @xsdfec_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_stop(%struct.xsdfec_dev* %0) #0 {
  %2 = alloca %struct.xsdfec_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %2, align 8
  %4 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %5 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XSDFEC_STARTED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %11 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %16 = load i32, i32* @XSDFEC_AXIS_ENABLE_ADDR, align 4
  %17 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @XSDFEC_AXIS_IN_ENABLE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %23 = load i32, i32* @XSDFEC_AXIS_ENABLE_ADDR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %22, i32 %23, i32 %24)
  %26 = load i64, i64* @XSDFEC_STOPPED, align 8
  %27 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %28 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @xsdfec_regread(%struct.xsdfec_dev*, i32) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
