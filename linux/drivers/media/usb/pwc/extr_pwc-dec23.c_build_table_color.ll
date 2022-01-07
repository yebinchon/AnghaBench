; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_build_table_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_build_table_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([8 x i32]*, [1024 x i8]*, [256 x i8]*)* @build_table_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_table_color([8 x i32]* %0, [1024 x i8]* %1, [256 x i8]* %2) #0 {
  %4 = alloca [8 x i32]*, align 8
  %5 = alloca [1024 x i8]*, align 8
  %6 = alloca [256 x i8]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store [8 x i32]* %0, [8 x i32]** %4, align 8
  store [1024 x i8]* %1, [1024 x i8]** %5, align 8
  store [256 x i8]* %2, [256 x i8]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %219, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %222

18:                                               ; preds = %15
  %19 = load [1024 x i8]*, [1024 x i8]** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 %21
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  store i8* %23, i8** %12, align 8
  %24 = load [256 x i8]*, [256 x i8]** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 %26
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  store i8* %28, i8** %13, align 8
  %29 = load [8 x i32]*, [8 x i32]** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 %31
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i64 0, i64 0
  store i32* %33, i32** %14, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %211, %18
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %218

37:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %207, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %210

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %115

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, 15
  %56 = and i32 %55, 7
  store i32 %56, i32* %10, align 4
  br label %114

57:                                               ; preds = %48, %45
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 3
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = lshr i32 %66, 12
  %68 = and i32 %67, 7
  store i32 %68, i32* %10, align 4
  br label %113

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %9, align 4
  %71 = icmp sge i32 %70, 6
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 10
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = lshr i32 %78, 9
  %80 = and i32 %79, 7
  store i32 %80, i32* %10, align 4
  br label %112

81:                                               ; preds = %72, %69
  %82 = load i32, i32* %9, align 4
  %83 = icmp sge i32 %82, 10
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 13
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = lshr i32 %90, 6
  %92 = and i32 %91, 7
  store i32 %92, i32* %10, align 4
  br label %111

93:                                               ; preds = %84, %81
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 13
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 15
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = lshr i32 %102, 3
  %104 = and i32 %103, 7
  store i32 %104, i32* %10, align 4
  br label %110

105:                                              ; preds = %96, %93
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 7
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110, %87
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %63
  br label %114

114:                                              ; preds = %113, %51
  br label %115

115:                                              ; preds = %114, %44
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %13, align 8
  store i8 8, i8* %119, align 1
  br label %128

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %13, align 8
  store i8 %125, i8* %126, align 1
  br label %128

128:                                              ; preds = %121, %118
  %129 = load i32, i32* %10, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %13, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %13, align 8
  store i8 %130, i8* %131, align 1
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 1, %133
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 1, %135
  %137 = add nsw i32 %136, 128
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 0
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 %138, i8* %143, align 1
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %145, 128
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %12, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 16
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 %147, i8* %152, align 1
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 3, %153
  %155 = add nsw i32 %154, 128
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %12, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 32
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 %156, i8* %161, align 1
  %162 = load i32, i32* %11, align 4
  %163 = mul nsw i32 4, %162
  %164 = add nsw i32 %163, 128
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %12, align 8
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 48
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  store i8 %165, i8* %170, align 1
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 -1, %171
  %173 = add nsw i32 %172, 128
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %12, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 64
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 %174, i8* %179, align 1
  %180 = load i32, i32* %11, align 4
  %181 = mul nsw i32 -2, %180
  %182 = add nsw i32 %181, 128
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %12, align 8
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 80
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  store i8 %183, i8* %188, align 1
  %189 = load i32, i32* %11, align 4
  %190 = mul nsw i32 -3, %189
  %191 = add nsw i32 %190, 128
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %12, align 8
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 96
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 %192, i8* %197, align 1
  %198 = load i32, i32* %11, align 4
  %199 = mul nsw i32 -4, %198
  %200 = add nsw i32 %199, 128
  %201 = trunc i32 %200 to i8
  %202 = load i8*, i8** %12, align 8
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 112
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 %201, i8* %206, align 1
  br label %207

207:                                              ; preds = %128
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %38

210:                                              ; preds = %38
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  %214 = load i32*, i32** %14, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %14, align 8
  %216 = load i8*, i8** %12, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 128
  store i8* %217, i8** %12, align 8
  br label %34

218:                                              ; preds = %34
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %15

222:                                              ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
