; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera.c_altera_get_note.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera.c_altera_get_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i8*, i8*, i32)* @altera_get_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_get_note(i8* %0, i64 %1, i64* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* @ENODATA, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = load i64, i64* %9, align 8
  %27 = icmp sgt i64 %26, 52
  br i1 %27, label %28, label %56

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = call i64 @get_unaligned_be32(i8* %30)
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %18, align 8
  %33 = and i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = mul nsw i32 %35, 8
  store i32 %36, i32* %20, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %20, align 4
  %39 = add nsw i32 8, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = call i64 @get_unaligned_be32(i8* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %20, align 4
  %45 = add nsw i32 12, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = call i64 @get_unaligned_be32(i8* %47)
  store i64 %48, i64* %16, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %20, align 4
  %51 = mul nsw i32 2, %50
  %52 = add nsw i32 44, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = call i64 @get_unaligned_be32(i8* %54)
  store i64 %55, i64* %17, align 8
  br label %56

56:                                               ; preds = %28, %6
  %57 = load i64, i64* %18, align 8
  %58 = icmp ne i64 %57, 1245793536
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %60, 1245793537
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %191

65:                                               ; preds = %59, %56
  %66 = load i64, i64* %17, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %191

70:                                               ; preds = %65
  %71 = load i64*, i64** %10, align 8
  %72 = icmp eq i64* %71, null
  br i1 %72, label %73, label %133

73:                                               ; preds = %70
  store i32 0, i32* %23, align 4
  br label %74

74:                                               ; preds = %129, %73
  %75 = load i32, i32* %23, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %17, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i1 [ false, %74 ], [ %81, %79 ]
  br i1 %83, label %84, label %132

84:                                               ; preds = %82
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i32, i32* %23, align 4
  %90 = mul nsw i32 8, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  %94 = call i64 @get_unaligned_be32(i8* %93)
  %95 = add nsw i64 %86, %94
  %96 = getelementptr inbounds i8, i8* %85, i64 %95
  store i8* %96, i8** %21, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %128

99:                                               ; preds = %84
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = load i8*, i8** %21, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = call i32 @strncasecmp(i8* %100, i8* %101, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %99
  store i32 0, i32* %14, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i32, i32* %23, align 4
  %112 = mul nsw i32 8, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %110, %113
  %115 = add nsw i64 %114, 4
  %116 = getelementptr inbounds i8, i8* %109, i64 %115
  %117 = call i64 @get_unaligned_be32(i8* %116)
  %118 = add nsw i64 %108, %117
  %119 = getelementptr inbounds i8, i8* %107, i64 %118
  store i8* %119, i8** %22, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %106
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %22, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @strlcpy(i8* %123, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %106
  br label %128

128:                                              ; preds = %127, %99, %84
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %23, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %23, align 4
  br label %74

132:                                              ; preds = %82
  br label %189

133:                                              ; preds = %70
  %134 = load i64*, i64** %10, align 8
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %188

139:                                              ; preds = %133
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %17, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %188

144:                                              ; preds = %139
  store i32 0, i32* %14, align 4
  %145 = load i8*, i8** %11, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load i8*, i8** %11, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i32, i32* %23, align 4
  %154 = mul nsw i32 8, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %152, %155
  %157 = getelementptr inbounds i8, i8* %151, i64 %156
  %158 = call i64 @get_unaligned_be32(i8* %157)
  %159 = add nsw i64 %150, %158
  %160 = getelementptr inbounds i8, i8* %149, i64 %159
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @strlcpy(i8* %148, i8* %160, i32 %161)
  br label %163

163:                                              ; preds = %147, %144
  %164 = load i8*, i8** %12, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i64, i64* %16, align 8
  %172 = load i32, i32* %23, align 4
  %173 = mul nsw i32 8, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %171, %174
  %176 = add nsw i64 %175, 4
  %177 = getelementptr inbounds i8, i8* %170, i64 %176
  %178 = call i64 @get_unaligned_be32(i8* %177)
  %179 = add nsw i64 %169, %178
  %180 = getelementptr inbounds i8, i8* %168, i64 %179
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @strlcpy(i8* %167, i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %166, %163
  %184 = load i32, i32* %23, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** %10, align 8
  store i64 %186, i64* %187, align 8
  br label %188

188:                                              ; preds = %183, %139, %133
  br label %189

189:                                              ; preds = %188, %132
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %189, %68, %62
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i64 @get_unaligned_be32(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
