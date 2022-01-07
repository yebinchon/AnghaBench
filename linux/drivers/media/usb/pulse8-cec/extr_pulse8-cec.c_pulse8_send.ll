; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }

@MSGSTART = common dso_local global i64 0, align 8
@MSGESC = common dso_local global i64 0, align 8
@MSGOFFSET = common dso_local global i64 0, align 8
@MSGEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i64*, i64)* @pulse8_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_send(%struct.serio* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.serio*, %struct.serio** %5, align 8
  %10 = load i64, i64* @MSGSTART, align 8
  %11 = call i32 @serio_write(%struct.serio* %9, i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %55

25:                                               ; preds = %23
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MSGESC, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.serio*, %struct.serio** %5, align 8
  %32 = load i64, i64* @MSGESC, align 8
  %33 = call i32 @serio_write(%struct.serio* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load %struct.serio*, %struct.serio** %5, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MSGOFFSET, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i32 @serio_write(%struct.serio* %37, i64 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %30
  br label %49

44:                                               ; preds = %25
  %45 = load %struct.serio*, %struct.serio** %5, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @serio_write(%struct.serio* %45, i64 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49
  %51 = load i64*, i64** %6, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %7, align 8
  br label %17

55:                                               ; preds = %23
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load %struct.serio*, %struct.serio** %5, align 8
  %60 = load i64, i64* @MSGEND, align 8
  %61 = call i32 @serio_write(%struct.serio* %59, i64 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @serio_write(%struct.serio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
