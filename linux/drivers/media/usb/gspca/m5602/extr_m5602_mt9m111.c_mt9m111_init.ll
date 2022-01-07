; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@init_mt9m111 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@dump_sensor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9m111_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %72, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i64**, i64*** @init_mt9m111, align 8
  %9 = call i32 @ARRAY_SIZE(i64** %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i1 [ false, %6 ], [ %14, %11 ]
  br i1 %16, label %17, label %75

17:                                               ; preds = %15
  %18 = load i64**, i64*** @init_mt9m111, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %18, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRIDGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %17
  %28 = load %struct.sd*, %struct.sd** %2, align 8
  %29 = load i64**, i64*** @init_mt9m111, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64**, i64*** @init_mt9m111, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64*, i64** %36, i64 %38
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @m5602_write_bridge(%struct.sd* %28, i64 %35, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %17
  %45 = load i64**, i64*** @init_mt9m111, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 %51, i64* %52, align 16
  %53 = load i64**, i64*** @init_mt9m111, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64*, i64** %53, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %59, i64* %60, align 8
  %61 = load %struct.sd*, %struct.sd** %2, align 8
  %62 = load i64**, i64*** @init_mt9m111, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64*, i64** %62, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %70 = call i32 @m5602_write_sensor(%struct.sd* %61, i64 %68, i64* %69, i32 2)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %44, %27
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %6

75:                                               ; preds = %15
  %76 = load i64, i64* @dump_sensor, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.sd*, %struct.sd** %2, align 8
  %80 = call i32 @mt9m111_dump_registers(%struct.sd* %79)
  br label %81

81:                                               ; preds = %78, %75
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @mt9m111_dump_registers(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
