; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_cur_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_cur_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i32, i32, i64, i64, i64, i64 }

@PVR2_CVAL_INPUT_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*, i64)* @pvr2_hdw_set_cur_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_set_cur_freq(%struct.pvr2_hdw* %0, i64 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i64, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PVR2_CVAL_INPUT_RADIO, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %33 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %20
  br label %60

35:                                               ; preds = %2
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %37 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %45
  br label %60

60:                                               ; preds = %59, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
