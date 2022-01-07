; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_free_vrfb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_free_vrfb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { i64*, i64*, i32 }

@VRFB_NUM_BUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vout_free_vrfb_buffers(%struct.omap_vout_device* %0) #0 {
  %2 = alloca %struct.omap_vout_device*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %42, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VRFB_NUM_BUFS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %10 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %8
  %18 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %19 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %26 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @omap_vout_free_buffer(i64 %24, i32 %27)
  %29 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %30 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %36 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %17, %8
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %4

45:                                               ; preds = %4
  ret void
}

declare dso_local i32 @omap_vout_free_buffer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
