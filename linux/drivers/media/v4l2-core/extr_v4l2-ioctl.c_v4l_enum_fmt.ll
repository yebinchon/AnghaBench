; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)* }
%struct.file = type opaque
%struct.file.0 = type opaque
%struct.file.1 = type opaque
%struct.file.2 = type opaque
%struct.file.3 = type opaque
%struct.file.4 = type opaque
%struct.file.5 = type opaque
%struct.file.6 = type { i32 }
%struct.video_device = type { i32 }
%struct.v4l2_fmtdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.6*, i8*, i8*)* @v4l_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_enum_fmt(%struct.v4l2_ioctl_ops* %0, %struct.file.6* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.6*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_fmtdesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.6* %1, %struct.file.6** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.file.6*, %struct.file.6** %7, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file.6* %14)
  store %struct.video_device* %15, %struct.video_device** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.v4l2_fmtdesc*
  store %struct.v4l2_fmtdesc* %17, %struct.v4l2_fmtdesc** %11, align 8
  %18 = load %struct.file.6*, %struct.file.6** %7, align 8
  %19 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %11, align 8
  %20 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @check_fmt(%struct.file.6* %18, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %214

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %11, align 8
  %31 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %206 [
    i32 132, label %33
    i32 131, label %33
    i32 128, label %72
    i32 130, label %91
    i32 129, label %91
    i32 134, label %130
    i32 133, label %149
    i32 136, label %168
    i32 135, label %187
  ]

33:                                               ; preds = %27, %27
  %34 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %35 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.video_device*, %struct.video_device** %10, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %11, align 8
  %47 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 131
  %50 = zext i1 %49 to i32
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %206

53:                                               ; preds = %33
  %54 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file*, i8*, i8*)** %55, align 8
  %57 = icmp ne i32 (%struct.file*, i8*, i8*)* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @unlikely(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %206

63:                                               ; preds = %53
  %64 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file*, i8*, i8*)** %65, align 8
  %67 = load %struct.file.6*, %struct.file.6** %7, align 8
  %68 = bitcast %struct.file.6* %67 to %struct.file*
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 %66(%struct.file* %68, i8* %69, i8* %70)
  store i32 %71, i32* %12, align 4
  br label %206

72:                                               ; preds = %27
  %73 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %73, i32 0, i32 1
  %75 = load i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)** %74, align 8
  %76 = icmp ne i32 (%struct.file.0*, i8*, i8*)* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @unlikely(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %206

82:                                               ; preds = %72
  %83 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %83, i32 0, i32 1
  %85 = load i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)** %84, align 8
  %86 = load %struct.file.6*, %struct.file.6** %7, align 8
  %87 = bitcast %struct.file.6* %86 to %struct.file.0*
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 %85(%struct.file.0* %87, i8* %88, i8* %89)
  store i32 %90, i32* %12, align 4
  br label %206

91:                                               ; preds = %27, %27
  %92 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_MPLANE, align 4
  %93 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.video_device*, %struct.video_device** %10, align 8
  %96 = getelementptr inbounds %struct.video_device, %struct.video_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %11, align 8
  %105 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 129
  %108 = zext i1 %107 to i32
  %109 = icmp ne i32 %103, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  br label %206

111:                                              ; preds = %91
  %112 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %112, i32 0, i32 2
  %114 = load i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)** %113, align 8
  %115 = icmp ne i32 (%struct.file.1*, i8*, i8*)* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @unlikely(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %206

121:                                              ; preds = %111
  %122 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %122, i32 0, i32 2
  %124 = load i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)** %123, align 8
  %125 = load %struct.file.6*, %struct.file.6** %7, align 8
  %126 = bitcast %struct.file.6* %125 to %struct.file.1*
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 %124(%struct.file.1* %126, i8* %127, i8* %128)
  store i32 %129, i32* %12, align 4
  br label %206

130:                                              ; preds = %27
  %131 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %132 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %131, i32 0, i32 3
  %133 = load i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)** %132, align 8
  %134 = icmp ne i32 (%struct.file.2*, i8*, i8*)* %133, null
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @unlikely(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %206

140:                                              ; preds = %130
  %141 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %142 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %141, i32 0, i32 3
  %143 = load i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)** %142, align 8
  %144 = load %struct.file.6*, %struct.file.6** %7, align 8
  %145 = bitcast %struct.file.6* %144 to %struct.file.2*
  %146 = load i8*, i8** %8, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 %143(%struct.file.2* %145, i8* %146, i8* %147)
  store i32 %148, i32* %12, align 4
  br label %206

149:                                              ; preds = %27
  %150 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %151 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %150, i32 0, i32 4
  %152 = load i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)** %151, align 8
  %153 = icmp ne i32 (%struct.file.3*, i8*, i8*)* %152, null
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @unlikely(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  br label %206

159:                                              ; preds = %149
  %160 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %161 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %160, i32 0, i32 4
  %162 = load i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)** %161, align 8
  %163 = load %struct.file.6*, %struct.file.6** %7, align 8
  %164 = bitcast %struct.file.6* %163 to %struct.file.3*
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 %162(%struct.file.3* %164, i8* %165, i8* %166)
  store i32 %167, i32* %12, align 4
  br label %206

168:                                              ; preds = %27
  %169 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %170 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %169, i32 0, i32 5
  %171 = load i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)** %170, align 8
  %172 = icmp ne i32 (%struct.file.4*, i8*, i8*)* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 @unlikely(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %206

178:                                              ; preds = %168
  %179 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %180 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %179, i32 0, i32 5
  %181 = load i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)** %180, align 8
  %182 = load %struct.file.6*, %struct.file.6** %7, align 8
  %183 = bitcast %struct.file.6* %182 to %struct.file.4*
  %184 = load i8*, i8** %8, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 %181(%struct.file.4* %183, i8* %184, i8* %185)
  store i32 %186, i32* %12, align 4
  br label %206

187:                                              ; preds = %27
  %188 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %189 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %188, i32 0, i32 6
  %190 = load i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)** %189, align 8
  %191 = icmp ne i32 (%struct.file.5*, i8*, i8*)* %190, null
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i32 @unlikely(i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %206

197:                                              ; preds = %187
  %198 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %199 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %198, i32 0, i32 6
  %200 = load i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)** %199, align 8
  %201 = load %struct.file.6*, %struct.file.6** %7, align 8
  %202 = bitcast %struct.file.6* %201 to %struct.file.5*
  %203 = load i8*, i8** %8, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 %200(%struct.file.5* %202, i8* %203, i8* %204)
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %27, %197, %196, %178, %177, %159, %158, %140, %139, %121, %120, %110, %82, %81, %63, %62, %52
  %207 = load i32, i32* %12, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %11, align 8
  %211 = call i32 @v4l_fill_fmtdesc(%struct.v4l2_fmtdesc* %210)
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i32, i32* %12, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %25
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.6*) #1

declare dso_local i32 @check_fmt(%struct.file.6*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @v4l_fill_fmtdesc(%struct.v4l2_fmtdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
