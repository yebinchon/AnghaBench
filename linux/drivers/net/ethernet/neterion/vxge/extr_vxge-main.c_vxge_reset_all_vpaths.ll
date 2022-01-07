; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_reset_all_vpaths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_reset_all_vpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.vxge_vpath* }
%struct.vxge_vpath = type { i64 }

@VXGE_HW_OK = common dso_local global i64 0, align 8
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"vxge_hw_vpath_recover_from_reset failed for vpath: %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"vxge_hw_vpath_reset failed for vpath:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*)* @vxge_reset_all_vpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_reset_all_vpaths(%struct.vxgedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_vpath*, align 8
  %6 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  %7 = load i64, i64* @VXGE_HW_OK, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %57, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %12 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %9
  %16 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %17 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %16, i32 0, i32 1
  %18 = load %struct.vxge_vpath*, %struct.vxge_vpath** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %18, i64 %20
  store %struct.vxge_vpath* %21, %struct.vxge_vpath** %5, align 8
  %22 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %23 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %15
  %27 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %28 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @vxge_hw_vpath_reset(i64 %29)
  %31 = load i64, i64* @VXGE_HW_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %35 = call i64 @is_vxge_card_up(%struct.vxgedev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %39 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @vxge_hw_vpath_recover_from_reset(i64 %40)
  %42 = load i64, i64* @VXGE_HW_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @VXGE_ERR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @vxge_debug_init(i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %37, %33
  br label %55

50:                                               ; preds = %26
  %51 = load i32, i32* @VXGE_ERR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @vxge_debug_init(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %15
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %9

60:                                               ; preds = %9
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %50, %44
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @vxge_hw_vpath_reset(i64) #1

declare dso_local i64 @is_vxge_card_up(%struct.vxgedev*) #1

declare dso_local i64 @vxge_hw_vpath_recover_from_reset(i64) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
