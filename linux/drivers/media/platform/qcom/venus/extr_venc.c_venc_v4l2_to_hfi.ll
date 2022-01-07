; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_v4l2_to_hfi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_v4l2_to_hfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HFI_MPEG4_LEVEL_0 = common dso_local global i32 0, align 4
@HFI_MPEG4_LEVEL_0b = common dso_local global i32 0, align 4
@HFI_MPEG4_LEVEL_1 = common dso_local global i32 0, align 4
@HFI_MPEG4_LEVEL_2 = common dso_local global i32 0, align 4
@HFI_MPEG4_LEVEL_3 = common dso_local global i32 0, align 4
@HFI_MPEG4_LEVEL_4 = common dso_local global i32 0, align 4
@HFI_MPEG4_LEVEL_5 = common dso_local global i32 0, align 4
@HFI_MPEG4_PROFILE_SIMPLE = common dso_local global i32 0, align 4
@HFI_MPEG4_PROFILE_ADVANCEDSIMPLE = common dso_local global i32 0, align 4
@HFI_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@HFI_H264_PROFILE_CONSTRAINED_BASE = common dso_local global i32 0, align 4
@HFI_H264_PROFILE_MAIN = common dso_local global i32 0, align 4
@HFI_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_1 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_1b = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_11 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_12 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_13 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_2 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_21 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_22 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_3 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_31 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_32 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_4 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_41 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_42 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_5 = common dso_local global i32 0, align 4
@HFI_H264_LEVEL_51 = common dso_local global i32 0, align 4
@HFI_H264_ENTROPY_CAVLC = common dso_local global i32 0, align 4
@HFI_H264_ENTROPY_CABAC = common dso_local global i32 0, align 4
@HFI_VPX_PROFILE_VERSION_0 = common dso_local global i32 0, align 4
@HFI_VPX_PROFILE_VERSION_1 = common dso_local global i32 0, align 4
@HFI_VPX_PROFILE_VERSION_2 = common dso_local global i32 0, align 4
@HFI_VPX_PROFILE_VERSION_3 = common dso_local global i32 0, align 4
@HFI_H264_DB_MODE_ALL_BOUNDARY = common dso_local global i32 0, align 4
@HFI_H264_DB_MODE_DISABLE = common dso_local global i32 0, align 4
@HFI_H264_DB_MODE_SKIP_SLICE_BOUNDARY = common dso_local global i32 0, align 4
@HFI_HEVC_PROFILE_MAIN = common dso_local global i32 0, align 4
@HFI_HEVC_PROFILE_MAIN_STILL_PIC = common dso_local global i32 0, align 4
@HFI_HEVC_PROFILE_MAIN10 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_1 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_2 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_21 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_3 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_31 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_4 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_41 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_5 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_51 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_52 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_6 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_61 = common dso_local global i32 0, align 4
@HFI_HEVC_LEVEL_62 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @venc_v4l2_to_hfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_v4l2_to_hfi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %142 [
    i32 180, label %7
    i32 179, label %24
    i32 183, label %31
    i32 185, label %42
    i32 186, label %77
    i32 178, label %84
    i32 184, label %95
    i32 181, label %104
    i32 182, label %113
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %10 [
    i32 136, label %9
    i32 135, label %12
    i32 134, label %14
    i32 133, label %16
    i32 132, label %18
    i32 131, label %20
    i32 130, label %22
  ]

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, i32* @HFI_MPEG4_LEVEL_0, align 4
  store i32 %11, i32* %3, align 4
  br label %143

12:                                               ; preds = %7
  %13 = load i32, i32* @HFI_MPEG4_LEVEL_0b, align 4
  store i32 %13, i32* %3, align 4
  br label %143

14:                                               ; preds = %7
  %15 = load i32, i32* @HFI_MPEG4_LEVEL_1, align 4
  store i32 %15, i32* %3, align 4
  br label %143

16:                                               ; preds = %7
  %17 = load i32, i32* @HFI_MPEG4_LEVEL_2, align 4
  store i32 %17, i32* %3, align 4
  br label %143

18:                                               ; preds = %7
  %19 = load i32, i32* @HFI_MPEG4_LEVEL_3, align 4
  store i32 %19, i32* %3, align 4
  br label %143

20:                                               ; preds = %7
  %21 = load i32, i32* @HFI_MPEG4_LEVEL_4, align 4
  store i32 %21, i32* %3, align 4
  br label %143

22:                                               ; preds = %7
  %23 = load i32, i32* @HFI_MPEG4_LEVEL_5, align 4
  store i32 %23, i32* %3, align 4
  br label %143

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %27 [
    i32 128, label %26
    i32 129, label %29
  ]

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %24, %26
  %28 = load i32, i32* @HFI_MPEG4_PROFILE_SIMPLE, align 4
  store i32 %28, i32* %3, align 4
  br label %143

29:                                               ; preds = %24
  %30 = load i32, i32* @HFI_MPEG4_PROFILE_ADVANCEDSIMPLE, align 4
  store i32 %30, i32* %3, align 4
  br label %143

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %40 [
    i32 156, label %33
    i32 155, label %35
    i32 153, label %37
    i32 154, label %39
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @HFI_H264_PROFILE_BASELINE, align 4
  store i32 %34, i32* %3, align 4
  br label %143

35:                                               ; preds = %31
  %36 = load i32, i32* @HFI_H264_PROFILE_CONSTRAINED_BASE, align 4
  store i32 %36, i32* %3, align 4
  br label %143

37:                                               ; preds = %31
  %38 = load i32, i32* @HFI_H264_PROFILE_MAIN, align 4
  store i32 %38, i32* %3, align 4
  br label %143

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %31, %39
  %41 = load i32, i32* @HFI_H264_PROFILE_HIGH, align 4
  store i32 %41, i32* %3, align 4
  br label %143

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %73 [
    i32 174, label %44
    i32 175, label %46
    i32 173, label %48
    i32 172, label %50
    i32 171, label %52
    i32 170, label %54
    i32 169, label %56
    i32 168, label %58
    i32 167, label %60
    i32 166, label %62
    i32 165, label %64
    i32 164, label %66
    i32 163, label %68
    i32 162, label %70
    i32 161, label %72
    i32 160, label %75
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @HFI_H264_LEVEL_1, align 4
  store i32 %45, i32* %3, align 4
  br label %143

46:                                               ; preds = %42
  %47 = load i32, i32* @HFI_H264_LEVEL_1b, align 4
  store i32 %47, i32* %3, align 4
  br label %143

48:                                               ; preds = %42
  %49 = load i32, i32* @HFI_H264_LEVEL_11, align 4
  store i32 %49, i32* %3, align 4
  br label %143

50:                                               ; preds = %42
  %51 = load i32, i32* @HFI_H264_LEVEL_12, align 4
  store i32 %51, i32* %3, align 4
  br label %143

52:                                               ; preds = %42
  %53 = load i32, i32* @HFI_H264_LEVEL_13, align 4
  store i32 %53, i32* %3, align 4
  br label %143

54:                                               ; preds = %42
  %55 = load i32, i32* @HFI_H264_LEVEL_2, align 4
  store i32 %55, i32* %3, align 4
  br label %143

56:                                               ; preds = %42
  %57 = load i32, i32* @HFI_H264_LEVEL_21, align 4
  store i32 %57, i32* %3, align 4
  br label %143

58:                                               ; preds = %42
  %59 = load i32, i32* @HFI_H264_LEVEL_22, align 4
  store i32 %59, i32* %3, align 4
  br label %143

60:                                               ; preds = %42
  %61 = load i32, i32* @HFI_H264_LEVEL_3, align 4
  store i32 %61, i32* %3, align 4
  br label %143

62:                                               ; preds = %42
  %63 = load i32, i32* @HFI_H264_LEVEL_31, align 4
  store i32 %63, i32* %3, align 4
  br label %143

64:                                               ; preds = %42
  %65 = load i32, i32* @HFI_H264_LEVEL_32, align 4
  store i32 %65, i32* %3, align 4
  br label %143

66:                                               ; preds = %42
  %67 = load i32, i32* @HFI_H264_LEVEL_4, align 4
  store i32 %67, i32* %3, align 4
  br label %143

68:                                               ; preds = %42
  %69 = load i32, i32* @HFI_H264_LEVEL_41, align 4
  store i32 %69, i32* %3, align 4
  br label %143

70:                                               ; preds = %42
  %71 = load i32, i32* @HFI_H264_LEVEL_42, align 4
  store i32 %71, i32* %3, align 4
  br label %143

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %42, %72
  %74 = load i32, i32* @HFI_H264_LEVEL_5, align 4
  store i32 %74, i32* %3, align 4
  br label %143

75:                                               ; preds = %42
  %76 = load i32, i32* @HFI_H264_LEVEL_51, align 4
  store i32 %76, i32* %3, align 4
  br label %143

77:                                               ; preds = %2
  %78 = load i32, i32* %5, align 4
  switch i32 %78, label %80 [
    i32 176, label %79
    i32 177, label %82
  ]

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %77, %79
  %81 = load i32, i32* @HFI_H264_ENTROPY_CAVLC, align 4
  store i32 %81, i32* %3, align 4
  br label %143

82:                                               ; preds = %77
  %83 = load i32, i32* @HFI_H264_ENTROPY_CABAC, align 4
  store i32 %83, i32* %3, align 4
  br label %143

84:                                               ; preds = %2
  %85 = load i32, i32* %5, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %89
    i32 2, label %91
    i32 3, label %93
  ]

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %84, %86
  %88 = load i32, i32* @HFI_VPX_PROFILE_VERSION_0, align 4
  store i32 %88, i32* %3, align 4
  br label %143

89:                                               ; preds = %84
  %90 = load i32, i32* @HFI_VPX_PROFILE_VERSION_1, align 4
  store i32 %90, i32* %3, align 4
  br label %143

91:                                               ; preds = %84
  %92 = load i32, i32* @HFI_VPX_PROFILE_VERSION_2, align 4
  store i32 %92, i32* %3, align 4
  br label %143

93:                                               ; preds = %84
  %94 = load i32, i32* @HFI_VPX_PROFILE_VERSION_3, align 4
  store i32 %94, i32* %3, align 4
  br label %143

95:                                               ; preds = %2
  %96 = load i32, i32* %5, align 4
  switch i32 %96, label %98 [
    i32 157, label %97
    i32 159, label %100
    i32 158, label %102
  ]

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %95, %97
  %99 = load i32, i32* @HFI_H264_DB_MODE_ALL_BOUNDARY, align 4
  store i32 %99, i32* %3, align 4
  br label %143

100:                                              ; preds = %95
  %101 = load i32, i32* @HFI_H264_DB_MODE_DISABLE, align 4
  store i32 %101, i32* %3, align 4
  br label %143

102:                                              ; preds = %95
  %103 = load i32, i32* @HFI_H264_DB_MODE_SKIP_SLICE_BOUNDARY, align 4
  store i32 %103, i32* %3, align 4
  br label %143

104:                                              ; preds = %2
  %105 = load i32, i32* %5, align 4
  switch i32 %105, label %107 [
    i32 139, label %106
    i32 137, label %109
    i32 138, label %111
  ]

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %104, %106
  %108 = load i32, i32* @HFI_HEVC_PROFILE_MAIN, align 4
  store i32 %108, i32* %3, align 4
  br label %143

109:                                              ; preds = %104
  %110 = load i32, i32* @HFI_HEVC_PROFILE_MAIN_STILL_PIC, align 4
  store i32 %110, i32* %3, align 4
  br label %143

111:                                              ; preds = %104
  %112 = load i32, i32* @HFI_HEVC_PROFILE_MAIN10, align 4
  store i32 %112, i32* %3, align 4
  br label %143

113:                                              ; preds = %2
  %114 = load i32, i32* %5, align 4
  switch i32 %114, label %116 [
    i32 152, label %115
    i32 151, label %118
    i32 150, label %120
    i32 149, label %122
    i32 148, label %124
    i32 147, label %126
    i32 146, label %128
    i32 145, label %130
    i32 144, label %132
    i32 143, label %134
    i32 142, label %136
    i32 141, label %138
    i32 140, label %140
  ]

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %113, %115
  %117 = load i32, i32* @HFI_HEVC_LEVEL_1, align 4
  store i32 %117, i32* %3, align 4
  br label %143

118:                                              ; preds = %113
  %119 = load i32, i32* @HFI_HEVC_LEVEL_2, align 4
  store i32 %119, i32* %3, align 4
  br label %143

120:                                              ; preds = %113
  %121 = load i32, i32* @HFI_HEVC_LEVEL_21, align 4
  store i32 %121, i32* %3, align 4
  br label %143

122:                                              ; preds = %113
  %123 = load i32, i32* @HFI_HEVC_LEVEL_3, align 4
  store i32 %123, i32* %3, align 4
  br label %143

124:                                              ; preds = %113
  %125 = load i32, i32* @HFI_HEVC_LEVEL_31, align 4
  store i32 %125, i32* %3, align 4
  br label %143

126:                                              ; preds = %113
  %127 = load i32, i32* @HFI_HEVC_LEVEL_4, align 4
  store i32 %127, i32* %3, align 4
  br label %143

128:                                              ; preds = %113
  %129 = load i32, i32* @HFI_HEVC_LEVEL_41, align 4
  store i32 %129, i32* %3, align 4
  br label %143

130:                                              ; preds = %113
  %131 = load i32, i32* @HFI_HEVC_LEVEL_5, align 4
  store i32 %131, i32* %3, align 4
  br label %143

132:                                              ; preds = %113
  %133 = load i32, i32* @HFI_HEVC_LEVEL_51, align 4
  store i32 %133, i32* %3, align 4
  br label %143

134:                                              ; preds = %113
  %135 = load i32, i32* @HFI_HEVC_LEVEL_52, align 4
  store i32 %135, i32* %3, align 4
  br label %143

136:                                              ; preds = %113
  %137 = load i32, i32* @HFI_HEVC_LEVEL_6, align 4
  store i32 %137, i32* %3, align 4
  br label %143

138:                                              ; preds = %113
  %139 = load i32, i32* @HFI_HEVC_LEVEL_61, align 4
  store i32 %139, i32* %3, align 4
  br label %143

140:                                              ; preds = %113
  %141 = load i32, i32* @HFI_HEVC_LEVEL_62, align 4
  store i32 %141, i32* %3, align 4
  br label %143

142:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %111, %109, %107, %102, %100, %98, %93, %91, %89, %87, %82, %80, %75, %73, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %40, %37, %35, %33, %29, %27, %22, %20, %18, %16, %14, %12, %10
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
