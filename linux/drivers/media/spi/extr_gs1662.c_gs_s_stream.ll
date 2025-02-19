; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.gs = type { i32, i32, i32 }

@REG_FORCE_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @gs_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.gs* @to_gs(%struct.v4l2_subdev* %8)
  store %struct.gs* %9, %struct.gs** %6, align 8
  %10 = load %struct.gs*, %struct.gs** %6, align 8
  %11 = getelementptr inbounds %struct.gs, %struct.gs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.gs*, %struct.gs** %6, align 8
  %19 = getelementptr inbounds %struct.gs, %struct.gs* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.gs*, %struct.gs** %6, align 8
  %24 = getelementptr inbounds %struct.gs, %struct.gs* %23, i32 0, i32 2
  %25 = call i32 @get_register_timings(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.gs*, %struct.gs** %6, align 8
  %27 = getelementptr inbounds %struct.gs, %struct.gs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @REG_FORCE_FMT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @gs_write_register(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %16
  %33 = load %struct.gs*, %struct.gs** %6, align 8
  %34 = getelementptr inbounds %struct.gs, %struct.gs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @REG_FORCE_FMT, align 4
  %37 = call i32 @gs_write_register(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %22, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.gs* @to_gs(%struct.v4l2_subdev*) #1

declare dso_local i32 @get_register_timings(i32*) #1

declare dso_local i32 @gs_write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
