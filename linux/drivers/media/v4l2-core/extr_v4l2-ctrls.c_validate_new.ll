; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_validate_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_validate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_ctrl*, i32, i32)* }
%union.v4l2_ctrl_ptr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i32)* @validate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_new(%struct.v4l2_ctrl* %0, i32 %1) #0 {
  %3 = alloca %union.v4l2_ctrl_ptr, align 4
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.v4l2_ctrl*, i32, i32)*, i32 (%struct.v4l2_ctrl*, i32, i32)** %23, align 8
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %24(%struct.v4l2_ctrl* %25, i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %8

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
