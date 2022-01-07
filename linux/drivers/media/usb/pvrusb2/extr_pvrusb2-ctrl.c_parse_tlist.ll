; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_parse_tlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_parse_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i8**, i32)* @parse_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tlist(i8* %0, i32 %1, i32* %2, i32* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %148, %6
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %149

22:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 32
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 127
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi i1 [ true, %27 ], [ %42, %35 ]
  br label %45

45:                                               ; preds = %43, %23
  %46 = phi i1 [ false, %23 ], [ %44, %43 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %23

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %17, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 43
  br i1 %66, label %67, label %78

67:                                               ; preds = %62, %50
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 1
  store i32 %73, i32* %17, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %67, %62
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %101, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 32
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %104

92:                                               ; preds = %83
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sge i32 %98, 127
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %79

104:                                              ; preds = %100, %91, %79
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %149

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i8**, i8*** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @parse_mtoken(i8* %109, i32 %110, i32* %16, i8** %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %18, align 4
  br label %149

118:                                              ; preds = %108
  %119 = load i32, i32* %13, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %17, align 4
  switch i32 %126, label %147 [
    i32 0, label %127
    i32 -1, label %132
    i32 1, label %140
  ]

127:                                              ; preds = %118
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %15, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %15, align 4
  br label %148

132:                                              ; preds = %118
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %16, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %15, align 4
  br label %148

140:                                              ; preds = %118
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %15, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %15, align 4
  br label %148

147:                                              ; preds = %118
  br label %148

148:                                              ; preds = %147, %140, %132, %127
  br label %19

149:                                              ; preds = %115, %107, %19
  %150 = load i32, i32* %14, align 4
  %151 = load i32*, i32** %9, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32*, i32** %10, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %18, align 4
  ret i32 %154
}

declare dso_local i64 @parse_mtoken(i8*, i32, i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
