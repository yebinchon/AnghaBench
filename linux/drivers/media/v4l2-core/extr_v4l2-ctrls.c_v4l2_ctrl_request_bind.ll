; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_request_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_request_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, i32 }

@req_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_request*, %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler*)* @v4l2_ctrl_request_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_ctrl_request_bind(%struct.media_request* %0, %struct.v4l2_ctrl_handler* %1, %struct.v4l2_ctrl_handler* %2) #0 {
  %4 = alloca %struct.media_request*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.media_request* %0, %struct.media_request** %4, align 8
  store %struct.v4l2_ctrl_handler* %1, %struct.v4l2_ctrl_handler** %5, align 8
  store %struct.v4l2_ctrl_handler* %2, %struct.v4l2_ctrl_handler** %6, align 8
  %8 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %10 = call i32 @v4l2_ctrl_request_clone(%struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = load %struct.media_request*, %struct.media_request** %4, align 8
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %16, i32 0, i32 1
  %18 = call i32 @media_request_object_bind(%struct.media_request* %14, i32* @req_ops, %struct.v4l2_ctrl_handler* %15, i32 0, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %22, i32 0, i32 0
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %21, %13
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @v4l2_ctrl_request_clone(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @media_request_object_bind(%struct.media_request*, i32*, %struct.v4l2_ctrl_handler*, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
