; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_update_config_from_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_update_config_from_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@XSDFEC_ORDER_ADDR = common dso_local global i32 0, align 4
@XSDFEC_BYPASS_ADDR = common dso_local global i32 0, align 4
@XSDFEC_CODE_WR_PROTECT_ADDR = common dso_local global i32 0, align 4
@XSDFEC_IMR_ADDR = common dso_local global i32 0, align 4
@XSDFEC_ISR_MASK = common dso_local global i32 0, align 4
@XSDFEC_ECC_IMR_ADDR = common dso_local global i32 0, align 4
@XSDFEC_ECC_ISR_MASK = common dso_local global i32 0, align 4
@XSDFEC_AXIS_ENABLE_ADDR = common dso_local global i32 0, align 4
@XSDFEC_AXIS_IN_ENABLE_MASK = common dso_local global i32 0, align 4
@XSDFEC_STARTED = common dso_local global i32 0, align 4
@XSDFEC_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsdfec_dev*)* @update_config_from_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_config_from_hw(%struct.xsdfec_dev* %0) #0 {
  %2 = alloca %struct.xsdfec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %2, align 8
  %5 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %6 = load i32, i32* @XSDFEC_ORDER_ADDR, align 4
  %7 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %10 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %13 = load i32, i32* @XSDFEC_BYPASS_ADDR, align 4
  %14 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %15 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = call i32 @update_bool_config_from_reg(%struct.xsdfec_dev* %12, i32 %13, i32 0, i32* %16)
  %18 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %19 = load i32, i32* @XSDFEC_CODE_WR_PROTECT_ADDR, align 4
  %20 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %21 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = call i32 @update_bool_config_from_reg(%struct.xsdfec_dev* %18, i32 %19, i32 0, i32* %22)
  %24 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %25 = load i32, i32* @XSDFEC_IMR_ADDR, align 4
  %26 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @XSDFEC_ISR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %33 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %37 = load i32, i32* @XSDFEC_ECC_IMR_ADDR, align 4
  %38 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @XSDFEC_ECC_ISR_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %45 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %49 = load i32, i32* @XSDFEC_AXIS_ENABLE_ADDR, align 4
  %50 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @XSDFEC_AXIS_IN_ENABLE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %1
  %59 = load i32, i32* @XSDFEC_STARTED, align 4
  %60 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %61 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %1
  %63 = load i32, i32* @XSDFEC_STOPPED, align 4
  %64 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %65 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  ret void
}

declare dso_local i32 @xsdfec_regread(%struct.xsdfec_dev*, i32) #1

declare dso_local i32 @update_bool_config_from_reg(%struct.xsdfec_dev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
