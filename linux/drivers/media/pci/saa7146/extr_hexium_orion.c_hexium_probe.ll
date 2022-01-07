; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_orion.c_hexium_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_orion.c_hexium_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64, %struct.hexium*, %struct.TYPE_6__* }
%struct.hexium = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%union.i2c_smbus_data = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@DD1_STREAM_B = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hexium orion\00", align 1
@SAA7146_I2C_BUS_BIT_RATE_480 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot register i2c-device. skipping.\0A\00", align 1
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"device is a Hexium Orion w/ 1 SVHS + 3 BNC inputs\0A\00", align 1
@HEXIUM_ORION_1SVHS_3BNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"device is a Hexium Orion w/ 4 BNC inputs\0A\00", align 1
@HEXIUM_ORION_4BNC = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"device is a Hexium HV-PCI6/Orion (old)\0A\00", align 1
@HEXIUM_HV_PCI6_ORION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @hexium_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexium_probe(%struct.saa7146_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.hexium*, align 8
  %5 = alloca %union.i2c_smbus_data, align 4
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.hexium* null, %struct.hexium** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @DEB_EE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %145

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.hexium* @kzalloc(i32 8, i32 %16)
  store %struct.hexium* %17, %struct.hexium** %4, align 8
  %18 = load %struct.hexium*, %struct.hexium** %4, align 8
  %19 = icmp ne %struct.hexium* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %145

23:                                               ; preds = %15
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %25 = load i32, i32* @MC1, align 4
  %26 = load i32, i32* @MASK_08, align 4
  %27 = load i32, i32* @MASK_24, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MASK_10, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MASK_26, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @saa7146_write(%struct.saa7146_dev* %24, i32 %25, i32 %32)
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %35 = load i32, i32* @DD1_INIT, align 4
  %36 = call i32 @saa7146_write(%struct.saa7146_dev* %34, i32 %35, i32 16777472)
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %38 = load i32, i32* @DD1_STREAM_B, align 4
  %39 = call i32 @saa7146_write(%struct.saa7146_dev* %37, i32 %38, i32 0)
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %41 = load i32, i32* @MC2, align 4
  %42 = load i32, i32* @MASK_09, align 4
  %43 = load i32, i32* @MASK_25, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MASK_10, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MASK_26, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @saa7146_write(%struct.saa7146_dev* %40, i32 %41, i32 %48)
  %50 = load %struct.hexium*, %struct.hexium** %4, align 8
  %51 = getelementptr inbounds %struct.hexium, %struct.hexium* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strscpy(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %55 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %56 = load %struct.hexium*, %struct.hexium** %4, align 8
  %57 = getelementptr inbounds %struct.hexium, %struct.hexium* %56, i32 0, i32 0
  %58 = load i32, i32* @SAA7146_I2C_BUS_BIT_RATE_480, align 4
  %59 = call i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev* %55, %struct.TYPE_7__* %57, i32 %58)
  %60 = load %struct.hexium*, %struct.hexium** %4, align 8
  %61 = getelementptr inbounds %struct.hexium, %struct.hexium* %60, i32 0, i32 0
  %62 = call i64 @i2c_add_adapter(%struct.TYPE_7__* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %23
  %65 = call i32 @DEB_S(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.hexium*, %struct.hexium** %4, align 8
  %67 = call i32 @kfree(%struct.hexium* %66)
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %145

70:                                               ; preds = %23
  %71 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %72 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %73 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %71, i32 0, i32 %72)
  %74 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %75 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %76 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %74, i32 2, i32 %75)
  %77 = call i32 @mdelay(i32 10)
  %78 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %79 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 6088, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %70
  %85 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %86 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 257, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.hexium*, %struct.hexium** %4, align 8
  %94 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %95 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %94, i32 0, i32 1
  store %struct.hexium* %93, %struct.hexium** %95, align 8
  %96 = load i32, i32* @HEXIUM_ORION_1SVHS_3BNC, align 4
  %97 = load %struct.hexium*, %struct.hexium** %4, align 8
  %98 = getelementptr inbounds %struct.hexium, %struct.hexium* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %2, align 4
  br label %145

99:                                               ; preds = %84, %70
  %100 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %101 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 6088, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %108 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 8449, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %115 = load %struct.hexium*, %struct.hexium** %4, align 8
  %116 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %117 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %116, i32 0, i32 1
  store %struct.hexium* %115, %struct.hexium** %117, align 8
  %118 = load i32, i32* @HEXIUM_ORION_4BNC, align 4
  %119 = load %struct.hexium*, %struct.hexium** %4, align 8
  %120 = getelementptr inbounds %struct.hexium, %struct.hexium* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %2, align 4
  br label %145

121:                                              ; preds = %106, %99
  %122 = load %struct.hexium*, %struct.hexium** %4, align 8
  %123 = getelementptr inbounds %struct.hexium, %struct.hexium* %122, i32 0, i32 0
  %124 = load i32, i32* @I2C_SMBUS_READ, align 4
  %125 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %126 = call i32 @i2c_smbus_xfer(%struct.TYPE_7__* %123, i32 78, i32 0, i32 %124, i32 0, i32 %125, %union.i2c_smbus_data* %5)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.hexium*, %struct.hexium** %4, align 8
  %132 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %133 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %132, i32 0, i32 1
  store %struct.hexium* %131, %struct.hexium** %133, align 8
  %134 = load i32, i32* @HEXIUM_HV_PCI6_ORION, align 4
  %135 = load %struct.hexium*, %struct.hexium** %4, align 8
  %136 = getelementptr inbounds %struct.hexium, %struct.hexium* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  store i32 0, i32* %2, align 4
  br label %145

137:                                              ; preds = %121
  %138 = load %struct.hexium*, %struct.hexium** %4, align 8
  %139 = getelementptr inbounds %struct.hexium, %struct.hexium* %138, i32 0, i32 0
  %140 = call i32 @i2c_del_adapter(%struct.TYPE_7__* %139)
  %141 = load %struct.hexium*, %struct.hexium** %4, align 8
  %142 = call i32 @kfree(%struct.hexium* %141)
  %143 = load i32, i32* @EFAULT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %137, %129, %113, %91, %64, %20, %12
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local %struct.hexium* @kzalloc(i32, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @kfree(%struct.hexium*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @i2c_smbus_xfer(%struct.TYPE_7__*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
