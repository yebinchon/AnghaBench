; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_convert_ivtv_vbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_convert_ivtv_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"itv0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ITV0\00", align 1
@V4L2_SLICED_TELETEXT_B = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_VPS = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32*)* @ivtv_convert_ivtv_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_convert_ivtv_vbi(%struct.ivtv* %0, i32* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @memcmp(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = call i32 @memcpy(i32* %15, i32* %17, i32 8)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 12
  store i32* %20, i32** %4, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @memcmp(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 15, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %4, align 8
  br label %33

30:                                               ; preds = %21
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %14
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %151, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 36
  br i1 %37, label %38, label %154

38:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %151

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %6, align 4
  %51 = icmp sge i32 %50, 32
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 32
  %57 = shl i32 1, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %151

61:                                               ; preds = %52, %49
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %89 [
    i32 130, label %66
    i32 131, label %68
    i32 129, label %85
    i32 128, label %87
  ]

66:                                               ; preds = %61
  %67 = load i32, i32* @V4L2_SLICED_TELETEXT_B, align 4
  store i32 %67, i32* %8, align 4
  br label %90

68:                                               ; preds = %61
  %69 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @odd_parity(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @odd_parity(i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %75, %68
  %83 = phi i1 [ true, %68 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %90

85:                                               ; preds = %61
  %86 = load i32, i32* @V4L2_SLICED_VPS, align 4
  store i32 %86, i32* %8, align 4
  br label %90

87:                                               ; preds = %61
  %88 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  store i32 %88, i32* %8, align 4
  br label %90

89:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %87, %85, %82, %66
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %148

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 18
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 6
  br label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 18
  %102 = add nsw i32 %101, 6
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i32 [ %98, %96 ], [ %102, %99 ]
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %107 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %105, i32* %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = icmp sge i32 %114, 18
  %116 = zext i1 %115 to i32
  %117 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %118 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %116, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %127 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32 %125, i32* %133, align 8
  %134 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %135 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = call i32 @memcpy(i32* %142, i32* %144, i32 42)
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %103, %90
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 43
  store i32* %150, i32** %4, align 8
  br label %151

151:                                              ; preds = %148, %60, %48
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %35

154:                                              ; preds = %35
  br label %155

155:                                              ; preds = %158, %154
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %156, 36
  br i1 %157, label %158, label %185

158:                                              ; preds = %155
  %159 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %160 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  store i32 0, i32* %166, align 8
  %167 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %168 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %176 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %155

185:                                              ; preds = %155
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 24
  %189 = trunc i64 %188 to i32
  ret i32 %189
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @odd_parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
