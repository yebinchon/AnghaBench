; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FPDCTL = common dso_local global i32 0, align 4
@SSC_POWER_MASK = common dso_local global i32 0, align 4
@SSC_POWER_ON = common dso_local global i32 0, align 4
@CLK_DIV = common dso_local global i32 0, align 4
@CLK_CHANGE = common dso_local global i32 0, align 4
@HW_VERSION = common dso_local global i32 0, align 4
@HW_VER_MASK = common dso_local global i32 0, align 4
@CARD_SHARE_MODE = common dso_local global i32 0, align 4
@CARD_SHARE_LQFP_SEL = common dso_local global i32 0, align 4
@LQFP48 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Package: LQFP48\0A\00", align 1
@QFN24 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Package: QFN24\0A\00", align 1
@CFG_MODE_1 = common dso_local global i32 0, align 4
@RTS5179 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Device is rts5179\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*)* @rtsx_usb_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_init_chip(%struct.rtsx_ucr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_ucr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %3, align 8
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %7 = call i32 @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr* %6)
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %9 = load i32, i32* @FPDCTL, align 4
  %10 = load i32, i32* @SSC_POWER_MASK, align 4
  %11 = load i32, i32* @SSC_POWER_ON, align 4
  %12 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = call i32 @usleep_range(i32 100, i32 1000)
  %19 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %20 = load i32, i32* @CLK_DIV, align 4
  %21 = load i32, i32* @CLK_CHANGE, align 4
  %22 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %93

27:                                               ; preds = %17
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %29 = load i32, i32* @HW_VERSION, align 4
  %30 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %28, i32 %29, i32* %5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @HW_VER_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %40 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %42 = load i32, i32* @CARD_SHARE_MODE, align 4
  %43 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %41, i32 %42, i32* %5)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %93

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CARD_SHARE_LQFP_SEL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* @LQFP48, align 4
  %55 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %56 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %58 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %71

62:                                               ; preds = %48
  %63 = load i32, i32* @QFN24, align 4
  %64 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %65 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %67 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_dbg(i32* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %73 = load i32, i32* @CFG_MODE_1, align 4
  %74 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %72, i32 %73, i32* %5)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RTS5179, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %81 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %83 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %90

87:                                               ; preds = %71
  %88 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %89 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %92 = call i32 @rtsx_usb_reset_chip(%struct.rtsx_ucr* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %46, %33, %25, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_write_register(%struct.rtsx_ucr*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtsx_usb_read_register(%struct.rtsx_ucr*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rtsx_usb_reset_chip(%struct.rtsx_ucr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
