; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.vub300_mmc_host = type { i32, i32, i32, i32, i32 }

@MMC_POWER_OFF = common dso_local global i64 0, align 8
@SET_SD_POWER = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MMC_POWER_UP = common dso_local global i64 0, align 8
@MMC_POWER_ON = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@vub300_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @vub300_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.vub300_mmc_host*, align 8
  %6 = alloca i32*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.vub300_mmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.vub300_mmc_host* %8, %struct.vub300_mmc_host** %5, align 8
  %9 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %110

14:                                               ; preds = %2
  %15 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %15, i32 0, i32 1
  %17 = call i32 @kref_get(i32* %16)
  %18 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %19 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_POWER_OFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %14
  %27 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %28 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %33 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %35 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %38 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_sndctrlpipe(i32 %39, i32 0)
  %41 = load i32, i32* @SET_SD_POWER, align 4
  %42 = load i32, i32* @USB_DIR_OUT, align 4
  %43 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HZ, align 4
  %48 = call i32 @usb_control_msg(i32 %36, i32 %40, i32 %41, i32 %46, i32 0, i32 0, i32* null, i32 0, i32 %47)
  %49 = call i32 @msleep(i32 600)
  br label %102

50:                                               ; preds = %26, %14
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMC_POWER_UP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %58 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %56
  %62 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %63 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %66 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_sndctrlpipe(i32 %67, i32 0)
  %69 = load i32, i32* @SET_SD_POWER, align 4
  %70 = load i32, i32* @USB_DIR_OUT, align 4
  %71 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @HZ, align 4
  %76 = call i32 @usb_control_msg(i32 %64, i32 %68, i32 %69, i32 %74, i32 1, i32 0, i32* null, i32 0, i32 %75)
  %77 = call i32 @msleep(i32 600)
  %78 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %79 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %101

80:                                               ; preds = %56, %50
  %81 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MMC_POWER_ON, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32* @kmalloc(i32 8, i32 %87)
  store i32* %88, i32** %6, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %95 = call i32 @__set_clock_speed(%struct.vub300_mmc_host* %92, i32* %93, %struct.mmc_ios* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @kfree(i32* %96)
  br label %98

98:                                               ; preds = %91, %86
  br label %100

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %98
  br label %101

101:                                              ; preds = %100, %61
  br label %102

102:                                              ; preds = %101, %31
  %103 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %104 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %107 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %106, i32 0, i32 1
  %108 = load i32, i32* @vub300_delete, align 4
  %109 = call i32 @kref_put(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %13
  ret void
}

declare dso_local %struct.vub300_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @__set_clock_speed(%struct.vub300_mmc_host*, i32*, %struct.mmc_ios*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
