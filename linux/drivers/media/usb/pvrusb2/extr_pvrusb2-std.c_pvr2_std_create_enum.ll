; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-std.c_pvr2_std_create_enum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-std.c_pvr2_std_create_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_standard = type { i32 }

@pvrusb2_debug = common dso_local global i32 0, align 4
@PVR2_TRACE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Mapping standards mask=0x%x (%.*s)\00", align 1
@std_mixes = common dso_local global i32* null, align 8
@CSTD_ATSC = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"***WARNING*** Failed to classify the following standard(s): %.*s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Setting up %u unique standard(s)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_standard* @pvr2_std_create_enum(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_standard*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_standard*, align 8
  %14 = alloca [100 x i8], align 16
  %15 = alloca [100 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @pvrusb2_debug, align 4
  %17 = load i32, i32* @PVR2_TRACE_STD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pvr2_std_id_to_str(i8* %21, i32 100, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @PVR2_TRACE_STD, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %28 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32*, i32** %4, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %56, %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %56

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @match_std(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %49, %40
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** @std_mixes, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** @std_mixes, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %66, %71
  %73 = load i32*, i32** @std_mixes, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %65
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load i32, i32* @CSTD_ATSC, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @pvr2_std_id_to_str(i8* %94, i32 100, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %100 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %97, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %93, %86
  %102 = load i32, i32* @PVR2_TRACE_STD, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store %struct.v4l2_standard* null, %struct.v4l2_standard** %3, align 8
  br label %211

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.v4l2_standard* @kcalloc(i32 %109, i32 4, i32 %110)
  store %struct.v4l2_standard* %111, %struct.v4l2_standard** %13, align 8
  %112 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %113 = icmp ne %struct.v4l2_standard* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  store %struct.v4l2_standard* null, %struct.v4l2_standard** %3, align 8
  br label %211

115:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %127, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %123 = load i32, i32* %7, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %122, i64 %124
  %126 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %116

130:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %168, %130
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** @std_mixes, align 8
  %134 = call i32 @ARRAY_SIZE(i32* %133)
  %135 = icmp ult i32 %132, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ult i32 %137, %138
  br label %140

140:                                              ; preds = %136, %131
  %141 = phi i1 [ false, %131 ], [ %139, %136 ]
  br i1 %141, label %142, label %171

142:                                              ; preds = %140
  %143 = load i32, i32* %5, align 4
  %144 = load i32*, i32** @std_mixes, align 8
  %145 = load i32, i32* %9, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %143, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  br label %168

152:                                              ; preds = %142
  %153 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %153, i64 %155
  %157 = load i32*, i32** @std_mixes, align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @pvr2_std_fill(%struct.v4l2_standard* %156, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %152
  %165 = load i32, i32* %7, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %164, %152
  br label %168

168:                                              ; preds = %167, %151
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %131

171:                                              ; preds = %140
  store i32 1, i32* %10, align 4
  %172 = load i32, i32* %5, align 4
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %204, %171
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ult i32 %177, %178
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i1 [ false, %173 ], [ %179, %176 ]
  br i1 %181, label %182, label %207

182:                                              ; preds = %180
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %182
  br label %204

188:                                              ; preds = %182
  %189 = load i32, i32* %10, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %11, align 4
  %193 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %194 = load i32, i32* %7, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %193, i64 %195
  %197 = load i32, i32* %10, align 4
  %198 = call i64 @pvr2_std_fill(%struct.v4l2_standard* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %188
  br label %204

201:                                              ; preds = %188
  %202 = load i32, i32* %7, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %201, %200, %187
  %205 = load i32, i32* %10, align 4
  %206 = shl i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %173

207:                                              ; preds = %180
  %208 = load i32, i32* %6, align 4
  %209 = load i32*, i32** %4, align 8
  store i32 %208, i32* %209, align 4
  %210 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  store %struct.v4l2_standard* %210, %struct.v4l2_standard** %3, align 8
  br label %211

211:                                              ; preds = %207, %114, %107
  %212 = load %struct.v4l2_standard*, %struct.v4l2_standard** %3, align 8
  ret %struct.v4l2_standard* %212
}

declare dso_local i32 @pvr2_std_id_to_str(i8*, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, ...) #1

declare dso_local i64 @match_std(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_standard* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @pvr2_std_fill(%struct.v4l2_standard*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
