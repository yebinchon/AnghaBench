; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_set_video_mode_Kiara.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_set_video_mode_Kiara.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Kiara_table_entry = type { i64, i64, i32 }
%struct.pwc_device = type { i32, i32, i64, i32, i32, i64, i32 }

@PSZ_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSZ_VGA = common dso_local global i32 0, align 4
@Kiara_table = common dso_local global %struct.Kiara_table_entry*** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4
@pwc_image_sizes = common dso_local global i8*** null, align 8
@.str = private unnamed_addr constant [53 x i8] c"frame_size=%d, vframes=%d, vsize=%d, vbandlength=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32, i32, i32*, i32)* @set_video_mode_Kiara to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_video_mode_Kiara(%struct.pwc_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.Kiara_table_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PSZ_MAX, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %6
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %198

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 5, i32* %11, align 4
  br label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PSZ_VGA, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 15
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 15, i32* %11, align 4
  br label %48

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 30
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 30, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %11, align 4
  %51 = sdiv i32 %50, 5
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %76, %49
  %54 = load %struct.Kiara_table_entry***, %struct.Kiara_table_entry**** @Kiara_table, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.Kiara_table_entry**, %struct.Kiara_table_entry*** %54, i64 %56
  %58 = load %struct.Kiara_table_entry**, %struct.Kiara_table_entry*** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %58, i64 %60
  %62 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %61, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %62, i64 %65
  store %struct.Kiara_table_entry* %66, %struct.Kiara_table_entry** %14, align 8
  %67 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %68 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %80

72:                                               ; preds = %53
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 3
  br i1 %79, label %53, label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %82 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %198

88:                                               ; preds = %80
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %93 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %94 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @send_video_command(%struct.pwc_device* %92, i32 4, i32 %95, i32 12)
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %7, align 4
  br label %198

102:                                              ; preds = %97
  %103 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %104 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %113 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %114 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @pwc_dec23_init(%struct.pwc_device* %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %107, %102
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %120 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  %123 = mul nsw i32 %122, 5
  %124 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %125 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %127 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %130 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load i8***, i8**** @pwc_image_sizes, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8**, i8*** %131, i64 %133
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %140 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load i8***, i8**** @pwc_image_sizes, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8**, i8*** %141, i64 %143
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %150 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %14, align 8
  %152 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %155 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  %156 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %157 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %117
  %161 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %162 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %165 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %163, %167
  %169 = sdiv i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %172 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 8
  br label %185

173:                                              ; preds = %117
  %174 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %175 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %178 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = mul nsw i32 %180, 12
  %182 = sdiv i32 %181, 8
  %183 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %184 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %173, %160
  %186 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %187 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %190 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %194 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %191, i32 %192, i32 %196)
  store i32 0, i32* %7, align 4
  br label %198

198:                                              ; preds = %185, %100, %85, %28
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

declare dso_local i32 @send_video_command(%struct.pwc_device*, i32, i32, i32) #1

declare dso_local i32 @pwc_dec23_init(%struct.pwc_device*, i32) #1

declare dso_local i32 @PWC_TRACE(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
