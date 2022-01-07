; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32* }

@rotation_thread_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rotation thread\00", align 1
@start_s5k83a = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k83a_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @rotation_thread_function, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = call i32* @kthread_create(i32 %7, %struct.sd* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wake_up_process(i32* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %91, %25
  %31 = load i32, i32* %4, align 4
  %32 = load i64**, i64*** @start_s5k83a, align 8
  %33 = call i32 @ARRAY_SIZE(i64** %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %41, label %94

41:                                               ; preds = %39
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %43 = load i64**, i64*** @start_s5k83a, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64*, i64** %43, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %42, align 8
  %50 = getelementptr inbounds i64, i64* %42, i64 1
  %51 = load i64**, i64*** @start_s5k83a, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %50, align 8
  %58 = load i64**, i64*** @start_s5k83a, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SENSOR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %41
  %68 = load %struct.sd*, %struct.sd** %3, align 8
  %69 = load i64**, i64*** @start_s5k83a, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %77 = call i32 @m5602_write_sensor(%struct.sd* %68, i64 %75, i64* %76, i32 2)
  store i32 %77, i32* %5, align 4
  br label %90

78:                                               ; preds = %41
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = load i64**, i64*** @start_s5k83a, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64*, i64** %80, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %88 = load i64, i64* %87, align 16
  %89 = call i32 @m5602_write_bridge(%struct.sd* %79, i64 %86, i64 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %78, %67
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %30

94:                                               ; preds = %39
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %102

99:                                               ; preds = %94
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = call i32 @s5k83a_set_led_indication(%struct.sd* %100, i32 1)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %97, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32* @kthread_create(i32, %struct.sd*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @wake_up_process(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @s5k83a_set_led_indication(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
