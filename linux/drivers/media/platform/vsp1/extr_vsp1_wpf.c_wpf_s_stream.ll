; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vsp1_rwpf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.vsp1_device* }
%struct.vsp1_device = type { i32 }

@VI6_WPF_OFFSET = common dso_local global i32 0, align 4
@VI6_WPF_SRCRPF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @wpf_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpf_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_rwpf*, align 8
  %7 = alloca %struct.vsp1_device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev* %8)
  store %struct.vsp1_rwpf* %9, %struct.vsp1_rwpf** %6, align 8
  %10 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %11 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.vsp1_device*, %struct.vsp1_device** %12, align 8
  store %struct.vsp1_device* %13, %struct.vsp1_device** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %19 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %20 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @VI6_WPF_IRQ_ENB(i32 %22)
  %24 = call i32 @vsp1_write(%struct.vsp1_device* %18, i64 %23, i32 0)
  %25 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  %26 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %27 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VI6_WPF_OFFSET, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @VI6_WPF_SRCRPF, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @vsp1_write(%struct.vsp1_device* %25, i64 %34, i32 0)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %17, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev*) #1

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i64, i32) #1

declare dso_local i64 @VI6_WPF_IRQ_ENB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
