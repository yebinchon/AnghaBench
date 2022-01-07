; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32 }
%struct.s5p_mfc_ctx = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Interrupt Error: %08x\0A\00", align 1
@MFCINST_ERROR = common dso_local global i8* null, align 8
@clear_int_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*, i32, i32)* @s5p_mfc_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_handle_error(%struct.s5p_mfc_dev* %0, %struct.s5p_mfc_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca %struct.s5p_mfc_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %5, align 8
  store %struct.s5p_mfc_ctx* %1, %struct.s5p_mfc_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mfc_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %12 = icmp ne %struct.s5p_mfc_ctx* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %4
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %38 [
    i32 129, label %17
    i32 130, label %17
    i32 131, label %17
    i32 132, label %17
    i32 133, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %19 = call i32 @clear_work_bit(%struct.s5p_mfc_ctx* %18)
  %20 = load i8*, i8** @MFCINST_ERROR, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 4
  %26 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %26, i32 0, i32 3
  %28 = call i32 @s5p_mfc_cleanup_queue(i32* %25, i32* %27)
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %29, i32 0, i32 2
  %31 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %31, i32 0, i32 1
  %33 = call i32 @s5p_mfc_cleanup_queue(i32* %30, i32* %32)
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wake_up_ctx(%struct.s5p_mfc_ctx* %34, i32 %35, i32 %36)
  br label %49

38:                                               ; preds = %13
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %40 = call i32 @clear_work_bit(%struct.s5p_mfc_ctx* %39)
  %41 = load i8*, i8** @MFCINST_ERROR, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wake_up_ctx(%struct.s5p_mfc_ctx* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %17
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %51, i32 0, i32 1
  %53 = call i64 @test_and_clear_bit(i32 0, i32* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @clear_int_flags, align 4
  %61 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %62 = call i32 @s5p_mfc_hw_call(i32 %59, i32 %60, %struct.s5p_mfc_dev* %61)
  %63 = call i32 (...) @s5p_mfc_clock_off()
  %64 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @wake_up_dev(%struct.s5p_mfc_dev* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @mfc_err(i8*, i32) #1

declare dso_local i32 @clear_work_bit(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_cleanup_queue(i32*, i32*) #1

declare dso_local i32 @wake_up_ctx(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

declare dso_local i32 @wake_up_dev(%struct.s5p_mfc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
