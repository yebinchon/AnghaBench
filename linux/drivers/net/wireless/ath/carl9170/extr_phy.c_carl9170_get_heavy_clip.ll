; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_get_heavy_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_get_heavy_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ar9170_calctl_edges = type { i32, i32 }

@CARL9170_BW_40_BELOW = common dso_local global i32 0, align 4
@CARL9170_BW_40_ABOVE = common dso_local global i32 0, align 4
@AR5416_NUM_BAND_EDGES = common dso_local global i32 0, align 4
@AR9170_CALCTL_EDGE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32, i32, %struct.ar9170_calctl_edges*)* @carl9170_get_heavy_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_get_heavy_clip(%struct.ar9170* %0, i32 %1, i32 %2, %struct.ar9170_calctl_edges* %3) #0 {
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar9170_calctl_edges*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ar9170_calctl_edges* %3, %struct.ar9170_calctl_edges** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 3000
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 2300
  store i32 %16, i32* %9, align 4
  br label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 4800
  %20 = sdiv i32 %19, 5
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CARL9170_BW_40_BELOW, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @CARL9170_BW_40_ABOVE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, 240
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %70, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @AR5416_NUM_BAND_EDGES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %38, i64 %40
  %42 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %73

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %48, i64 %50
  %52 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %47, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load %struct.ar9170_calctl_edges*, %struct.ar9170_calctl_edges** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %56, i64 %58
  %60 = getelementptr inbounds %struct.ar9170_calctl_edges, %struct.ar9170_calctl_edges* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR9170_CALCTL_EDGE_FLAGS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, 15
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %55
  br label %73

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %33

73:                                               ; preds = %68, %45, %33
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
