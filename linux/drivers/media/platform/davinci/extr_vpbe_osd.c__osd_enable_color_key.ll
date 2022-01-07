; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_enable_color_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_enable_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@VPBE_VERSION_3 = common dso_local global i32 0, align 4
@OSD_TRANSPBMPIDX_BMP0 = common dso_local global i32 0, align 4
@OSD_TRANSPBMPIDX_BMP0_SHIFT = common dso_local global i32 0, align 4
@OSD_TRANSPBMPIDX = common dso_local global i32 0, align 4
@OSD_TRANSPBMPIDX_BMP1 = common dso_local global i32 0, align 4
@OSD_TRANSPBMPIDX_BMP1_SHIFT = common dso_local global i32 0, align 4
@VPBE_VERSION_1 = common dso_local global i32 0, align 4
@OSD_TRANSPVAL_RGBTRANS = common dso_local global i32 0, align 4
@OSD_TRANSPVAL = common dso_local global i32 0, align 4
@OSD_TRANSPVALL_RGBL = common dso_local global i32 0, align 4
@OSD_TRANSPVALL = common dso_local global i32 0, align 4
@OSD_TRANSPVALU_Y = common dso_local global i32 0, align 4
@OSD_TRANSPVALU = common dso_local global i32 0, align 4
@OSD_TRANSPVALU_RGBU = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_TE0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_TE1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i32, i32)* @_osd_enable_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_enable_color_key(%struct.osd_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %97 [
    i32 135, label %10
    i32 134, label %10
    i32 133, label %10
    i32 132, label %10
    i32 131, label %36
    i32 129, label %64
    i32 128, label %64
    i32 130, label %77
  ]

10:                                               ; preds = %4, %4, %4, %4
  %11 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %12 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VPBE_VERSION_3, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %34 [
    i32 137, label %18
    i32 136, label %26
  ]

18:                                               ; preds = %16
  %19 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %20 = load i32, i32* @OSD_TRANSPBMPIDX_BMP0, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OSD_TRANSPBMPIDX_BMP0_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @OSD_TRANSPBMPIDX, align 4
  %25 = call i32 @osd_modify(%struct.osd_state* %19, i32 %20, i32 %23, i32 %24)
  br label %34

26:                                               ; preds = %16
  %27 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %28 = load i32, i32* @OSD_TRANSPBMPIDX_BMP1, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @OSD_TRANSPBMPIDX_BMP1_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @OSD_TRANSPBMPIDX, align 4
  %33 = call i32 @osd_modify(%struct.osd_state* %27, i32 %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %16, %26, %18
  br label %35

35:                                               ; preds = %34, %10
  br label %98

36:                                               ; preds = %4
  %37 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %38 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VPBE_VERSION_1, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @OSD_TRANSPVAL_RGBTRANS, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @OSD_TRANSPVAL, align 4
  %48 = call i32 @osd_write(%struct.osd_state* %43, i32 %46, i32 %47)
  br label %63

49:                                               ; preds = %36
  %50 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %51 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VPBE_VERSION_3, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @OSD_TRANSPVALL_RGBL, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @OSD_TRANSPVALL, align 4
  %61 = call i32 @osd_write(%struct.osd_state* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %49
  br label %63

63:                                               ; preds = %62, %42
  br label %98

64:                                               ; preds = %4, %4
  %65 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %66 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VPBE_VERSION_3, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %72 = load i32, i32* @OSD_TRANSPVALU_Y, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @OSD_TRANSPVALU, align 4
  %75 = call i32 @osd_modify(%struct.osd_state* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %98

77:                                               ; preds = %4
  %78 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %79 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VPBE_VERSION_3, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @OSD_TRANSPVALL_RGBL, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @OSD_TRANSPVALL, align 4
  %89 = call i32 @osd_write(%struct.osd_state* %84, i32 %87, i32 %88)
  %90 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %91 = load i32, i32* @OSD_TRANSPVALU_RGBU, align 4
  %92 = load i32, i32* %7, align 4
  %93 = lshr i32 %92, 16
  %94 = load i32, i32* @OSD_TRANSPVALU, align 4
  %95 = call i32 @osd_modify(%struct.osd_state* %90, i32 %91, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %83, %77
  br label %98

97:                                               ; preds = %4
  br label %98

98:                                               ; preds = %97, %96, %76, %63, %35
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %110 [
    i32 137, label %100
    i32 136, label %105
  ]

100:                                              ; preds = %98
  %101 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %102 = load i32, i32* @OSD_OSDWIN0MD_TE0, align 4
  %103 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %104 = call i32 @osd_set(%struct.osd_state* %101, i32 %102, i32 %103)
  br label %110

105:                                              ; preds = %98
  %106 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %107 = load i32, i32* @OSD_OSDWIN1MD_TE1, align 4
  %108 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %109 = call i32 @osd_set(%struct.osd_state* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %98, %105, %100
  ret void
}

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

declare dso_local i32 @osd_write(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @osd_set(%struct.osd_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
