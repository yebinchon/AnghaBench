; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_s2250_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_s2250_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s2250 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@vid_regs_fp = common dso_local global i32 0, align 4
@vid_regs_fp_pal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s2250_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2250_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s2250*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.s2250* @to_state(%struct.v4l2_subdev* %8)
  store %struct.s2250* %9, %struct.s2250** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.s2250*, %struct.s2250** %5, align 8
  %13 = getelementptr inbounds %struct.s2250, %struct.s2250* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 64, i32 32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @V4L2_STD_625_50, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = load i32, i32* @vid_regs_fp, align 4
  %25 = call i32 @write_regs_fp(%struct.i2c_client* %23, i32 %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = load i32, i32* @vid_regs_fp_pal, align 4
  %28 = call i32 @write_regs_fp(%struct.i2c_client* %26, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @write_reg_fp(%struct.i2c_client* %29, i32 32, i32 %30)
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = load i32, i32* @vid_regs_fp, align 4
  %35 = call i32 @write_regs_fp(%struct.i2c_client* %33, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 1
  %39 = call i32 @write_reg_fp(%struct.i2c_client* %36, i32 32, i32 %38)
  br label %40

40:                                               ; preds = %32, %22
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.s2250*, %struct.s2250** %5, align 8
  %43 = getelementptr inbounds %struct.s2250, %struct.s2250* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.s2250* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @write_regs_fp(%struct.i2c_client*, i32) #1

declare dso_local i32 @write_reg_fp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
