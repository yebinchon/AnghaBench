; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_csi2_calc_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_csi2_calc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cio2_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cio2_csi2_timing = type { i8*, i8*, i8*, i8* }
%struct.v4l2_querymenu = type { i64, i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to find LINK_FREQ\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get menu item\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error invalid link_freq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_TERMEN_CLANE_A = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_TERMEN_CLANE_B = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_TERMEN_DEFAULT = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_SETTLE_CLANE_A = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_SETTLE_CLANE_B = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_SETTLE_DEFAULT = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_TERMEN_DLANE_A = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_TERMEN_DLANE_B = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_SETTLE_DLANE_A = common dso_local global i32 0, align 4
@CIO2_CSIRX_DLY_CNT_SETTLE_DLANE_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"freq ct value is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"freq cs value is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"freq dt value is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"freq ds value is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cio2_device*, %struct.cio2_queue*, %struct.cio2_csi2_timing*)* @cio2_csi2_calc_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_csi2_calc_timing(%struct.cio2_device* %0, %struct.cio2_queue* %1, %struct.cio2_csi2_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cio2_device*, align 8
  %6 = alloca %struct.cio2_queue*, align 8
  %7 = alloca %struct.cio2_csi2_timing*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.v4l2_querymenu, align 8
  %10 = alloca %struct.v4l2_ctrl*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cio2_device* %0, %struct.cio2_device** %5, align 8
  store %struct.cio2_queue* %1, %struct.cio2_queue** %6, align 8
  store %struct.cio2_csi2_timing* %2, %struct.cio2_csi2_timing** %7, align 8
  %13 = load %struct.cio2_device*, %struct.cio2_device** %5, align 8
  %14 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 2
  %20 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %22 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %119

28:                                               ; preds = %3
  %29 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %30 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %35 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %33, i32 %34)
  store %struct.v4l2_ctrl* %35, %struct.v4l2_ctrl** %10, align 8
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, align 8
  %37 = icmp ne %struct.v4l2_ctrl* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EPIPE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %119

43:                                               ; preds = %28
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, align 8
  %45 = call i32 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl* %44)
  %46 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %48 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @v4l2_querymenu(i32 %51, %struct.v4l2_querymenu* %9)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %119

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %119

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i32, i32* @CIO2_CSIRX_DLY_CNT_TERMEN_CLANE_A, align 4
  %72 = load i32, i32* @CIO2_CSIRX_DLY_CNT_TERMEN_CLANE_B, align 4
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* @CIO2_CSIRX_DLY_CNT_TERMEN_DEFAULT, align 4
  %75 = call i8* @cio2_rx_timing(i32 %71, i32 %72, i64 %73, i32 %74)
  %76 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %77 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @CIO2_CSIRX_DLY_CNT_SETTLE_CLANE_A, align 4
  %79 = load i32, i32* @CIO2_CSIRX_DLY_CNT_SETTLE_CLANE_B, align 4
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* @CIO2_CSIRX_DLY_CNT_SETTLE_DEFAULT, align 4
  %82 = call i8* @cio2_rx_timing(i32 %78, i32 %79, i64 %80, i32 %81)
  %83 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %84 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @CIO2_CSIRX_DLY_CNT_TERMEN_DLANE_A, align 4
  %86 = load i32, i32* @CIO2_CSIRX_DLY_CNT_TERMEN_DLANE_B, align 4
  %87 = load i64, i64* %11, align 8
  %88 = load i32, i32* @CIO2_CSIRX_DLY_CNT_TERMEN_DEFAULT, align 4
  %89 = call i8* @cio2_rx_timing(i32 %85, i32 %86, i64 %87, i32 %88)
  %90 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %91 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @CIO2_CSIRX_DLY_CNT_SETTLE_DLANE_A, align 4
  %93 = load i32, i32* @CIO2_CSIRX_DLY_CNT_SETTLE_DLANE_B, align 4
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* @CIO2_CSIRX_DLY_CNT_SETTLE_DEFAULT, align 4
  %96 = call i8* @cio2_rx_timing(i32 %92, i32 %93, i64 %94, i32 %95)
  %97 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %98 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.device*, %struct.device** %8, align 8
  %100 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %101 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = load %struct.device*, %struct.device** %8, align 8
  %105 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %106 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  %109 = load %struct.device*, %struct.device** %8, align 8
  %110 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %111 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = load %struct.cio2_csi2_timing*, %struct.cio2_csi2_timing** %7, align 8
  %116 = getelementptr inbounds %struct.cio2_csi2_timing, %struct.cio2_csi2_timing* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %68, %63, %55, %38, %25
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_querymenu(i32, %struct.v4l2_querymenu*) #1

declare dso_local i8* @cio2_rx_timing(i32, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
