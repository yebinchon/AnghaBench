; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_alarm_msix_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_alarm_msix_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_vpath = type { %struct.TYPE_5__*, %struct.vxgedev* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vxgedev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@VXGE_HW_VPATH_MSIX_ACTIVE = common dso_local global i32 0, align 4
@VXGE_ALARM_MSIX_ID = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: vxge_hw_vpath_alarm_process failed %x \00", align 1
@VXGE_DRIVER_NAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vxge_alarm_msix_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_alarm_msix_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxge_vpath*, align 8
  %8 = alloca %struct.vxgedev*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.vxge_vpath*
  store %struct.vxge_vpath* %11, %struct.vxge_vpath** %7, align 8
  %12 = load %struct.vxge_vpath*, %struct.vxge_vpath** %7, align 8
  %13 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %12, i32 0, i32 1
  %14 = load %struct.vxgedev*, %struct.vxgedev** %13, align 8
  store %struct.vxgedev* %14, %struct.vxgedev** %8, align 8
  %15 = load %struct.vxge_vpath*, %struct.vxge_vpath** %7, align 8
  %16 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @VXGE_ALARM_MSIX_ID, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %84, %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  %29 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %26
  %33 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  %34 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @vxge_hw_vpath_msix_mask(i32 %40, i32 %41)
  %43 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  %44 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @vxge_hw_vpath_msix_clear(i32 %50, i32 %51)
  %53 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  %54 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  %62 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @vxge_hw_vpath_alarm_process(i32 %60, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @VXGE_HW_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %32
  %69 = load %struct.vxgedev*, %struct.vxgedev** %8, align 8
  %70 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @vxge_hw_vpath_msix_unmask(i32 %76, i32 %77)
  br label %84

79:                                               ; preds = %32
  %80 = load i32, i32* @VXGE_ERR, align 4
  %81 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @vxge_debug_intr(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %68
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %26

87:                                               ; preds = %26
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local i32 @vxge_hw_vpath_msix_mask(i32, i32) #1

declare dso_local i32 @vxge_hw_vpath_msix_clear(i32, i32) #1

declare dso_local i32 @vxge_hw_vpath_alarm_process(i32, i32) #1

declare dso_local i32 @vxge_hw_vpath_msix_unmask(i32, i32) #1

declare dso_local i32 @vxge_debug_intr(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
