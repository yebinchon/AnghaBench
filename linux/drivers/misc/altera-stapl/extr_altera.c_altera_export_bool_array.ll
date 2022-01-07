; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera.c_altera_export_bool_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera.c_altera_export_bool_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX_LINE_CHARS = common dso_local global i32 0, align 4
@HEX_LINE_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Export: key = \22%s\22, %d bits, value = HEX\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%1x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Export: key = \22%s\22, %d bits, value = HEX %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @altera_export_bool_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_export_bool_array(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @HEX_LINE_CHARS, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @HEX_LINE_BITS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %3
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HEX_LINE_BITS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add nsw i32 %30, %32
  %34 = load i32, i32* @HEX_LINE_BITS, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %123, %26
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %126

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @HEX_LINE_BITS, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @HEX_LINE_CHARS, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @HEX_LINE_BITS, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %48, %52
  store i32 %53, i32* %10, align 4
  br label %64

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @HEX_LINE_BITS, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sub nsw i32 %55, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 3
  %63 = sdiv i32 %62, 4
  store i32 %63, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %54, %45
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %22, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %108, %64
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 7
  %86 = shl i32 1, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %74
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 3
  %92 = shl i32 1, %91
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %89, %74
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 3
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %22, i64 %101
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @sprintf(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 0, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %99, %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %70

111:                                              ; preds = %70
  %112 = load i32, i32* %17, align 4
  %113 = and i32 %112, 3
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %22, i64 %117
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @sprintf(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115, %111
  %122 = call i32 (i8*, i8*, ...) @dprintk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %36

126:                                              ; preds = %36
  br label %188

127:                                              ; preds = %3
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 3
  %130 = sdiv i32 %129, 4
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %22, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %171, %127
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = ashr i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %147, 7
  %149 = shl i32 1, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %140
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, 3
  %155 = shl i32 1, %154
  %156 = load i32, i32* %15, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %152, %140
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 3
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %22, i64 %164
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @sprintf(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  store i32 0, i32* %15, align 4
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %162, %158
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %136

174:                                              ; preds = %136
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %175, 3
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %22, i64 %180
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @sprintf(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %178, %174
  %185 = load i8*, i8** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 (i8*, i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %185, i32 %186, i8* %22)
  br label %188

188:                                              ; preds = %184, %126
  %189 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %189)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dprintk(i8*, i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
