; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-controls.c_ivtv_g_pts_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-controls.c_ivtv_g_pts_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32*, i32, i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@IVTV_F_I_VALID_DEC_TIMINGS = common dso_local global i32 0, align 4
@CX2341X_DEC_GET_TIMING_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GET_TIMING: couldn't read clock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_g_pts_frame(%struct.ivtv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @IVTV_F_I_VALID_DEC_TIMINGS, align 4
  %16 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 32
  %27 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %76

40:                                               ; preds = %3
  %41 = load i32*, i32** %6, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 2
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %40
  %48 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %49 = load i32, i32* @CX2341X_DEC_GET_TIMING_INFO, align 4
  %50 = call i64 @ivtv_api(%struct.ivtv* %48, i32 %49, i32 5, i32* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %76

56:                                               ; preds = %47
  %57 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @memcpy(i32* %59, i32* %14, i32 8)
  %61 = load i32, i32* @IVTV_F_I_VALID_DEC_TIMINGS, align 4
  %62 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 1
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  %65 = getelementptr inbounds i32, i32* %14, i64 2
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 32
  %68 = getelementptr inbounds i32, i32* %14, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds i32, i32* %14, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %56, %40
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %52, %20
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @ivtv_api(%struct.ivtv*, i32, i32, i32*) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
