; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_capture.c_m5mols_capture_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_capture.c_m5mols_capture_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i64, i64, i64, %struct.m5mols_exif }
%struct.m5mols_exif = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@EXIF_INFO_EXPTIME_NU = common dso_local global i32 0, align 4
@EXIF_INFO_EXPTIME_DE = common dso_local global i32 0, align 4
@EXIF_INFO_TV_NU = common dso_local global i32 0, align 4
@EXIF_INFO_TV_DE = common dso_local global i32 0, align 4
@EXIF_INFO_AV_NU = common dso_local global i32 0, align 4
@EXIF_INFO_AV_DE = common dso_local global i32 0, align 4
@EXIF_INFO_BV_NU = common dso_local global i32 0, align 4
@EXIF_INFO_BV_DE = common dso_local global i32 0, align 4
@EXIF_INFO_EBV_NU = common dso_local global i32 0, align 4
@EXIF_INFO_EBV_DE = common dso_local global i32 0, align 4
@EXIF_INFO_ISO = common dso_local global i32 0, align 4
@EXIF_INFO_FLASH = common dso_local global i32 0, align 4
@EXIF_INFO_SDR = common dso_local global i32 0, align 4
@EXIF_INFO_QVAL = common dso_local global i32 0, align 4
@CAPC_IMAGE_SIZE = common dso_local global i32 0, align 4
@CAPC_THUMB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m5mols_info*)* @m5mols_capture_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_capture_info(%struct.m5mols_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m5mols_info*, align 8
  %4 = alloca %struct.m5mols_exif*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %3, align 8
  %7 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %8 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store %struct.m5mols_exif* %9, %struct.m5mols_exif** %4, align 8
  %10 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %11 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %10, i32 0, i32 1
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = load i32, i32* @EXIF_INFO_EXPTIME_NU, align 4
  %14 = load i32, i32* @EXIF_INFO_EXPTIME_DE, align 4
  %15 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %16 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %15, i32 0, i32 8
  %17 = call i32 @m5mols_read_rational(%struct.v4l2_subdev* %12, i32 %13, i32 %14, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %141

22:                                               ; preds = %1
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %24 = load i32, i32* @EXIF_INFO_TV_NU, align 4
  %25 = load i32, i32* @EXIF_INFO_TV_DE, align 4
  %26 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %27 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %26, i32 0, i32 7
  %28 = call i32 @m5mols_read_rational(%struct.v4l2_subdev* %23, i32 %24, i32 %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %141

33:                                               ; preds = %22
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = load i32, i32* @EXIF_INFO_AV_NU, align 4
  %36 = load i32, i32* @EXIF_INFO_AV_DE, align 4
  %37 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %38 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %37, i32 0, i32 6
  %39 = call i32 @m5mols_read_rational(%struct.v4l2_subdev* %34, i32 %35, i32 %36, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %141

44:                                               ; preds = %33
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %46 = load i32, i32* @EXIF_INFO_BV_NU, align 4
  %47 = load i32, i32* @EXIF_INFO_BV_DE, align 4
  %48 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %49 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %48, i32 0, i32 5
  %50 = call i32 @m5mols_read_rational(%struct.v4l2_subdev* %45, i32 %46, i32 %47, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %141

55:                                               ; preds = %44
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = load i32, i32* @EXIF_INFO_EBV_NU, align 4
  %58 = load i32, i32* @EXIF_INFO_EBV_DE, align 4
  %59 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %60 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %59, i32 0, i32 4
  %61 = call i32 @m5mols_read_rational(%struct.v4l2_subdev* %56, i32 %57, i32 %58, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %141

66:                                               ; preds = %55
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %68 = load i32, i32* @EXIF_INFO_ISO, align 4
  %69 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %70 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %69, i32 0, i32 3
  %71 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %67, i32 %68, i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %76 = load i32, i32* @EXIF_INFO_FLASH, align 4
  %77 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %78 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %77, i32 0, i32 2
  %79 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %75, i32 %76, i32* %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %85 = load i32, i32* @EXIF_INFO_SDR, align 4
  %86 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %87 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %86, i32 0, i32 1
  %88 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %84, i32 %85, i32* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %94 = load i32, i32* @EXIF_INFO_QVAL, align 4
  %95 = load %struct.m5mols_exif*, %struct.m5mols_exif** %4, align 8
  %96 = getelementptr inbounds %struct.m5mols_exif, %struct.m5mols_exif* %95, i32 0, i32 0
  %97 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %93, i32 %94, i32* %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %141

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %108 = load i32, i32* @CAPC_IMAGE_SIZE, align 4
  %109 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %110 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = call i32 @m5mols_read_u32(%struct.v4l2_subdev* %107, i32 %108, i64* %111)
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %118 = load i32, i32* @CAPC_THUMB_SIZE, align 4
  %119 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %120 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @m5mols_read_u32(%struct.v4l2_subdev* %117, i32 %118, i64* %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %123
  %127 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %128 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %132 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %130, %134
  %136 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %137 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  store i64 %135, i64* %138, align 8
  br label %139

139:                                              ; preds = %126, %123
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %101, %64, %53, %42, %31, %20
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @m5mols_read_rational(%struct.v4l2_subdev*, i32, i32, i32*) #1

declare dso_local i32 @m5mols_read_u16(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @m5mols_read_u32(%struct.v4l2_subdev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
