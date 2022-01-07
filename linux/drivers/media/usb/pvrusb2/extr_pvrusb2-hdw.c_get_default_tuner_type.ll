; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_get_default_tuner_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_get_default_tuner_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32 }

@PVR_NUM = common dso_local global i32 0, align 4
@tuner = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @get_default_tuner_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_default_tuner_type(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PVR_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32*, i32** @tuner, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %11, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
