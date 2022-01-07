; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_lane_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_lane_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, i64*, i64*, i64 }

@CAL_CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_COMPLEXIO_CFG_CLOCK_POL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @csi2_lane_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_lane_config(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_fwnode_bus_mipi_csi2*, align 8
  %7 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %8 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CAL_CSI2_COMPLEXIO_CFG(i32 %13)
  %15 = call i32 @reg_read(i32 %10, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_CLOCK_POL_MASK, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.v4l2_fwnode_bus_mipi_csi2* %21, %struct.v4l2_fwnode_bus_mipi_csi2** %6, align 8
  %22 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @set_field(i32* %3, i64 %25, i32 %26)
  %28 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @set_field(i32* %3, i64 %32, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %66, %1
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 4
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %44, 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @set_field(i32* %3, i64 %53, i32 %54)
  %56 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @set_field(i32* %3, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %41
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CAL_CSI2_COMPLEXIO_CFG(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @reg_write(i32 %72, i32 %76, i32 %77)
  %79 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %80 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %81 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @CAL_CSI2_COMPLEXIO_CFG(i32) #1

declare dso_local i32 @set_field(i32*, i64, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
