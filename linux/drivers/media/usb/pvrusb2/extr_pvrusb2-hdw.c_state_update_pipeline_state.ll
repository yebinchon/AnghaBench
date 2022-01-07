; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_state_update_pipeline_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_state_update_pipeline_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_update_pipeline_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_update_pipeline_state(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %6 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %14, %9, %1
  %26 = phi i1 [ true, %14 ], [ true, %9 ], [ true, %1 ], [ %24, %19 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = icmp ne i32 %32, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %25
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %46 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %49, %44
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
