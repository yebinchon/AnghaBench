; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_setup_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_setup_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.usbtv = type { i32, i32, i32 }

@usbtv_setup_capture.setup = internal constant [54 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 136, i32 1 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 592, i32 255 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 601, i32 2 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 697, i32 64 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 704, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 705, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 706, i32 2 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 707, i32 128 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 708, i32 18 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 709, i32 144 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 710, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 760, i32 45 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 761, i32 10 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 762, i32 50 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 63632, i32 12 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 63636, i32 134 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 300, i32 192 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 301, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 290, i32 18 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 291, i32 224 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 292, i32 40 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 293, i32 130 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 295, i32 128 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 128, i32 20 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 134, i32 3 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 272, i32 153 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 273, i32 144 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 276, i32 104 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 277, i32 112 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 284, i32 48 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 285, i32 192 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 286, i32 224 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 153, i32 6 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 268, i32 186 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 385, i32 255 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 396, i32 179 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 562, i32 128 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 564, i32 160 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 460, i32 255 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 461, i32 202 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 403, i32 83 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 409, i32 138 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 444, i32 3 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 464, i32 156 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 465, i32 113 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 466, i32 198 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 467, i32 132 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 468, i32 188 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 469, i32 160 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 470, i32 160 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 471, i32 156 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 472, i32 31 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 473, i32 6 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 477, i32 0 }, %struct.TYPE_4__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtv*)* @usbtv_setup_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_setup_capture(%struct.usbtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  %5 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** bitcast ([54 x [2 x %struct.TYPE_4__]]* @usbtv_setup_capture.setup to %struct.TYPE_4__**))
  %7 = call i32 @usbtv_set_regs(%struct.usbtv* %5, %struct.TYPE_4__** bitcast ([54 x [2 x %struct.TYPE_4__]]* @usbtv_setup_capture.setup to %struct.TYPE_4__**), i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %14 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %15 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usbtv_select_norm(%struct.usbtv* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %12
  %23 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %24 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %25 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usbtv_select_input(%struct.usbtv* %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %34 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %33, i32 0, i32 0
  %35 = call i32 @v4l2_ctrl_handler_setup(i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38, %30, %20, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @usbtv_set_regs(%struct.usbtv*, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__**) #1

declare dso_local i32 @usbtv_select_norm(%struct.usbtv*, i32) #1

declare dso_local i32 @usbtv_select_input(%struct.usbtv*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
