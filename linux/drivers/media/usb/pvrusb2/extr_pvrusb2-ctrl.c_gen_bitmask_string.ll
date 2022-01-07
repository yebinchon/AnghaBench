; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_gen_bitmask_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_gen_bitmask_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s+0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8**, i8*, i32)* @gen_bitmask_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_bitmask_string(i32 %0, i32 %1, i32 %2, i8** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  store i64 1, i64* %14, align 8
  br label %20

20:                                               ; preds = %81, %6
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load i64, i64* %14, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %23
  %30 = load i64, i64* %14, align 8
  %31 = xor i64 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i8**, i8*** %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %19, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %75

43:                                               ; preds = %29
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %61

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %14, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  br label %61

61:                                               ; preds = %53, %52
  %62 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %52 ], [ %60, %53 ]
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %62, i8* %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %11, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sub i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %79

75:                                               ; preds = %29
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %15, align 8
  br label %79

79:                                               ; preds = %75, %61
  br label %80

80:                                               ; preds = %79, %23
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = load i64, i64* %14, align 8
  %85 = shl i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %20

86:                                               ; preds = %20
  %87 = load i64, i64* %15, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %172

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i8*, i8** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %99 = load i64, i64* %15, align 8
  %100 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %98, i64 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %171

111:                                              ; preds = %89
  %112 = load i64, i64* %15, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = and i64 %112, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %111
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %124 = load i64, i64* %15, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = and i64 %124, %126
  %128 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %118, i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %123, i64 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %11, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub i32 %134, %133
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %17, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %170

139:                                              ; preds = %111
  %140 = load i64, i64* %15, align 8
  %141 = load i32, i32* %8, align 4
  %142 = xor i32 %141, -1
  %143 = sext i32 %142 to i64
  %144 = and i64 %140, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %139
  %147 = load i8*, i8** %11, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %153 = load i64, i64* %15, align 8
  %154 = load i32, i32* %8, align 4
  %155 = xor i32 %154, -1
  %156 = sext i32 %155 to i64
  %157 = and i64 %153, %156
  %158 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %147, i32 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %152, i64 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %11, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sub i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %17, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %169

169:                                              ; preds = %146, %139
  br label %170

170:                                              ; preds = %169, %117
  br label %171

171:                                              ; preds = %170, %92
  br label %172

172:                                              ; preds = %171, %86
  %173 = load i32, i32* %17, align 4
  ret i32 %173
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
