; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_dec_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_dec_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.s5p_mfc_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid control 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5p_mfc_dec_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_dec_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = call %struct.s5p_mfc_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %5)
  store %struct.s5p_mfc_ctx* %6, %struct.s5p_mfc_ctx** %4, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %34 [
    i32 131, label %10
    i32 130, label %16
    i32 129, label %22
    i32 128, label %28
  ]

10:                                               ; preds = %1
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %41

28:                                               ; preds = %1
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mfc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %28, %22, %16, %10
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.s5p_mfc_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @mfc_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
