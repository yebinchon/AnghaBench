; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_fixup_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_fixup_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner = type { i32 }

@pal = common dso_local global i8* null, align 8
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pal= argument not recognised\0A\00", align 1
@secam = common dso_local global i8* null, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_B = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_G = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_H = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"secam= argument not recognised\0A\00", align 1
@ntsc = common dso_local global i8* null, align 8
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ntsc= argument not recognised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuner*, i32)* @tuner_fixup_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_fixup_std(%struct.tuner* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tuner*, align 8
  %5 = alloca i32, align 4
  store %struct.tuner* %0, %struct.tuner** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** @pal, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 45
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @V4L2_STD_PAL, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @V4L2_STD_PAL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load i8*, i8** @pal, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %48 [
    i32 54, label %22
    i32 98, label %24
    i32 66, label %24
    i32 103, label %24
    i32 71, label %24
    i32 105, label %26
    i32 73, label %26
    i32 100, label %28
    i32 68, label %28
    i32 107, label %28
    i32 75, label %28
    i32 77, label %30
    i32 109, label %30
    i32 78, label %32
    i32 110, label %32
  ]

22:                                               ; preds = %17
  %23 = load i32, i32* @V4L2_STD_PAL_60, align 4
  store i32 %23, i32* %3, align 4
  br label %123

24:                                               ; preds = %17, %17, %17, %17
  %25 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  store i32 %25, i32* %3, align 4
  br label %123

26:                                               ; preds = %17, %17
  %27 = load i32, i32* @V4L2_STD_PAL_I, align 4
  store i32 %27, i32* %3, align 4
  br label %123

28:                                               ; preds = %17, %17, %17, %17
  %29 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  store i32 %29, i32* %3, align 4
  br label %123

30:                                               ; preds = %17, %17
  %31 = load i32, i32* @V4L2_STD_PAL_M, align 4
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %17, %17
  %33 = load i8*, i8** @pal, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 99
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** @pal, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 67
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  store i32 %45, i32* %3, align 4
  br label %123

46:                                               ; preds = %38
  %47 = load i32, i32* @V4L2_STD_PAL_N, align 4
  store i32 %47, i32* %3, align 4
  br label %123

48:                                               ; preds = %17
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %11, %2
  %52 = load i8*, i8** @secam, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 45
  br i1 %56, label %57, label %95

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @V4L2_STD_SECAM, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @V4L2_STD_SECAM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = load i8*, i8** @secam, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %92 [
    i32 98, label %68
    i32 66, label %68
    i32 103, label %68
    i32 71, label %68
    i32 104, label %68
    i32 72, label %68
    i32 100, label %74
    i32 68, label %74
    i32 107, label %74
    i32 75, label %74
    i32 108, label %76
    i32 76, label %76
  ]

68:                                               ; preds = %63, %63, %63, %63, %63, %63
  %69 = load i32, i32* @V4L2_STD_SECAM_B, align 4
  %70 = load i32, i32* @V4L2_STD_SECAM_G, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @V4L2_STD_SECAM_H, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %3, align 4
  br label %123

74:                                               ; preds = %63, %63, %63, %63
  %75 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  store i32 %75, i32* %3, align 4
  br label %123

76:                                               ; preds = %63, %63
  %77 = load i8*, i8** @secam, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 67
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** @secam, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 99
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %76
  %89 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  store i32 %89, i32* %3, align 4
  br label %123

90:                                               ; preds = %82
  %91 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  store i32 %91, i32* %3, align 4
  br label %123

92:                                               ; preds = %63
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %57, %51
  %96 = load i8*, i8** @ntsc, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 45
  br i1 %100, label %101, label %121

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @V4L2_STD_NTSC, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @V4L2_STD_NTSC, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load i8*, i8** @ntsc, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  switch i32 %111, label %118 [
    i32 109, label %112
    i32 77, label %112
    i32 106, label %114
    i32 74, label %114
    i32 107, label %116
    i32 75, label %116
  ]

112:                                              ; preds = %107, %107
  %113 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  store i32 %113, i32* %3, align 4
  br label %123

114:                                              ; preds = %107, %107
  %115 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  store i32 %115, i32* %3, align 4
  br label %123

116:                                              ; preds = %107, %107
  %117 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  store i32 %117, i32* %3, align 4
  br label %123

118:                                              ; preds = %107
  %119 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120, %101, %95
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %116, %114, %112, %90, %88, %74, %68, %46, %44, %30, %28, %26, %24, %22
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
