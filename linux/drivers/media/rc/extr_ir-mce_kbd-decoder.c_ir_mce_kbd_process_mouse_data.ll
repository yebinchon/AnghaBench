; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_ir_mce_kbd_process_mouse_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_ir_mce_kbd_process_mouse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"mouse: x = %d, y = %d, btns = %s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*, i32)* @ir_mce_kbd_process_mouse_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_mce_kbd_process_mouse_data(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 7
  %13 = and i32 %12, 127
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 14
  %16 = and i32 %15, 127
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 64
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %26, 127
  %28 = add nsw i32 %27, 1
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %38, 127
  %40 = add nsw i32 %39, 1
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %57 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i8* %52, i8* %56)
  %58 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @REL_X, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @input_report_rel(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @REL_Y, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @input_report_rel(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BTN_LEFT, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @input_report_key(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BTN_RIGHT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @input_report_key(i32 %78, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
