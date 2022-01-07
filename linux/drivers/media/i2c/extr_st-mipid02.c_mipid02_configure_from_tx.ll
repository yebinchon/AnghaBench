; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_from_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_from_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_6__, %struct.v4l2_fwnode_endpoint }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SELECTION_MANUAL_WIDTH = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@MODE_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@MODE_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_configure_from_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_configure_from_tx(%struct.mipid02_dev* %0) #0 {
  %2 = alloca %struct.mipid02_dev*, align 8
  %3 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %2, align 8
  %4 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %4, i32 0, i32 1
  store %struct.v4l2_fwnode_endpoint* %5, %struct.v4l2_fwnode_endpoint** %3, align 8
  %6 = load i32, i32* @SELECTION_MANUAL_WIDTH, align 4
  %7 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 4
  %10 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i32, i32* @MODE_HSYNC_ACTIVE_HIGH, align 4
  %36 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %37 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @MODE_VSYNC_ACTIVE_HIGH, align 4
  %52 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %53 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %41
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
