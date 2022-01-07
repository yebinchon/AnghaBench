; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_is_format_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_is_format_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi = type { i32 }
%struct.sun6i_csi_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@V4L2_MBUS_PARALLEL = common dso_local global i64 0, align 8
@V4L2_MBUS_BT656 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unsupported mbus code: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported pixformat: 0x%x\0A\00", align 1
@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGBRG8_1X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGRBG8_1X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SRGGB8_1X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGBRG10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SRGGB10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR12_1X12 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGBRG12_1X12 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGRBG12_1X12 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SRGGB12_1X12 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_RGB565_2X8_LE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_RGB565_2X8_BE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_JPEG_1X8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun6i_csi_is_format_supported(%struct.sun6i_csi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_csi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun6i_csi_dev*, align 8
  store %struct.sun6i_csi* %0, %struct.sun6i_csi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sun6i_csi*, %struct.sun6i_csi** %5, align 8
  %10 = call %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi* %9)
  store %struct.sun6i_csi_dev* %10, %struct.sun6i_csi_dev** %8, align 8
  %11 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %12 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_MBUS_PARALLEL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %20 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_MBUS_BT656, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %18, %3
  %27 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %28 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %54

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %47 [
    i32 154, label %37
    i32 152, label %37
    i32 150, label %37
    i32 151, label %37
    i32 149, label %37
    i32 132, label %37
    i32 129, label %37
    i32 131, label %37
  ]

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %40 [
    i32 162, label %39
    i32 160, label %39
    i32 158, label %39
    i32 156, label %39
  ]

39:                                               ; preds = %37, %37, %37, %37
  store i32 1, i32* %4, align 4
  br label %164

40:                                               ; preds = %37
  %41 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %42 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %49 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %46
  store i32 0, i32* %4, align 4
  br label %164

54:                                               ; preds = %26, %18
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %157 [
    i32 144, label %56
    i32 141, label %61
    i32 138, label %66
    i32 135, label %71
    i32 146, label %76
    i32 143, label %81
    i32 140, label %86
    i32 137, label %91
    i32 145, label %96
    i32 142, label %101
    i32 139, label %106
    i32 136, label %111
    i32 130, label %116
    i32 128, label %120
    i32 134, label %124
    i32 133, label %128
    i32 154, label %132
    i32 152, label %132
    i32 150, label %132
    i32 151, label %132
    i32 149, label %132
    i32 132, label %132
    i32 129, label %132
    i32 131, label %132
    i32 148, label %142
    i32 147, label %147
    i32 153, label %152
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MEDIA_BUS_FMT_SBGGR8_1X8, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %164

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MEDIA_BUS_FMT_SGBRG8_1X8, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %164

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MEDIA_BUS_FMT_SGRBG8_1X8, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %164

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MEDIA_BUS_FMT_SRGGB8_1X8, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %164

76:                                               ; preds = %54
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_1X10, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %164

81:                                               ; preds = %54
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @MEDIA_BUS_FMT_SGBRG10_1X10, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %164

86:                                               ; preds = %54
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %164

91:                                               ; preds = %54
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MEDIA_BUS_FMT_SRGGB10_1X10, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %164

96:                                               ; preds = %54
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @MEDIA_BUS_FMT_SBGGR12_1X12, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %164

101:                                              ; preds = %54
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @MEDIA_BUS_FMT_SGBRG12_1X12, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %164

106:                                              ; preds = %54
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @MEDIA_BUS_FMT_SGRBG12_1X12, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %164

111:                                              ; preds = %54
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @MEDIA_BUS_FMT_SRGGB12_1X12, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %164

116:                                              ; preds = %54
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 157
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %4, align 4
  br label %164

120:                                              ; preds = %54
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 155
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %4, align 4
  br label %164

124:                                              ; preds = %54
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 161
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %164

128:                                              ; preds = %54
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 159
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %4, align 4
  br label %164

132:                                              ; preds = %54, %54, %54, %54, %54, %54, %54, %54
  %133 = load i32, i32* %7, align 4
  switch i32 %133, label %135 [
    i32 161, label %134
    i32 159, label %134
    i32 157, label %134
    i32 155, label %134
  ]

134:                                              ; preds = %132, %132, %132, %132
  store i32 1, i32* %4, align 4
  br label %164

135:                                              ; preds = %132
  %136 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %137 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135
  br label %163

142:                                              ; preds = %54
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @MEDIA_BUS_FMT_RGB565_2X8_LE, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %4, align 4
  br label %164

147:                                              ; preds = %54
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @MEDIA_BUS_FMT_RGB565_2X8_BE, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %4, align 4
  br label %164

152:                                              ; preds = %54
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @MEDIA_BUS_FMT_JPEG_1X8, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %4, align 4
  br label %164

157:                                              ; preds = %54
  %158 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %8, align 8
  %159 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @dev_dbg(i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %157, %141
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %152, %147, %142, %134, %128, %124, %120, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %53, %39
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
