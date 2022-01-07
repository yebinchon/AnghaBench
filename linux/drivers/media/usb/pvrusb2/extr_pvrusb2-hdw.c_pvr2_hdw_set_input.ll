; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32 }

@PVR2_CVAL_INPUT_RADIO = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_TV = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_DTV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32)* @pvr2_hdw_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_hdw_set_input(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PVR2_CVAL_INPUT_RADIO, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  br label %45

27:                                               ; preds = %16
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PVR2_CVAL_INPUT_TV, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PVR2_CVAL_INPUT_DTV, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %27
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %22
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
