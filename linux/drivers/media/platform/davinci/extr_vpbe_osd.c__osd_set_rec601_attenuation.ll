; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_rec601_attenuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_rec601_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@OSD_OSDWIN0MD_ATN0E = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@VPBE_VERSION_1 = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i32 0, align 4
@VPBE_VERSION_2 = common dso_local global i32 0, align 4
@OSD_EXTMODE_ATNOSD0EN = common dso_local global i32 0, align 4
@OSD_EXTMODE = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_ATN1E = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@OSD_EXTMODE_ATNOSD1EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i32)* @_osd_set_rec601_attenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_set_rec601_attenuation(%struct.osd_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %118 [
    i32 129, label %8
    i32 128, label %63
  ]

8:                                                ; preds = %3
  %9 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %10 = load i32, i32* @OSD_OSDWIN0MD_ATN0E, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @OSD_OSDWIN0MD_ATN0E, align 4
  br label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %19 = call i32 @osd_modify(%struct.osd_state* %9, i32 %10, i32 %17, i32 %18)
  %20 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %21 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VPBE_VERSION_1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %27 = load i32, i32* @OSD_OSDWIN0MD_ATN0E, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @OSD_OSDWIN0MD_ATN0E, align 4
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %36 = call i32 @osd_modify(%struct.osd_state* %26, i32 %27, i32 %34, i32 %35)
  br label %62

37:                                               ; preds = %16
  %38 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %39 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VPBE_VERSION_3, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %45 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VPBE_VERSION_2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43, %37
  %50 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %51 = load i32, i32* @OSD_EXTMODE_ATNOSD0EN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @OSD_EXTMODE_ATNOSD0EN, align 4
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* @OSD_EXTMODE, align 4
  %60 = call i32 @osd_modify(%struct.osd_state* %50, i32 %51, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %43
  br label %62

62:                                               ; preds = %61, %33
  br label %118

63:                                               ; preds = %3
  %64 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %65 = load i32, i32* @OSD_OSDWIN1MD_ATN1E, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @OSD_OSDWIN1MD_ATN1E, align 4
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %74 = call i32 @osd_modify(%struct.osd_state* %64, i32 %65, i32 %72, i32 %73)
  %75 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %76 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VPBE_VERSION_1, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %82 = load i32, i32* @OSD_OSDWIN1MD_ATN1E, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @OSD_OSDWIN1MD_ATN1E, align 4
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %91 = call i32 @osd_modify(%struct.osd_state* %81, i32 %82, i32 %89, i32 %90)
  br label %117

92:                                               ; preds = %71
  %93 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %94 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VPBE_VERSION_3, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %100 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VPBE_VERSION_2, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %98, %92
  %105 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %106 = load i32, i32* @OSD_EXTMODE_ATNOSD1EN, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @OSD_EXTMODE_ATNOSD1EN, align 4
  br label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = load i32, i32* @OSD_EXTMODE, align 4
  %115 = call i32 @osd_modify(%struct.osd_state* %105, i32 %106, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %98
  br label %117

117:                                              ; preds = %116, %88
  br label %118

118:                                              ; preds = %3, %117, %62
  ret void
}

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
