; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.msi2500_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@CMD_START_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @msi2500_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msi2500_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = call %struct.msi2500_dev* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.msi2500_dev* %9, %struct.msi2500_dev** %6, align 8
  %10 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %11 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %15 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %23 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %31 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @core, align 4
  %34 = load i32, i32* @s_power, align 4
  %35 = call i32 @v4l2_subdev_call(i32 %32, i32 %33, i32 %34, i32 1)
  %36 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %37 = call i32 @msi2500_set_usb_adc(%struct.msi2500_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %39 = call i32 @msi2500_isoc_init(%struct.msi2500_dev* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %44 = call i32 @msi2500_cleanup_queued_bufs(%struct.msi2500_dev* %43)
  br label %45

45:                                               ; preds = %42, %29
  %46 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %47 = load i32, i32* @CMD_START_STREAMING, align 4
  %48 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %46, i32 %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %50 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %26, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.msi2500_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @msi2500_set_usb_adc(%struct.msi2500_dev*) #1

declare dso_local i32 @msi2500_isoc_init(%struct.msi2500_dev*) #1

declare dso_local i32 @msi2500_cleanup_queued_bufs(%struct.msi2500_dev*) #1

declare dso_local i32 @msi2500_ctrl_msg(%struct.msi2500_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
