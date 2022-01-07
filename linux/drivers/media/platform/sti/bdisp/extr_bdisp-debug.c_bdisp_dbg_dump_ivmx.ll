; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_ivmx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_dump_ivmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"IVMX0\090x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"IVMX1\090x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"IVMX2\090x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"IVMX3\090x%08X\09\00", align 1
@bdisp_rgb_to_yuv = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"RGB to YUV\0A\00", align 1
@bdisp_yuv_to_rgb = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"YUV to RGB\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unknown conversion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i64, i64, i64, i64)* @bdisp_dbg_dump_ivmx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdisp_dbg_dump_ivmx(%struct.seq_file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %36 = call i32 @seq_putc(%struct.seq_file* %35, i8 signext 10)
  br label %94

37:                                               ; preds = %31, %28, %25, %5
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** @bdisp_rgb_to_yuv, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** @bdisp_rgb_to_yuv, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = load i64*, i64** @bdisp_rgb_to_yuv, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i64, i64* %10, align 8
  %57 = load i64*, i64** @bdisp_rgb_to_yuv, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %94

64:                                               ; preds = %55, %49, %43, %37
  %65 = load i64, i64* %7, align 8
  %66 = load i64*, i64** @bdisp_yuv_to_rgb, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load i64, i64* %8, align 8
  %72 = load i64*, i64** @bdisp_yuv_to_rgb, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load i64, i64* %9, align 8
  %78 = load i64*, i64** @bdisp_yuv_to_rgb, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i64, i64* %10, align 8
  %84 = load i64*, i64** @bdisp_yuv_to_rgb, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %90 = call i32 @seq_puts(%struct.seq_file* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %94

91:                                               ; preds = %82, %76, %70, %64
  %92 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88, %61, %34
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
