; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_free_common_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_free_common_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32, i64, i32, i32, i64, %struct.ngene_channel* }
%struct.ngene_channel = type { i32, i32, i32 }

@STREAM_VIDEOIN1 = common dso_local global i64 0, align 8
@MAX_STREAM = common dso_local global i64 0, align 8
@OVERFLOW_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @free_common_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_common_buffers(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ngene_channel*, align 8
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %5 = load i64, i64* @STREAM_VIDEOIN1, align 8
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MAX_STREAM, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.ngene*, %struct.ngene** %2, align 8
  %12 = getelementptr inbounds %struct.ngene, %struct.ngene* %11, i32 0, i32 5
  %13 = load %struct.ngene_channel*, %struct.ngene_channel** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %13, i64 %14
  store %struct.ngene_channel* %15, %struct.ngene_channel** %4, align 8
  %16 = load %struct.ngene*, %struct.ngene** %2, align 8
  %17 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %17, i32 0, i32 2
  %19 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %19, i32 0, i32 0
  %21 = call i32 @free_idlebuffer(%struct.ngene* %16, i32* %18, i32* %20)
  %22 = load %struct.ngene*, %struct.ngene** %2, align 8
  %23 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %23, i32 0, i32 1
  %25 = call i32 @free_ringbuffer(%struct.ngene* %22, i32* %24)
  %26 = load %struct.ngene*, %struct.ngene** %2, align 8
  %27 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %27, i32 0, i32 0
  %29 = call i32 @free_ringbuffer(%struct.ngene* %26, i32* %28)
  br label %30

30:                                               ; preds = %10
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %6

33:                                               ; preds = %6
  %34 = load %struct.ngene*, %struct.ngene** %2, align 8
  %35 = getelementptr inbounds %struct.ngene, %struct.ngene* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.ngene*, %struct.ngene** %2, align 8
  %40 = getelementptr inbounds %struct.ngene, %struct.ngene* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OVERFLOW_BUFFER_SIZE, align 4
  %43 = load %struct.ngene*, %struct.ngene** %2, align 8
  %44 = getelementptr inbounds %struct.ngene, %struct.ngene* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ngene*, %struct.ngene** %2, align 8
  %47 = getelementptr inbounds %struct.ngene, %struct.ngene* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_free_consistent(i32 %41, i32 %42, i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %33
  %51 = load %struct.ngene*, %struct.ngene** %2, align 8
  %52 = getelementptr inbounds %struct.ngene, %struct.ngene* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.ngene*, %struct.ngene** %2, align 8
  %57 = getelementptr inbounds %struct.ngene, %struct.ngene* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ngene*, %struct.ngene** %2, align 8
  %60 = getelementptr inbounds %struct.ngene, %struct.ngene* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ngene*, %struct.ngene** %2, align 8
  %63 = getelementptr inbounds %struct.ngene, %struct.ngene* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pci_free_consistent(i32 %58, i32 4096, i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @free_idlebuffer(%struct.ngene*, i32*, i32*) #1

declare dso_local i32 @free_ringbuffer(%struct.ngene*, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
