; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32 }
%struct.vpe_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpe_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vpe_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpe_ctx* @file2ctx(%struct.file* %10)
  store %struct.vpe_ctx* %11, %struct.vpe_ctx** %9, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = call i32 @vpe_try_fmt(%struct.file* %12, i8* %13, %struct.v4l2_format* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = call i32 @__vpe_s_fmt(%struct.vpe_ctx* %21, %struct.v4l2_format* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %36 = call i32 @set_src_registers(%struct.vpe_ctx* %35)
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %39 = call i32 @set_dst_registers(%struct.vpe_ctx* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %42 = call i32 @set_srcdst_params(%struct.vpe_ctx* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %26, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.vpe_ctx* @file2ctx(%struct.file*) #1

declare dso_local i32 @vpe_try_fmt(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @__vpe_s_fmt(%struct.vpe_ctx*, %struct.v4l2_format*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @set_src_registers(%struct.vpe_ctx*) #1

declare dso_local i32 @set_dst_registers(%struct.vpe_ctx*) #1

declare dso_local i32 @set_srcdst_params(%struct.vpe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
