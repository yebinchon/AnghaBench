; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_go7007_construct_fw_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_go7007_construct_fw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32 }
%struct.firmware = type { i32, i64 }

@FLAG_MODE_MJPEG = common dso_local global i32 0, align 4
@FLAG_MODE_MPEG1 = common dso_local global i32 0, align 4
@FLAG_MODE_MPEG2 = common dso_local global i32 0, align 4
@FLAG_MODE_MPEG4 = common dso_local global i32 0, align 4
@GO7007_FW_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to load firmware from file \22%s\22\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"firmware file \22%s\22 appears to be corrupted\0A\00", align 1
@FLAG_SPECIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"insufficient memory for firmware construction\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_construct_fw_image(%struct.go7007* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 32, i1 false)
  store i32 65536, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.go7007*, %struct.go7007** %5, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 131, label %23
    i32 130, label %25
    i32 129, label %27
    i32 128, label %29
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* @FLAG_MODE_MJPEG, align 4
  store i32 %24, i32* %17, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @FLAG_MODE_MPEG1, align 4
  store i32 %26, i32* %17, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @FLAG_MODE_MPEG2, align 4
  store i32 %28, i32* %17, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @FLAG_MODE_MPEG4, align 4
  store i32 %30, i32* %17, align 4
  br label %32

31:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %167

32:                                               ; preds = %29, %27, %25, %23
  %33 = load i32, i32* @GO7007_FW_NAME, align 4
  %34 = load %struct.go7007*, %struct.go7007** %5, align 8
  %35 = getelementptr inbounds %struct.go7007, %struct.go7007* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @request_firmware(%struct.firmware** %8, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.go7007*, %struct.go7007** %5, align 8
  %41 = getelementptr inbounds %struct.go7007, %struct.go7007* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GO7007_FW_NAME, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %4, align 4
  br label %167

45:                                               ; preds = %32
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kcalloc(i32 %46, i32 2, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %162

52:                                               ; preds = %45
  %53 = load %struct.firmware*, %struct.firmware** %8, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %10, align 8
  %57 = load %struct.firmware*, %struct.firmware** %8, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %144, %52
  %62 = load i32, i32* %14, align 4
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %154

64:                                               ; preds = %61
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__le16_to_cpu(i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__le16_to_cpu(i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 2
  %75 = load i32, i32* %14, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load %struct.go7007*, %struct.go7007** %5, align 8
  %79 = getelementptr inbounds %struct.go7007, %struct.go7007* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GO7007_FW_NAME, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %162

83:                                               ; preds = %64
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %83
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @FLAG_SPECIAL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.go7007*, %struct.go7007** %5, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @__le16_to_cpu(i32 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %103, %104
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %107 = call i32 @do_special(%struct.go7007* %94, i32 %98, i32* %102, i32 %105, i32* %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %93
  %111 = load %struct.go7007*, %struct.go7007** %5, align 8
  %112 = getelementptr inbounds %struct.go7007, %struct.go7007* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %162

115:                                              ; preds = %93
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %143

119:                                              ; preds = %88
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.go7007*, %struct.go7007** %5, align 8
  %127 = getelementptr inbounds %struct.go7007, %struct.go7007* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %162

130:                                              ; preds = %119
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %15, align 4
  %138 = mul nsw i32 %137, 2
  %139 = call i32 @memcpy(i32* %134, i32* %136, i32 %138)
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %130, %115
  br label %144

144:                                              ; preds = %143, %83
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 2
  %147 = load i32, i32* %14, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 2
  %151 = load i32*, i32** %10, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %10, align 8
  br label %61

154:                                              ; preds = %61
  %155 = load %struct.firmware*, %struct.firmware** %8, align 8
  %156 = call i32 @release_firmware(%struct.firmware* %155)
  %157 = load i32*, i32** %9, align 8
  %158 = load i32**, i32*** %6, align 8
  store i32* %157, i32** %158, align 8
  %159 = load i32, i32* %13, align 4
  %160 = mul nsw i32 %159, 2
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %4, align 4
  br label %167

162:                                              ; preds = %125, %110, %77, %51
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @kfree(i32* %163)
  %165 = load %struct.firmware*, %struct.firmware** %8, align 8
  %166 = call i32 @release_firmware(%struct.firmware* %165)
  store i32 -1, i32* %4, align 4
  br label %167

167:                                              ; preds = %162, %154, %39, %31
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @__le16_to_cpu(i32) #2

declare dso_local i32 @do_special(%struct.go7007*, i32, i32*, i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
