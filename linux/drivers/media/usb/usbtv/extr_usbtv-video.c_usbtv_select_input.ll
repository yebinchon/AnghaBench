; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_select_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_select_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.usbtv = type { i32 }

@usbtv_select_input.composite = internal constant [5 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 391, i32 96 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 417, i32 242 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 425, i32 96 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 304, i32 16 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 699, i32 96 }, %struct.TYPE_4__ zeroinitializer]], align 16
@usbtv_select_input.svideo = internal constant [5 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 391, i32 16 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 417, i32 255 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 425, i32 96 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 304, i32 48 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 699, i32 96 }, %struct.TYPE_4__ zeroinitializer]], align 16
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtv*, i32)* @usbtv_select_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_select_input(%struct.usbtv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %15 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** bitcast ([5 x [2 x %struct.TYPE_4__]]* @usbtv_select_input.composite to %struct.TYPE_4__**))
  %10 = call i32 @usbtv_set_regs(%struct.usbtv* %8, %struct.TYPE_4__** bitcast ([5 x [2 x %struct.TYPE_4__]]* @usbtv_select_input.composite to %struct.TYPE_4__**), i32 %9)
  store i32 %10, i32* %5, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** bitcast ([5 x [2 x %struct.TYPE_4__]]* @usbtv_select_input.svideo to %struct.TYPE_4__**))
  %14 = call i32 @usbtv_set_regs(%struct.usbtv* %12, %struct.TYPE_4__** bitcast ([5 x [2 x %struct.TYPE_4__]]* @usbtv_select_input.svideo to %struct.TYPE_4__**), i32 %13)
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %11, %7
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %24 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @usbtv_set_regs(%struct.usbtv*, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
