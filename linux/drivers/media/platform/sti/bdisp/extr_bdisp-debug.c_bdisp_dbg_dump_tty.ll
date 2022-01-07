; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"TTY\090x%08X\09\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Pitch=%d - \00", align 1
@BLT_TTY_COL_MASK = common dso_local global i32 0, align 4
@BLT_TTY_COL_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"RGB565 - \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RGB888 - \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"xRGB888 - \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ARGB8888 - \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"NV12 - \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"YUV420P - \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ColorFormat ??? - \00", align 1
@BLT_TTY_ALPHA_R = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"AlphaRange - \00", align 1
@BLT_TTY_CR_NOT_CB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"CrNotCb - \00", align 1
@BLT_TTY_MB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"MB - \00", align 1
@BLT_TTY_HSO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"HSO inverse - \00", align 1
@BLT_TTY_VSO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"VSO inverse - \00", align 1
@BLT_TTY_DITHER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"Dither - \00", align 1
@BLT_TTY_CHROMA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"Write CHROMA - \00", align 1
@BLT_TTY_BIG_END = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"BigEndian - \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @bdisp_dbg_dump_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdisp_dbg_dump_tty(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 65535
  %11 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BLT_TTY_COL_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %16 = ashr i32 %14, %15
  switch i32 %16, label %35 [
    i32 131, label %17
    i32 130, label %20
    i32 129, label %23
    i32 133, label %26
    i32 132, label %29
    i32 128, label %32
  ]

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = call i32 @seq_puts(%struct.seq_file* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 @seq_puts(%struct.seq_file* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32, %29, %26, %23, %20, %17
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BLT_TTY_ALPHA_R, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @BLT_TTY_CR_NOT_CB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = call i32 @seq_puts(%struct.seq_file* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @BLT_TTY_MB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = call i32 @seq_puts(%struct.seq_file* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BLT_TTY_HSO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @BLT_TTY_VSO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_puts(%struct.seq_file* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BLT_TTY_DITHER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = call i32 @seq_puts(%struct.seq_file* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @BLT_TTY_CHROMA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @BLT_TTY_BIG_END, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = call i32 @seq_puts(%struct.seq_file* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = call i32 @seq_putc(%struct.seq_file* %103, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
