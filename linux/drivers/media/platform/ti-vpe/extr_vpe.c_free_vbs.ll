; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_free_vbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_free_vbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32**, %struct.vpe_dev* }
%struct.vpe_dev = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @free_vbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_vbs(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  %3 = alloca %struct.vpe_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %5 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %5, i32 0, i32 1
  %7 = load %struct.vpe_dev*, %struct.vpe_dev** %6, align 8
  store %struct.vpe_dev* %7, %struct.vpe_dev** %3, align 8
  %8 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %15
  %27 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %33 = call i32 @v4l2_m2m_buf_done(i32* %31, i32 %32)
  %34 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %26
  %41 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %45, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %59 = call i32 @v4l2_m2m_buf_done(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %40, %26
  %61 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %60, %15
  %70 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %71 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
