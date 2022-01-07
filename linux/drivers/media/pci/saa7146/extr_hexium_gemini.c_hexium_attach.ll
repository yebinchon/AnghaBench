; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_gemini.c_hexium_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_gemini.c_hexium_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.saa7146_dev = type { %struct.hexium* }
%struct.hexium = type { %struct.TYPE_9__, i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.saa7146_pci_extension_data = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"hexium gemini\00", align 1
@SAA7146_I2C_BUS_BIT_RATE_480 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot register i2c-device. skipping.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@DD1_STREAM_B = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@hexium_pal = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@vv_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@vidioc_enum_input = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"cannot register capture v4l2 device. skipping.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"found 'hexium gemini' frame grabber-%d\0A\00", align 1
@hexium_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)* @hexium_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexium_attach(%struct.saa7146_dev* %0, %struct.saa7146_pci_extension_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.hexium*, align 8
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_pci_extension_data* %1, %struct.saa7146_pci_extension_data** %5, align 8
  %8 = call i32 @DEB_EE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hexium* @kzalloc(i32 24, i32 %9)
  store %struct.hexium* %10, %struct.hexium** %6, align 8
  %11 = load %struct.hexium*, %struct.hexium** %6, align 8
  %12 = icmp ne %struct.hexium* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %111

16:                                               ; preds = %2
  %17 = load %struct.hexium*, %struct.hexium** %6, align 8
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  store %struct.hexium* %17, %struct.hexium** %19, align 8
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %21 = load i32, i32* @MC1, align 4
  %22 = load i32, i32* @MASK_08, align 4
  %23 = load i32, i32* @MASK_24, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MASK_10, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MASK_26, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @saa7146_write(%struct.saa7146_dev* %20, i32 %21, i32 %28)
  %30 = load %struct.hexium*, %struct.hexium** %6, align 8
  %31 = getelementptr inbounds %struct.hexium, %struct.hexium* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strscpy(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %36 = load %struct.hexium*, %struct.hexium** %6, align 8
  %37 = getelementptr inbounds %struct.hexium, %struct.hexium* %36, i32 0, i32 0
  %38 = load i32, i32* @SAA7146_I2C_BUS_BIT_RATE_480, align 4
  %39 = call i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev* %35, %struct.TYPE_9__* %37, i32 %38)
  %40 = load %struct.hexium*, %struct.hexium** %6, align 8
  %41 = getelementptr inbounds %struct.hexium, %struct.hexium* %40, i32 0, i32 0
  %42 = call i64 @i2c_add_adapter(%struct.TYPE_9__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %16
  %45 = call i32 @DEB_S(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.hexium*, %struct.hexium** %6, align 8
  %47 = call i32 @kfree(%struct.hexium* %46)
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %111

50:                                               ; preds = %16
  %51 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %52 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %53 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %51, i32 2, i32 %52)
  %54 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %55 = load i32, i32* @DD1_INIT, align 4
  %56 = call i32 @saa7146_write(%struct.saa7146_dev* %54, i32 %55, i32 117442304)
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %58 = load i32, i32* @DD1_STREAM_B, align 4
  %59 = call i32 @saa7146_write(%struct.saa7146_dev* %57, i32 %58, i32 0)
  %60 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %61 = load i32, i32* @MC2, align 4
  %62 = load i32, i32* @MASK_09, align 4
  %63 = load i32, i32* @MASK_25, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MASK_10, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MASK_26, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @saa7146_write(%struct.saa7146_dev* %60, i32 %61, i32 %68)
  %70 = load %struct.hexium*, %struct.hexium** %6, align 8
  %71 = getelementptr inbounds %struct.hexium, %struct.hexium* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %73 = call i32 @hexium_init_done(%struct.saa7146_dev* %72)
  %74 = load %struct.hexium*, %struct.hexium** %6, align 8
  %75 = load i32, i32* @hexium_pal, align 4
  %76 = call i32 @hexium_set_standard(%struct.hexium* %74, i32 %75)
  %77 = load i32, i32* @V4L2_STD_PAL, align 4
  %78 = load %struct.hexium*, %struct.hexium** %6, align 8
  %79 = getelementptr inbounds %struct.hexium, %struct.hexium* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hexium*, %struct.hexium** %6, align 8
  %81 = call i32 @hexium_set_input(%struct.hexium* %80, i32 0)
  %82 = load %struct.hexium*, %struct.hexium** %6, align 8
  %83 = getelementptr inbounds %struct.hexium, %struct.hexium* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %85 = call i32 @saa7146_vv_init(%struct.saa7146_dev* %84, %struct.TYPE_8__* @vv_data)
  %86 = load i32, i32* @vidioc_enum_input, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vv_data, i32 0, i32 0, i32 2), align 4
  %87 = load i32, i32* @vidioc_g_input, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vv_data, i32 0, i32 0, i32 1), align 4
  %88 = load i32, i32* @vidioc_s_input, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vv_data, i32 0, i32 0, i32 0), align 4
  %89 = load %struct.hexium*, %struct.hexium** %6, align 8
  %90 = getelementptr inbounds %struct.hexium, %struct.hexium* %89, i32 0, i32 1
  %91 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %92 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %93 = call i32 @saa7146_register_device(i32* %90, %struct.saa7146_dev* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %50
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %99 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %98)
  %100 = load %struct.hexium*, %struct.hexium** %6, align 8
  %101 = getelementptr inbounds %struct.hexium, %struct.hexium* %100, i32 0, i32 0
  %102 = call i32 @i2c_del_adapter(%struct.TYPE_9__* %101)
  %103 = load %struct.hexium*, %struct.hexium** %6, align 8
  %104 = call i32 @kfree(%struct.hexium* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %111

106:                                              ; preds = %50
  %107 = load i32, i32* @hexium_num, align 4
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @hexium_num, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @hexium_num, align 4
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %96, %44, %13
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local %struct.hexium* @kzalloc(i32, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @kfree(%struct.hexium*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @hexium_init_done(%struct.saa7146_dev*) #1

declare dso_local i32 @hexium_set_standard(%struct.hexium*, i32) #1

declare dso_local i32 @hexium_set_input(%struct.hexium*, i32) #1

declare dso_local i32 @saa7146_vv_init(%struct.saa7146_dev*, %struct.TYPE_8__*) #1

declare dso_local i32 @saa7146_register_device(i32*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
