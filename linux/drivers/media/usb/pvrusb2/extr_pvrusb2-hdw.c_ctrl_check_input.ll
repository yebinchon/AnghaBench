; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_check_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_check_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PVR2_CVAL_INPUT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32)* @ctrl_check_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_check_input(%struct.pvr2_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PVR2_CVAL_INPUT_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %16, %21
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
