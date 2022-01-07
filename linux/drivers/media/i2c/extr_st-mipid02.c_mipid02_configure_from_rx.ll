; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_from_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_configure_from_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_6__, %struct.v4l2_fwnode_endpoint }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32 }

@MODE_DATA_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_configure_from_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_configure_from_rx(%struct.mipid02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid02_dev*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %3, align 8
  %9 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %9, i32 0, i32 1
  store %struct.v4l2_fwnode_endpoint* %10, %struct.v4l2_fwnode_endpoint** %4, align 8
  %11 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  %25 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %31 = call i32 @mipid02_configure_clk_lane(%struct.mipid02_dev* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %1
  %37 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @mipid02_configure_data0_lane(%struct.mipid02_dev* %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %36
  %47 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @mipid02_configure_data1_lane(%struct.mipid02_dev* %47, i32 %48, i32 %49, i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %79

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @MODE_DATA_SWAP, align 4
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = shl i32 %70, 1
  %72 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %78 = call i32 @mipid02_configure_from_rx_speed(%struct.mipid02_dev* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %62, %54, %44, %34
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @mipid02_configure_clk_lane(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_configure_data0_lane(%struct.mipid02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mipid02_configure_data1_lane(%struct.mipid02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mipid02_configure_from_rx_speed(%struct.mipid02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
