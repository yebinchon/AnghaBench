; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_req_to_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_req_to_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ref = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_ctrl_ref*)* @req_to_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_to_new(%struct.v4l2_ctrl_ref* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl_ref*, align 8
  store %struct.v4l2_ctrl_ref* %0, %struct.v4l2_ctrl_ref** %2, align 8
  %3 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %4 = icmp ne %struct.v4l2_ctrl_ref* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %41

6:                                                ; preds = %1
  %7 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptr_to_ptr(%struct.TYPE_4__* %14, i32 %19, i32 %24)
  br label %41

26:                                               ; preds = %6
  %27 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %2, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ptr_to_ptr(%struct.TYPE_4__* %29, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %5, %26, %11
  ret void
}

declare dso_local i32 @ptr_to_ptr(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
