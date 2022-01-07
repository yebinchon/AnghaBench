; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_dvb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"DVB transfer mode is ISO.\0A\00", align 1
@INDEX_TS1 = common dso_local global i32 0, align 4
@CX231XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@CX231XX_DVB_MAX_PACKETS = common dso_local global i32 0, align 4
@CX231XX_DVB_NUM_BUFS = common dso_local global i32 0, align 4
@dvb_isoc_copy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DVB transfer mode is BULK.\0A\00", align 1
@dvb_bulk_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx_dvb*)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.cx231xx_dvb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx_dvb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx_dvb* %0, %struct.cx231xx_dvb** %3, align 8
  %6 = load %struct.cx231xx_dvb*, %struct.cx231xx_dvb** %3, align 8
  %7 = getelementptr inbounds %struct.cx231xx_dvb, %struct.cx231xx_dvb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  store %struct.cx231xx* %9, %struct.cx231xx** %5, align 8
  %10 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %20 = load i32, i32* @INDEX_TS1, align 4
  %21 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %19, i32 %20, i32 5)
  %22 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %23 = load i32, i32* @CX231XX_DIGITAL_MODE, align 4
  %24 = call i32 @cx231xx_set_mode(%struct.cx231xx* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %68

29:                                               ; preds = %14
  %30 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %33 = load i32, i32* @CX231XX_DVB_MAX_PACKETS, align 4
  %34 = load i32, i32* @CX231XX_DVB_NUM_BUFS, align 4
  %35 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @dvb_isoc_copy, align 4
  %40 = call i32 @cx231xx_init_isoc(%struct.cx231xx* %32, i32 %33, i32 %34, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %1
  %42 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %47 = load i32, i32* @INDEX_TS1, align 4
  %48 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %46, i32 %47, i32 0)
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = load i32, i32* @CX231XX_DIGITAL_MODE, align 4
  %51 = call i32 @cx231xx_set_mode(%struct.cx231xx* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %41
  %57 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %60 = load i32, i32* @CX231XX_DVB_MAX_PACKETS, align 4
  %61 = load i32, i32* @CX231XX_DVB_NUM_BUFS, align 4
  %62 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %63 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @dvb_bulk_copy, align 4
  %67 = call i32 @cx231xx_init_bulk(%struct.cx231xx* %59, i32 %60, i32 %61, i32 %65, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %56, %54, %29, %27
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_init_isoc(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @cx231xx_init_bulk(%struct.cx231xx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
