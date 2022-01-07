; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-gpio.c_subdev_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-gpio.c_subdev_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"GPIO status: DIR=0x%04x OUT=0x%04x IN=0x%04x\0A\00", align 1
@IVTV_REG_GPIO_DIR = common dso_local global i32 0, align 4
@IVTV_REG_GPIO_OUT = common dso_local global i32 0, align 4
@IVTV_REG_GPIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @subdev_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ivtv*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.ivtv* @sd_to_ivtv(%struct.v4l2_subdev* %4)
  store %struct.ivtv* %5, %struct.ivtv** %3, align 8
  %6 = load i32, i32* @IVTV_REG_GPIO_DIR, align 4
  %7 = call i32 @read_reg(i32 %6)
  %8 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %9 = call i32 @read_reg(i32 %8)
  %10 = load i32, i32* @IVTV_REG_GPIO_IN, align 4
  %11 = call i32 @read_reg(i32 %10)
  %12 = call i32 @IVTV_INFO(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9, i32 %11)
  %13 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 0
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @v4l2_ctrl_handler_log_status(i32* %14, i32 %17)
  ret i32 0
}

declare dso_local %struct.ivtv* @sd_to_ivtv(%struct.v4l2_subdev*) #1

declare dso_local i32 @IVTV_INFO(i8*, i32, i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
