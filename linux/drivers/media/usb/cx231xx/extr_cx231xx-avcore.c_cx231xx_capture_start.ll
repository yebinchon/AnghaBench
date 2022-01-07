; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_capture_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.pcb_config = type { i64 }

@ENABLE_EP4 = common dso_local global i64 0, align 8
@ENABLE_EP3 = common dso_local global i64 0, align 8
@ENABLE_EP5 = common dso_local global i64 0, align 8
@ENABLE_EP6 = common dso_local global i64 0, align 8
@ENABLE_EP1 = common dso_local global i64 0, align 8
@ENABLE_EP2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_capture_start(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcb_config*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i64 -1, i64* %9, align 8
  %11 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %12 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.pcb_config*
  store %struct.pcb_config* %13, %struct.pcb_config** %10, align 8
  %14 = load %struct.pcb_config*, %struct.pcb_config** %10, align 8
  %15 = getelementptr inbounds %struct.pcb_config, %struct.pcb_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %32 [
    i32 133, label %20
    i32 134, label %22
    i32 128, label %24
    i32 132, label %26
    i32 130, label %28
    i32 131, label %28
    i32 129, label %30
  ]

20:                                               ; preds = %18
  %21 = load i64, i64* @ENABLE_EP4, align 8
  store i64 %21, i64* %9, align 8
  br label %32

22:                                               ; preds = %18
  %23 = load i64, i64* @ENABLE_EP3, align 8
  store i64 %23, i64* %9, align 8
  br label %32

24:                                               ; preds = %18
  %25 = load i64, i64* @ENABLE_EP5, align 8
  store i64 %25, i64* %9, align 8
  br label %32

26:                                               ; preds = %18
  %27 = load i64, i64* @ENABLE_EP6, align 8
  store i64 %27, i64* %9, align 8
  br label %32

28:                                               ; preds = %18, %18
  %29 = load i64, i64* @ENABLE_EP1, align 8
  store i64 %29, i64* %9, align 8
  br label %32

30:                                               ; preds = %18
  %31 = load i64, i64* @ENABLE_EP2, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %18, %30, %28, %26, %24, %22, %20
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @cx231xx_initialize_stream_xfer(%struct.cx231xx* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %36
  %45 = load i64, i64* %9, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @cx231xx_start_stream(%struct.cx231xx* %48, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %44
  br label %60

52:                                               ; preds = %33
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @cx231xx_stop_stream(%struct.cx231xx* %56, i64 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %42
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @cx231xx_initialize_stream_xfer(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_start_stream(%struct.cx231xx*, i64) #1

declare dso_local i32 @cx231xx_stop_stream(%struct.cx231xx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
