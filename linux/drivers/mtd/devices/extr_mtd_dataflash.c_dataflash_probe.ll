; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.flash_info = type { i32, i32, i32, i32, i32 }

@SUP_POW2PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"status error %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"AT45DB011B\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"AT45DB021B\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"AT45DB041x\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"AT45DB081B\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"AT45DB161x\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"AT45DB321x\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"AT45DB642x\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unsupported device (%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"add_dataflash --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dataflash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataflash_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flash_info*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.flash_info* @jedec_probe(%struct.spi_device* %6)
  store %struct.flash_info* %7, %struct.flash_info** %5, align 8
  %8 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %9 = call i64 @IS_ERR(%struct.flash_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.flash_info* %12)
  store i32 %13, i32* %2, align 4
  br label %106

14:                                               ; preds = %1
  %15 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %16 = icmp ne %struct.flash_info* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %20 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %23 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %26 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %29 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %32 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SUP_POW2PS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 100, i32 99
  %39 = trunc i32 %38 to i8
  %40 = call i32 @add_dataflash_otp(%struct.spi_device* %18, i32 %21, i32 %24, i32 %27, i32 %30, i8 signext %39)
  store i32 %40, i32* %2, align 4
  br label %106

41:                                               ; preds = %14
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = call i32 @dataflash_status(%struct.spi_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %64

49:                                               ; preds = %46, %41
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 255
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %49
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %106

64:                                               ; preds = %46
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 60
  switch i32 %66, label %88 [
    i32 12, label %67
    i32 20, label %70
    i32 28, label %73
    i32 36, label %76
    i32 44, label %79
    i32 52, label %82
    i32 56, label %85
    i32 60, label %85
  ]

67:                                               ; preds = %64
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = call i32 @add_dataflash(%struct.spi_device* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 512, i32 264, i32 9)
  store i32 %69, i32* %4, align 4
  br label %96

70:                                               ; preds = %64
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = call i32 @add_dataflash(%struct.spi_device* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1024, i32 264, i32 9)
  store i32 %72, i32* %4, align 4
  br label %96

73:                                               ; preds = %64
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = call i32 @add_dataflash(%struct.spi_device* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 2048, i32 264, i32 9)
  store i32 %75, i32* %4, align 4
  br label %96

76:                                               ; preds = %64
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = call i32 @add_dataflash(%struct.spi_device* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 4096, i32 264, i32 9)
  store i32 %78, i32* %4, align 4
  br label %96

79:                                               ; preds = %64
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = call i32 @add_dataflash(%struct.spi_device* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 4096, i32 528, i32 10)
  store i32 %81, i32* %4, align 4
  br label %96

82:                                               ; preds = %64
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = call i32 @add_dataflash(%struct.spi_device* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 8192, i32 528, i32 10)
  store i32 %84, i32* %4, align 4
  br label %96

85:                                               ; preds = %64, %64
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = call i32 @add_dataflash(%struct.spi_device* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 8192, i32 1056, i32 11)
  store i32 %87, i32* %4, align 4
  br label %96

88:                                               ; preds = %64
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 0
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 60
  %93 = call i32 @dev_info(i32* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %88, %85, %82, %79, %76, %73, %70, %67
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @dev_dbg(i32* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %62, %17, %11
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.flash_info* @jedec_probe(%struct.spi_device*) #1

declare dso_local i64 @IS_ERR(%struct.flash_info*) #1

declare dso_local i32 @PTR_ERR(%struct.flash_info*) #1

declare dso_local i32 @add_dataflash_otp(%struct.spi_device*, i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @dataflash_status(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @add_dataflash(%struct.spi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
