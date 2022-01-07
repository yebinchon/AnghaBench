; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_hw_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_hw_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@CR_CHIP_ID_HI = common dso_local global i32 0, align 4
@CR_EFIR2 = common dso_local global i32 0, align 4
@CR_EFDR2 = common dso_local global i32 0, align 4
@CR_CHIP_ID_LO = common dso_local global i32 0, align 4
@NVT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No device found on either EFM port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"unknown chip, id: 0x%02x 0x%02x, it may not work...\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"found %s or compatible: chip id: 0x%02x 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvt_dev*)* @nvt_hw_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_hw_detect(%struct.nvt_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvt_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.nvt_dev* %0, %struct.nvt_dev** %3, align 8
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %8 = call %struct.device* @nvt_get_dev(%struct.nvt_dev* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %10 = call i32 @nvt_efm_enable(%struct.nvt_dev* %9)
  %11 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %12 = load i32, i32* @CR_CHIP_ID_HI, align 4
  %13 = call i8* @nvt_cr_read(%struct.nvt_dev* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %18 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %23 = call i32 @nvt_efm_disable(%struct.nvt_dev* %22)
  %24 = load i32, i32* @CR_EFIR2, align 4
  %25 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %26 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CR_EFDR2, align 4
  %28 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %31 = call i32 @nvt_efm_enable(%struct.nvt_dev* %30)
  %32 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %33 = load i32, i32* @CR_CHIP_ID_HI, align 4
  %34 = call i8* @nvt_cr_read(%struct.nvt_dev* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %37 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %21, %1
  %39 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %40 = load i32, i32* @CR_CHIP_ID_LO, align 4
  %41 = call i8* @nvt_cr_read(%struct.nvt_dev* %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %44 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %46 = call i32 @nvt_efm_disable(%struct.nvt_dev* %45)
  %47 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @NVT_INVALID, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %38
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %89

63:                                               ; preds = %38
  %64 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i8* @nvt_find_chip(%struct.nvt_dev* %64, i32 %65)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %72 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %75 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_warn(%struct.device* %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76)
  br label %88

78:                                               ; preds = %63
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %82 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %85 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %78, %69
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.device* @nvt_get_dev(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i8* @nvt_cr_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @nvt_find_chip(%struct.nvt_dev*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
