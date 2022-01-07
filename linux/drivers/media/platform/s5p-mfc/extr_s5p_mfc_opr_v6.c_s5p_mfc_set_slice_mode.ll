; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_slice_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_slice_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, %struct.TYPE_2__, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32 }

@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB = common dso_local global i64 0, align 8
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_slice_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_slice_mode(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %5 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %5, i32 0, i32 2
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  store %struct.s5p_mfc_dev* %7, %struct.s5p_mfc_dev** %3, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 0
  %10 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %9, align 8
  store %struct.s5p_mfc_regs* %10, %struct.s5p_mfc_regs** %4, align 8
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @writel(i32 %13, i32 %16)
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel(i32 %28, i32 %31)
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @writel(i32 %44, i32 %47)
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @writel(i32 0, i32 %52)
  %54 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @writel(i32 0, i32 %56)
  br label %58

58:                                               ; preds = %49, %40
  br label %59

59:                                               ; preds = %58, %24
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
