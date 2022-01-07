; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_update_mbus_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_update_mbus_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@smiapp_csi_data_formats = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"new pixel order %s\0A\00", align 1
@pixel_order_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smiapp_sensor*)* @smiapp_update_mbus_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smiapp_update_mbus_formats(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca %struct.smiapp_sensor*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %2, align 8
  %7 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %8 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %3, align 8
  %12 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %13 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @to_csi_format_idx(i32* %14)
  %16 = and i32 %15, -4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %18 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @to_csi_format_idx(i32* %19)
  %21 = and i32 %20, -4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %23 = call i32 @smiapp_pixel_order(%struct.smiapp_sensor* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %25 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %30 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** @smiapp_csi_data_formats, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %38 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** @smiapp_csi_data_formats, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %46 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @max(i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32*, i32** @smiapp_csi_data_formats, align 8
  %54 = call i64 @ARRAY_SIZE(i32* %53)
  %55 = icmp sge i64 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32*, i32** @pixel_order_str, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %64)
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @to_csi_format_idx(i32*) #1

declare dso_local i32 @smiapp_pixel_order(%struct.smiapp_sensor*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
