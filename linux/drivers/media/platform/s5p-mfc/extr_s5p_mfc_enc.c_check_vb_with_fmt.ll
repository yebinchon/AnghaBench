; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_check_vb_with_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_check_vb_with_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_fmt = type { i32 }
%struct.vb2_buffer = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid plane number for the format\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get plane cookie\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"index: %d, plane[%d] cookie: %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_fmt*, %struct.vb2_buffer*)* @check_vb_with_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_vb_with_fmt(%struct.s5p_mfc_fmt* %0, %struct.vb2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_mfc_fmt*, align 8
  %5 = alloca %struct.vb2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_fmt* %0, %struct.s5p_mfc_fmt** %4, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %5, align 8
  %8 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %4, align 8
  %9 = icmp ne %struct.s5p_mfc_fmt* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %4, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = call i32 @mfc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46, i32* %7)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %38, %21, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
