; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@dump_sensor = common dso_local global i64 0, align 8
@init_ov9650 = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov9650_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* @dump_sensor, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = call i32 @ov9650_dump_registers(%struct.sd* %9)
  br label %11

11:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %62, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i64**, i64*** @init_ov9650, align 8
  %15 = call i32 @ARRAY_SIZE(i64** %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %65

23:                                               ; preds = %21
  %24 = load i64**, i64*** @init_ov9650, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64*, i64** %24, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64**, i64*** @init_ov9650, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SENSOR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %23
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = load i64**, i64*** @init_ov9650, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @m5602_write_sensor(%struct.sd* %41, i64 %48, i64* %5, i32 1)
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %23
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = load i64**, i64*** @init_ov9650, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @m5602_write_bridge(%struct.sd* %51, i64 %58, i64 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %50, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %12

65:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @ov9650_dump_registers(%struct.sd*) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
