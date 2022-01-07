; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl1x1sf_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl1x1sf_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@MXL_SOC_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MXL_SOC_MODE\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MXL_TUNER_MODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl1x1sf_set_device_mode(%struct.mxl111sf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MXL_SOC_MODE, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 @mxl_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %13 = load i32, i32* @MXL_SOC_MODE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %12, i32 3, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @mxl_fail(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %25 = load i32, i32* @MXL_SOC_MODE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 64
  %30 = call i32 @mxl111sf_write_reg_mask(%struct.mxl111sf_state* %24, i32 125, i32 64, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @mxl_fail(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %38 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %34, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mxl_debug(i8*, i8*) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg_mask(%struct.mxl111sf_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
