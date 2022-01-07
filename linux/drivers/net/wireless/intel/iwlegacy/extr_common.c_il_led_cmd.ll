; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_led_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_led_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.il_priv*, %struct.il_led_cmd*)* }
%struct.il_led_cmd = type { i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IL_DEF_LED_INTRVL = common dso_local global i32 0, align 4
@IL_LED_LINK = common dso_local global i32 0, align 4
@S_READY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IL_LED_SOLID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Led blink time compensation=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i64, i64)* @il_led_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_led_cmd(%struct.il_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.il_led_cmd, align 8
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds %struct.il_led_cmd, %struct.il_led_cmd* %8, i32 0, i32 0
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds %struct.il_led_cmd, %struct.il_led_cmd* %8, i32 0, i32 1
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %struct.il_led_cmd, %struct.il_led_cmd* %8, i32 0, i32 2
  %13 = load i32, i32* @IL_DEF_LED_INTRVL, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.il_led_cmd, %struct.il_led_cmd* %8, i32 0, i32 3
  %15 = load i32, i32* @IL_LED_LINK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @S_READY, align 4
  %17 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 4
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %85

37:                                               ; preds = %30, %24
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @IL_LED_SOLID, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @D_LED(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @il_blink_compensation(%struct.il_priv* %49, i64 %50, i32 %55)
  %57 = getelementptr inbounds %struct.il_led_cmd, %struct.il_led_cmd* %8, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @il_blink_compensation(%struct.il_priv* %58, i64 %59, i32 %64)
  %66 = getelementptr inbounds %struct.il_led_cmd, %struct.il_led_cmd* %8, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.il_priv*, %struct.il_led_cmd*)*, i32 (%struct.il_priv*, %struct.il_led_cmd*)** %70, align 8
  %72 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %73 = call i32 %71(%struct.il_priv* %72, %struct.il_led_cmd* %8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %42
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %42
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %36, %21
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @D_LED(i8*, i32) #1

declare dso_local i8* @il_blink_compensation(%struct.il_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
