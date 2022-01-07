; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_custom_sym_to_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_custom_sym_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_custom_sym_to_value(%struct.pvr2_ctrl* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_ctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %13 = icmp ne %struct.pvr2_ctrl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %41

17:                                               ; preds = %5
  %18 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %19 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)**
  %23 = load i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)*, i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %30 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)**
  %34 = load i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)*, i32 (%struct.pvr2_ctrl*, i8*, i32, i32*, i32*)** %33, align 8
  %35 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 %34(%struct.pvr2_ctrl* %35, i8* %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %28, %25, %14
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
