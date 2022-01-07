; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k5baf = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to register subdev %s\0A\00", align 1
@PAD_CIS = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k5baf_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %5)
  store %struct.s5k5baf* %6, %struct.s5k5baf** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %11 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %10, i32 0, i32 1
  %12 = call i32 @v4l2_device_register_subdev(i32 %9, %struct.TYPE_4__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %17 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %18 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l2_err(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %24 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @PAD_CIS, align 4
  %27 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %28 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* @PAD_CIS, align 4
  %31 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %32 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @media_create_pad_link(i32* %25, i32 %26, i32* %29, i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %22, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
