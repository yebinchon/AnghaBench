; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_ir_mce_kbd_process_keyboard_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_ir_mce_kbd_process_keyboard_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"keyboard: keydata2 = 0x%02x, keydata1 = 0x%02x, shiftmask = 0x%02x\0A\00", align 1
@kbd_keycodes = common dso_local global i8* null, align 8
@MCIR2_MASK_KEYS_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*, i32)* @ir_mce_kbd_process_keyboard_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_mce_kbd_process_keyboard_data(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 255
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 255
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %50, %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i8*, i8** @kbd_keycodes, align 8
  %30 = load i32, i32* @MCIR2_MASK_KEYS_START, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %8, align 1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %43

42:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8, i8* %8, align 1
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @input_report_key(i32 %46, i8 zeroext %47, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** @kbd_keycodes, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @input_report_key(i32 %59, i8 zeroext %64, i32 1)
  br label %66

66:                                               ; preds = %56, %53
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** @kbd_keycodes, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @input_report_key(i32 %72, i8 zeroext %77, i32 1)
  br label %79

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %100, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @MCIR2_MASK_KEYS_START, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** @kbd_keycodes, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @input_report_key(i32 %93, i8 zeroext %98, i32 0)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %86

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %82, %79
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
