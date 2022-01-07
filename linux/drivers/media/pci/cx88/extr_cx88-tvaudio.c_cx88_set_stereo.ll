; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-tvaudio.c_cx88_set_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-tvaudio.c_cx88_set_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i64, i32, i32, i64 }

@UNSET = common dso_local global i64 0, align 8
@EN_BTSC_FORCE_MONO = common dso_local global i32 0, align 4
@EN_BTSC_AUTO_STEREO = common dso_local global i32 0, align 4
@EN_BTSC_FORCE_SAP = common dso_local global i32 0, align 4
@EN_BTSC_FORCE_STEREO = common dso_local global i32 0, align 4
@EN_NICAM_FORCE_MONO1 = common dso_local global i32 0, align 4
@EN_NICAM_FORCE_MONO2 = common dso_local global i32 0, align 4
@EN_NICAM_FORCE_STEREO = common dso_local global i32 0, align 4
@EN_A2_FORCE_MONO1 = common dso_local global i64 0, align 8
@EN_A2_FORCE_MONO2 = common dso_local global i64 0, align 8
@EN_A2_FORCE_STEREO = common dso_local global i64 0, align 8
@EN_FMRADIO_FORCE_MONO = common dso_local global i64 0, align 8
@EN_FMRADIO_AUTO_STEREO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"cx88_set_stereo: mask 0x%x, ctl 0x%x [status=0x%x,ctl=0x%x,vol=0x%x]\0A\00", align 1
@AUD_STATUS = common dso_local global i32 0, align 4
@AUD_CTL = common dso_local global i32 0, align 4
@SHADOW_AUD_VOL_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_set_stereo(%struct.cx88_core* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @UNSET, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @UNSET, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNSET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %122

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %30 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %104 [
    i32 137, label %32
    i32 138, label %51
    i32 136, label %51
    i32 129, label %51
    i32 133, label %51
    i32 130, label %51
    i32 134, label %96
    i32 132, label %103
    i32 128, label %103
    i32 135, label %103
    i32 131, label %103
  ]

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  switch i64 %33, label %50 [
    i64 140, label %34
    i64 143, label %38
    i64 141, label %42
    i64 139, label %46
    i64 142, label %46
  ]

34:                                               ; preds = %32
  %35 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %36 = load i32, i32* @EN_BTSC_FORCE_MONO, align 4
  %37 = call i32 @set_audio_standard_BTSC(%struct.cx88_core* %35, i32 0, i32 %36)
  br label %50

38:                                               ; preds = %32
  %39 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %40 = load i32, i32* @EN_BTSC_AUTO_STEREO, align 4
  %41 = call i32 @set_audio_standard_BTSC(%struct.cx88_core* %39, i32 0, i32 %40)
  br label %50

42:                                               ; preds = %32
  %43 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %44 = load i32, i32* @EN_BTSC_FORCE_SAP, align 4
  %45 = call i32 @set_audio_standard_BTSC(%struct.cx88_core* %43, i32 1, i32 %44)
  br label %50

46:                                               ; preds = %32, %32
  %47 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %48 = load i32, i32* @EN_BTSC_FORCE_STEREO, align 4
  %49 = call i32 @set_audio_standard_BTSC(%struct.cx88_core* %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %32, %46, %42, %38, %34
  br label %104

51:                                               ; preds = %25, %25, %25, %25, %25
  %52 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %53 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i64, i64* %5, align 8
  switch i64 %57, label %70 [
    i64 140, label %58
    i64 143, label %58
    i64 141, label %62
    i64 139, label %66
    i64 142, label %66
  ]

58:                                               ; preds = %56, %56
  %59 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %60 = load i32, i32* @EN_NICAM_FORCE_MONO1, align 4
  %61 = call i32 @set_audio_standard_NICAM(%struct.cx88_core* %59, i32 %60)
  br label %70

62:                                               ; preds = %56
  %63 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %64 = load i32, i32* @EN_NICAM_FORCE_MONO2, align 4
  %65 = call i32 @set_audio_standard_NICAM(%struct.cx88_core* %63, i32 %64)
  br label %70

66:                                               ; preds = %56, %56
  %67 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %68 = load i32, i32* @EN_NICAM_FORCE_STEREO, align 4
  %69 = call i32 @set_audio_standard_NICAM(%struct.cx88_core* %67, i32 %68)
  br label %70

70:                                               ; preds = %56, %66, %62, %58
  br label %95

71:                                               ; preds = %51
  %72 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %73 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 133
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %78 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 130
  br i1 %80, label %81, label %85

81:                                               ; preds = %76, %71
  %82 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %83 = load i64, i64* @EN_A2_FORCE_MONO1, align 8
  %84 = call i32 @set_audio_standard_A2(%struct.cx88_core* %82, i64 %83)
  br label %94

85:                                               ; preds = %76
  store i64 63, i64* %8, align 8
  %86 = load i64, i64* %5, align 8
  switch i64 %86, label %93 [
    i64 140, label %87
    i64 143, label %87
    i64 141, label %89
    i64 139, label %91
    i64 142, label %91
  ]

87:                                               ; preds = %85, %85
  %88 = load i64, i64* @EN_A2_FORCE_MONO1, align 8
  store i64 %88, i64* %7, align 8
  br label %93

89:                                               ; preds = %85
  %90 = load i64, i64* @EN_A2_FORCE_MONO2, align 8
  store i64 %90, i64* %7, align 8
  br label %93

91:                                               ; preds = %85, %85
  %92 = load i64, i64* @EN_A2_FORCE_STEREO, align 8
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %85, %91, %89, %87
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %70
  br label %104

96:                                               ; preds = %25
  %97 = load i64, i64* %5, align 8
  switch i64 %97, label %102 [
    i64 140, label %98
    i64 139, label %100
  ]

98:                                               ; preds = %96
  %99 = load i64, i64* @EN_FMRADIO_FORCE_MONO, align 8
  store i64 %99, i64* %7, align 8
  store i64 63, i64* %8, align 8
  br label %102

100:                                              ; preds = %96
  %101 = load i64, i64* @EN_FMRADIO_AUTO_STEREO, align 8
  store i64 %101, i64* %7, align 8
  store i64 63, i64* %8, align 8
  br label %102

102:                                              ; preds = %96, %100, %98
  br label %104

103:                                              ; preds = %25, %25, %25, %25
  br label %104

104:                                              ; preds = %25, %103, %102, %95, %50
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @UNSET, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i32, i32* @AUD_STATUS, align 4
  %112 = call i32 @cx_read(i32 %111)
  %113 = load i32, i32* @AUD_CTL, align 4
  %114 = call i32 @cx_read(i32 %113)
  %115 = load i32, i32* @SHADOW_AUD_VOL_CTL, align 4
  %116 = call i32 @cx_sread(i32 %115)
  %117 = call i32 @dprintk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %109, i64 %110, i32 %112, i32 %114, i32 %116)
  %118 = load i32, i32* @AUD_CTL, align 4
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @cx_andor(i32 %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %23, %108, %104
  ret void
}

declare dso_local i32 @set_audio_standard_BTSC(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @set_audio_standard_NICAM(%struct.cx88_core*, i32) #1

declare dso_local i32 @set_audio_standard_A2(%struct.cx88_core*, i64) #1

declare dso_local i32 @dprintk(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_sread(i32) #1

declare dso_local i32 @cx_andor(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
