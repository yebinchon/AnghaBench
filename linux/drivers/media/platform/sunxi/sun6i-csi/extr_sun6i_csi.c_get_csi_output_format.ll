; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_get_csi_output_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_get_csi_output_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { i32 }

@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_BT = common dso_local global i64 0, align 8
@CSI_FRAME_RAW_8 = common dso_local global i32 0, align 4
@CSI_FIELD_RAW_8 = common dso_local global i32 0, align 4
@CSI_FRAME_RAW_10 = common dso_local global i32 0, align 4
@CSI_FIELD_RAW_10 = common dso_local global i32 0, align 4
@CSI_FRAME_RAW_12 = common dso_local global i32 0, align 4
@CSI_FIELD_RAW_12 = common dso_local global i32 0, align 4
@CSI_FRAME_MB_YUV420 = common dso_local global i32 0, align 4
@CSI_FIELD_MB_YUV420 = common dso_local global i32 0, align 4
@CSI_FRAME_UV_CB_YUV420 = common dso_local global i32 0, align 4
@CSI_FIELD_UV_CB_YUV420 = common dso_local global i32 0, align 4
@CSI_FRAME_PLANAR_YUV420 = common dso_local global i32 0, align 4
@CSI_FIELD_PLANAR_YUV420 = common dso_local global i32 0, align 4
@CSI_FRAME_UV_CB_YUV422 = common dso_local global i32 0, align 4
@CSI_FIELD_UV_CB_YUV422 = common dso_local global i32 0, align 4
@CSI_FRAME_PLANAR_YUV422 = common dso_local global i32 0, align 4
@CSI_FIELD_PLANAR_YUV422 = common dso_local global i32 0, align 4
@CSI_FRAME_RGB565 = common dso_local global i32 0, align 4
@CSI_FIELD_RGB565 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported pixformat: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_csi_dev*, i64, i64)* @get_csi_output_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_csi_output_format(%struct.sun6i_csi_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_csi_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sun6i_csi_dev* %0, %struct.sun6i_csi_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @V4L2_FIELD_INTERLACED_TB, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %3
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i64, i64* %6, align 8
  switch i64 %22, label %122 [
    i64 144, label %23
    i64 141, label %23
    i64 138, label %23
    i64 135, label %23
    i64 146, label %32
    i64 143, label %32
    i64 140, label %32
    i64 137, label %32
    i64 145, label %41
    i64 142, label %41
    i64 139, label %41
    i64 136, label %41
    i64 130, label %50
    i64 128, label %50
    i64 134, label %50
    i64 133, label %50
    i64 154, label %59
    i64 152, label %68
    i64 150, label %68
    i64 132, label %77
    i64 129, label %77
    i64 151, label %86
    i64 149, label %86
    i64 131, label %95
    i64 148, label %104
    i64 147, label %104
    i64 153, label %113
  ]

23:                                               ; preds = %21, %21, %21, %21
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @CSI_FRAME_RAW_8, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @CSI_FIELD_RAW_8, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %4, align 4
  br label %130

32:                                               ; preds = %21, %21, %21, %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @CSI_FRAME_RAW_10, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @CSI_FIELD_RAW_10, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %4, align 4
  br label %130

41:                                               ; preds = %21, %21, %21, %21
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @CSI_FRAME_RAW_12, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @CSI_FIELD_RAW_12, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %4, align 4
  br label %130

50:                                               ; preds = %21, %21, %21, %21
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @CSI_FRAME_RAW_8, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @CSI_FIELD_RAW_8, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %4, align 4
  br label %130

59:                                               ; preds = %21
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @CSI_FRAME_MB_YUV420, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @CSI_FIELD_MB_YUV420, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %4, align 4
  br label %130

68:                                               ; preds = %21, %21
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @CSI_FRAME_UV_CB_YUV420, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @CSI_FIELD_UV_CB_YUV420, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %4, align 4
  br label %130

77:                                               ; preds = %21, %21
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @CSI_FRAME_PLANAR_YUV420, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @CSI_FIELD_PLANAR_YUV420, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %4, align 4
  br label %130

86:                                               ; preds = %21, %21
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @CSI_FRAME_UV_CB_YUV422, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @CSI_FIELD_UV_CB_YUV422, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %4, align 4
  br label %130

95:                                               ; preds = %21
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @CSI_FRAME_PLANAR_YUV422, align 4
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @CSI_FIELD_PLANAR_YUV422, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %4, align 4
  br label %130

104:                                              ; preds = %21, %21
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @CSI_FRAME_RGB565, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @CSI_FIELD_RGB565, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %4, align 4
  br label %130

113:                                              ; preds = %21
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @CSI_FRAME_RAW_8, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @CSI_FIELD_RAW_8, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* %4, align 4
  br label %130

122:                                              ; preds = %21
  %123 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %124 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @dev_warn(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @CSI_FIELD_RAW_8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %120, %111, %102, %93, %84, %75, %66, %57, %48, %39, %30
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
