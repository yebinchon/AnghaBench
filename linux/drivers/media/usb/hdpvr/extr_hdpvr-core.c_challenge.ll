; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-core.c_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-core.c_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @challenge(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %158, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %161

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 2
  %18 = and i32 %17, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 3
  %25 = add nsw i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %14, %10
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 3
  switch i32 %30, label %157 [
    i32 3, label %31
    i32 1, label %61
    i32 0, label %81
    i32 2, label %118
  ]

31:                                               ; preds = %28
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 4
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 1
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 9
  %56 = add nsw i32 %55, 9
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %157

61:                                               ; preds = %28
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 8
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 7, %66
  %68 = add nsw i32 %67, 4
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 3
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %157

81:                                               ; preds = %28
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 3
  %91 = sub nsw i32 3, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 3
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %114, %81
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32*, i32** %2, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32*, i32** %2, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %102

117:                                              ; preds = %102
  br label %157

118:                                              ; preds = %28
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load i32*, i32** %2, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 6
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32*, i32** %2, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %119

134:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %5, align 4
  %137 = icmp slt i32 %136, 3
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = load i32*, i32** %2, align 8
  store i32* %139, i32** %3, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @le64_to_cpup(i32* %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32*, i32** %2, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 7
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 15
  %148 = shl i32 %143, %147
  %149 = add nsw i32 %142, %148
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @cpu_to_le64(i32 %150)
  %152 = load i32*, i32** %3, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %138
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %135

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %28, %156, %117, %61, %31
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %7

161:                                              ; preds = %7
  ret void
}

declare dso_local i32 @le64_to_cpup(i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
