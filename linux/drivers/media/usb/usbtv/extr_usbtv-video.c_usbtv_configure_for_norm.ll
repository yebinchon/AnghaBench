; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_configure_for_norm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_configure_for_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtv_norm_params = type { i32, i32, i32 }
%struct.usbtv = type { i32, i32, i32, i32 }

@norm_params = common dso_local global %struct.usbtv_norm_params* null, align 8
@USBTV_CHUNK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtv*, i32)* @usbtv_configure_for_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_configure_for_norm(%struct.usbtv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbtv_norm_params*, align 8
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store %struct.usbtv_norm_params* null, %struct.usbtv_norm_params** %7, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.usbtv_norm_params*, %struct.usbtv_norm_params** @norm_params, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.usbtv_norm_params* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.usbtv_norm_params*, %struct.usbtv_norm_params** @norm_params, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.usbtv_norm_params, %struct.usbtv_norm_params* %14, i64 %16
  %18 = getelementptr inbounds %struct.usbtv_norm_params, %struct.usbtv_norm_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.usbtv_norm_params*, %struct.usbtv_norm_params** @norm_params, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.usbtv_norm_params, %struct.usbtv_norm_params* %24, i64 %26
  store %struct.usbtv_norm_params* %27, %struct.usbtv_norm_params** %7, align 8
  br label %32

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %8

32:                                               ; preds = %23, %8
  %33 = load %struct.usbtv_norm_params*, %struct.usbtv_norm_params** %7, align 8
  %34 = icmp ne %struct.usbtv_norm_params* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load %struct.usbtv_norm_params*, %struct.usbtv_norm_params** %7, align 8
  %37 = getelementptr inbounds %struct.usbtv_norm_params, %struct.usbtv_norm_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %40 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.usbtv_norm_params*, %struct.usbtv_norm_params** %7, align 8
  %42 = getelementptr inbounds %struct.usbtv_norm_params, %struct.usbtv_norm_params* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %45 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %47 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %50 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sdiv i32 %52, 4
  %54 = load i32, i32* @USBTV_CHUNK, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %57 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %60 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %64

61:                                               ; preds = %32
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %35
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @ARRAY_SIZE(%struct.usbtv_norm_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
