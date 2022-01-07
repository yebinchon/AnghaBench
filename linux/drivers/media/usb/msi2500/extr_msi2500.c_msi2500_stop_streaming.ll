; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.msi2500_dev = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_STOP_STREAMING = common dso_local global i32 0, align 4
@CMD_WREG = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @msi2500_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi2500_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.msi2500_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.msi2500_dev* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.msi2500_dev* %5, %struct.msi2500_dev** %3, align 8
  %6 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %7 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %11 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %14 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %19 = call i32 @msi2500_isoc_cleanup(%struct.msi2500_dev* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %22 = call i32 @msi2500_cleanup_queued_bufs(%struct.msi2500_dev* %21)
  %23 = call i32 @msleep(i32 20)
  %24 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %25 = load i32, i32* @CMD_STOP_STREAMING, align 4
  %26 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %24, i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %30 = load i32, i32* @CMD_WREG, align 4
  %31 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %29, i32 %30, i32 16777219)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %34 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @core, align 4
  %37 = load i32, i32* @s_power, align 4
  %38 = call i32 @v4l2_subdev_call(i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %40 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local %struct.msi2500_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msi2500_isoc_cleanup(%struct.msi2500_dev*) #1

declare dso_local i32 @msi2500_cleanup_queued_bufs(%struct.msi2500_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @msi2500_ctrl_msg(%struct.msi2500_dev*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
