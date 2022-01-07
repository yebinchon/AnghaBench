; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___set_clock_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___set_clock_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_ios = type { i32 }

@SET_CLOCK_SPEED = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SET_CLOCK_SPEED %dkHz failed with retval=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SET_CLOCK_SPEED %dkHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*, i32*, %struct.mmc_ios*)* @__set_clock_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_clock_speed(%struct.vub300_mmc_host* %0, i32* %1, %struct.mmc_ios* %2) #0 {
  %4 = alloca %struct.vub300_mmc_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mmc_ios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.mmc_ios* %2, %struct.mmc_ios** %6, align 8
  store i32 8, i32* %7, align 4
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 48000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 48000, i32* %9, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %19 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 24000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 24000, i32* %9, align 4
  br label %45

23:                                               ; preds = %17
  %24 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 20000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 20000, i32* %9, align 4
  br label %44

29:                                               ; preds = %23
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 15000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 15000, i32* %9, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 200000
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 200, i32* %9, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %60, %46
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 8
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %48

63:                                               ; preds = %48
  %64 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %65 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %68 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %69, i32 0)
  %71 = load i32, i32* @SET_CLOCK_SPEED, align 4
  %72 = load i32, i32* @USB_DIR_OUT, align 4
  %73 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @HZ, align 4
  %80 = call i32 @usb_control_msg(%struct.TYPE_3__* %66, i32 %70, i32 %71, i32 %76, i32 0, i32 0, i32* %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 8
  br i1 %82, label %83, label %91

83:                                               ; preds = %63
  %84 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  br label %98

91:                                               ; preds = %63
  %92 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %93 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_dbg(i32* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %91, %83
  ret void
}

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
