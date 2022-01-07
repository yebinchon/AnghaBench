; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_clk_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_clk_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_4__, %struct.v4l2_fwnode_endpoint, %struct.i2c_client* }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"clk lane must be map to lane 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_configure_clk_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_configure_clk_lane(%struct.mipid02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid02_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca i32*, align 8
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %3, align 8
  %7 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %10, i32 0, i32 1
  store %struct.v4l2_fwnode_endpoint* %11, %struct.v4l2_fwnode_endpoint** %5, align 8
  %12 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %41

29:                                               ; preds = %1
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = load i32, i32* @CLK_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %29, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
