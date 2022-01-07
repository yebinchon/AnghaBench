; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.saa7134_dev = type { i32, %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@TVNORMS = common dso_local global i32 0, align 4
@tvnorms = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@secam = common dso_local global i8* null, align 8
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.v4l2_fh*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %13)
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.v4l2_fh*
  store %struct.v4l2_fh* %16, %struct.v4l2_fh** %9, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call i64 @is_empress(%struct.file* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 1
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %22, align 8
  %24 = icmp ne %struct.v4l2_fh* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %216

28:                                               ; preds = %20, %3
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @TVNORMS, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %29

47:                                               ; preds = %42, %29
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @TVNORMS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @TVNORMS, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %57, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %71

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %52

71:                                               ; preds = %66, %52
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @TVNORMS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %216

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @V4L2_STD_SECAM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %163

84:                                               ; preds = %79
  %85 = load i8*, i8** @secam, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 45
  br i1 %89, label %90, label %163

90:                                               ; preds = %84
  %91 = load i8*, i8** @secam, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 76
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** @secam, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 108
  br i1 %101, label %102, label %119

102:                                              ; preds = %96, %90
  %103 = load i8*, i8** @secam, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 67
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** @secam, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 99
  br i1 %113, label %114, label %116

114:                                              ; preds = %108, %102
  %115 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  store i32 %115, i32* %12, align 4
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %116, %114
  br label %136

119:                                              ; preds = %96
  %120 = load i8*, i8** @secam, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 68
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i8*, i8** @secam, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 100
  br i1 %130, label %131, label %133

131:                                              ; preds = %125, %119
  %132 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  store i32 %132, i32* %12, align 4
  br label %135

133:                                              ; preds = %125
  %134 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %118
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %152, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @TVNORMS, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %142, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %155

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %11, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %137

155:                                              ; preds = %150, %137
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @TVNORMS, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %216

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %84, %79
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %7, align 4
  %170 = load %struct.file*, %struct.file** %5, align 8
  %171 = call i64 @is_empress(%struct.file* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %206, label %173

173:                                              ; preds = %163
  %174 = load %struct.v4l2_fh*, %struct.v4l2_fh** %9, align 8
  %175 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %176 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %175, i32 0, i32 1
  %177 = load %struct.v4l2_fh*, %struct.v4l2_fh** %176, align 8
  %178 = icmp eq %struct.v4l2_fh* %174, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %173
  %180 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %181 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %180, i32 0, i32 0
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @spin_lock_irqsave(i32* %181, i64 %182)
  %184 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %185 = call i32 @stop_preview(%struct.saa7134_dev* %184)
  %186 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %187 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %186, i32 0, i32 0
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  %190 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %192 = load i32, i32* %11, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 %193
  %195 = call i32 @set_tvnorm(%struct.saa7134_dev* %190, %struct.TYPE_3__* %194)
  %196 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %197 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %196, i32 0, i32 0
  %198 = load i64, i64* %10, align 8
  %199 = call i32 @spin_lock_irqsave(i32* %197, i64 %198)
  %200 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %201 = call i32 @start_preview(%struct.saa7134_dev* %200)
  %202 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %203 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %202, i32 0, i32 0
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  br label %213

206:                                              ; preds = %173, %163
  %207 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %209 = load i32, i32* %11, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 %210
  %212 = call i32 @set_tvnorm(%struct.saa7134_dev* %207, %struct.TYPE_3__* %211)
  br label %213

213:                                              ; preds = %206, %179
  %214 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %215 = call i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev* %214)
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %213, %159, %76, %25
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @is_empress(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stop_preview(%struct.saa7134_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_tvnorm(%struct.saa7134_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @start_preview(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
