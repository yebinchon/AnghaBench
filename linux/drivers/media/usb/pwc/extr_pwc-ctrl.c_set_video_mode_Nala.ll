; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_set_video_mode_Nala.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_set_video_mode_Nala.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Nala_table_entry = type { i64, i64, i32 }
%struct.pwc_device = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@__const.set_video_mode_Nala.frames2frames = private unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 5, i32 5, i32 7, i32 7, i32 10, i32 10, i32 10, i32 12, i32 12, i32 15, i32 15, i32 15, i32 15, i32 20, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24], align 16
@__const.set_video_mode_Nala.frames2table = private unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 16
@PSZ_CIF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSZ_QCIF = common dso_local global i32 0, align 4
@Nala_table = common dso_local global %struct.Nala_table_entry** null, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4
@pwc_image_sizes = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32, i32, i32*, i32)* @set_video_mode_Nala to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_video_mode_Nala(%struct.pwc_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.Nala_table_entry*, align 8
  %17 = alloca [31 x i32], align 16
  %18 = alloca [31 x i32], align 16
  store %struct.pwc_device* %0, %struct.pwc_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = bitcast [31 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([31 x i32]* @__const.set_video_mode_Nala.frames2frames to i8*), i64 124, i1 false)
  %20 = bitcast [31 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([31 x i32]* @__const.set_video_mode_Nala.frames2table to i8*), i64 124, i1 false)
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PSZ_CIF, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %176

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 4, i32* %11, align 4
  br label %48

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PSZ_QCIF, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 15
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 15, i32* %11, align 4
  br label %47

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 25
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 25, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [31 x i32], [31 x i32]* %17, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [31 x i32], [31 x i32]* %18, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.Nala_table_entry**, %struct.Nala_table_entry*** @Nala_table, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Nala_table_entry*, %struct.Nala_table_entry** %57, i64 %59
  %61 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %61, i64 %63
  store %struct.Nala_table_entry* %64, %struct.Nala_table_entry** %16, align 8
  %65 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %16, align 8
  %66 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %48
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %176

72:                                               ; preds = %48
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %77 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %16, align 8
  %81 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @send_video_command(%struct.pwc_device* %76, i32 %79, i32 %82, i32 3)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %7, align 4
  br label %176

89:                                               ; preds = %84
  %90 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %16, align 8
  %91 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %100 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %16, align 8
  %101 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pwc_dec1_init(%struct.pwc_device* %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %94, %89
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %107 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %110 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %16, align 8
  %112 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i8***, i8**** @pwc_image_sizes, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8**, i8*** %116, i64 %118
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %125 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load i8***, i8**** @pwc_image_sizes, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8**, i8*** %126, i64 %128
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %135 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %137 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %140 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = mul nsw i32 %142, 3
  %144 = sdiv i32 %143, 2
  %145 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %146 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  %147 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %16, align 8
  %148 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %104
  %152 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %153 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 5
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %158 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %157, i32 0, i32 7
  store i32 528, i32* %158, align 8
  %159 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %160 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = sdiv i32 %161, 4
  store i32 %162, i32* %160, align 8
  br label %170

163:                                              ; preds = %151
  %164 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %165 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %164, i32 0, i32 7
  store i32 704, i32* %165, align 8
  %166 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %167 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 3
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %163, %156
  br label %174

171:                                              ; preds = %104
  %172 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %173 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %172, i32 0, i32 7
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %170
  %175 = load i32*, i32** %12, align 8
  store i32 3, i32* %175, align 4
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %174, %87, %69, %27
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @send_video_command(%struct.pwc_device*, i32, i32, i32) #2

declare dso_local i32 @pwc_dec1_init(%struct.pwc_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
