; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_mxb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_mxb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.mxb*, i32, %struct.v4l2_ctrl_handler }
%struct.mxb = type { %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@mxb_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"not enough kernel memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mxb%d\00", align 1
@mxb_num = common dso_local global i32 0, align 4
@SAA7146_I2C_BUS_BIT_RATE_480 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot register i2c-device. skipping.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"saa7111\00", align 1
@I2C_SAA7111A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"tea6420\00", align 1
@I2C_TEA6420_1 = common dso_local global i32 0, align 4
@I2C_TEA6420_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"tea6415c\00", align 1
@I2C_TEA6415C = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"tda9840\00", align 1
@I2C_TDA9840 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@I2C_TUNER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"did not find all i2c devices. aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @mxb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxb_probe(%struct.saa7146_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.mxb*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %6, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %7, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.mxb* null, %struct.mxb** %5, align 8
  %8 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %10 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %8, i32* @mxb_ctrl_ops, i32 %9, i32 0, i32 1, i32 1, i32 1)
  %11 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %143

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mxb* @kzalloc(i32 56, i32 %20)
  store %struct.mxb* %21, %struct.mxb** %5, align 8
  %22 = load %struct.mxb*, %struct.mxb** %5, align 8
  %23 = icmp eq %struct.mxb* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 @DEB_D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %143

28:                                               ; preds = %19
  %29 = load %struct.mxb*, %struct.mxb** %5, align 8
  %30 = getelementptr inbounds %struct.mxb, %struct.mxb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @mxb_num, align 4
  %34 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %36 = load %struct.mxb*, %struct.mxb** %5, align 8
  %37 = getelementptr inbounds %struct.mxb, %struct.mxb* %36, i32 0, i32 0
  %38 = load i32, i32* @SAA7146_I2C_BUS_BIT_RATE_480, align 4
  %39 = call i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev* %35, %struct.TYPE_5__* %37, i32 %38)
  %40 = load %struct.mxb*, %struct.mxb** %5, align 8
  %41 = getelementptr inbounds %struct.mxb, %struct.mxb* %40, i32 0, i32 0
  %42 = call i64 @i2c_add_adapter(%struct.TYPE_5__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = call i32 @DEB_S(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.mxb*, %struct.mxb** %5, align 8
  %47 = call i32 @kfree(%struct.mxb* %46)
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %143

50:                                               ; preds = %28
  %51 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %52 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %51, i32 0, i32 1
  %53 = load %struct.mxb*, %struct.mxb** %5, align 8
  %54 = getelementptr inbounds %struct.mxb, %struct.mxb* %53, i32 0, i32 0
  %55 = load i32, i32* @I2C_SAA7111A, align 4
  %56 = call i8* @v4l2_i2c_new_subdev(i32* %52, %struct.TYPE_5__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32* null)
  %57 = load %struct.mxb*, %struct.mxb** %5, align 8
  %58 = getelementptr inbounds %struct.mxb, %struct.mxb* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %60 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %59, i32 0, i32 1
  %61 = load %struct.mxb*, %struct.mxb** %5, align 8
  %62 = getelementptr inbounds %struct.mxb, %struct.mxb* %61, i32 0, i32 0
  %63 = load i32, i32* @I2C_TEA6420_1, align 4
  %64 = call i8* @v4l2_i2c_new_subdev(i32* %60, %struct.TYPE_5__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32* null)
  %65 = load %struct.mxb*, %struct.mxb** %5, align 8
  %66 = getelementptr inbounds %struct.mxb, %struct.mxb* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %68 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %67, i32 0, i32 1
  %69 = load %struct.mxb*, %struct.mxb** %5, align 8
  %70 = getelementptr inbounds %struct.mxb, %struct.mxb* %69, i32 0, i32 0
  %71 = load i32, i32* @I2C_TEA6420_2, align 4
  %72 = call i8* @v4l2_i2c_new_subdev(i32* %68, %struct.TYPE_5__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32* null)
  %73 = load %struct.mxb*, %struct.mxb** %5, align 8
  %74 = getelementptr inbounds %struct.mxb, %struct.mxb* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %76 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %75, i32 0, i32 1
  %77 = load %struct.mxb*, %struct.mxb** %5, align 8
  %78 = getelementptr inbounds %struct.mxb, %struct.mxb* %77, i32 0, i32 0
  %79 = load i32, i32* @I2C_TEA6415C, align 4
  %80 = call i8* @v4l2_i2c_new_subdev(i32* %76, %struct.TYPE_5__* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32* null)
  %81 = load %struct.mxb*, %struct.mxb** %5, align 8
  %82 = getelementptr inbounds %struct.mxb, %struct.mxb* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %84 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %83, i32 0, i32 1
  %85 = load %struct.mxb*, %struct.mxb** %5, align 8
  %86 = getelementptr inbounds %struct.mxb, %struct.mxb* %85, i32 0, i32 0
  %87 = load i32, i32* @I2C_TDA9840, align 4
  %88 = call i8* @v4l2_i2c_new_subdev(i32* %84, %struct.TYPE_5__* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32* null)
  %89 = load %struct.mxb*, %struct.mxb** %5, align 8
  %90 = getelementptr inbounds %struct.mxb, %struct.mxb* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %92 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %91, i32 0, i32 1
  %93 = load %struct.mxb*, %struct.mxb** %5, align 8
  %94 = getelementptr inbounds %struct.mxb, %struct.mxb* %93, i32 0, i32 0
  %95 = load i32, i32* @I2C_TUNER, align 4
  %96 = call i8* @v4l2_i2c_new_subdev(i32* %92, %struct.TYPE_5__* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %95, i32* null)
  %97 = load %struct.mxb*, %struct.mxb** %5, align 8
  %98 = getelementptr inbounds %struct.mxb, %struct.mxb* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.mxb*, %struct.mxb** %5, align 8
  %100 = getelementptr inbounds %struct.mxb, %struct.mxb* %99, i32 0, i32 6
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %128

103:                                              ; preds = %50
  %104 = load %struct.mxb*, %struct.mxb** %5, align 8
  %105 = getelementptr inbounds %struct.mxb, %struct.mxb* %104, i32 0, i32 5
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.mxb*, %struct.mxb** %5, align 8
  %110 = getelementptr inbounds %struct.mxb, %struct.mxb* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.mxb*, %struct.mxb** %5, align 8
  %115 = getelementptr inbounds %struct.mxb, %struct.mxb* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.mxb*, %struct.mxb** %5, align 8
  %120 = getelementptr inbounds %struct.mxb, %struct.mxb* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.mxb*, %struct.mxb** %5, align 8
  %125 = getelementptr inbounds %struct.mxb, %struct.mxb* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %123, %118, %113, %108, %103, %50
  %129 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %130 = load %struct.mxb*, %struct.mxb** %5, align 8
  %131 = getelementptr inbounds %struct.mxb, %struct.mxb* %130, i32 0, i32 0
  %132 = call i32 @i2c_del_adapter(%struct.TYPE_5__* %131)
  %133 = load %struct.mxb*, %struct.mxb** %5, align 8
  %134 = call i32 @kfree(%struct.mxb* %133)
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %143

137:                                              ; preds = %123
  %138 = load %struct.mxb*, %struct.mxb** %5, align 8
  %139 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %140 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %139, i32 0, i32 0
  store %struct.mxb* %138, %struct.mxb** %140, align 8
  %141 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %142 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %137, %128, %44, %24, %15
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mxb* @kzalloc(i32, i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @kfree(%struct.mxb*) #1

declare dso_local i8* @v4l2_i2c_new_subdev(i32*, %struct.TYPE_5__*, i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
