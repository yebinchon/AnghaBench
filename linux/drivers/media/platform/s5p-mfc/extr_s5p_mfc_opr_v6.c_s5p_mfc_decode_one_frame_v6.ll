; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_decode_one_frame_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_decode_one_frame_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32 }

@cmd_host2risc = common dso_local global i32 0, align 4
@S5P_FIMV_CH_FRAME_START_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CH_LAST_FRAME_V6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported last frame arg.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Decoding a usual frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*, i32)* @s5p_mfc_decode_one_frame_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_decode_one_frame_v6(%struct.s5p_mfc_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5p_mfc_dev*, align 8
  %7 = alloca %struct.s5p_mfc_regs*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 3
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %6, align 8
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %11, i32 0, i32 1
  %13 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %12, align 8
  store %struct.s5p_mfc_regs* %13, %struct.s5p_mfc_regs** %7, align 8
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %7, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @writel(i32 %16, i32 %19)
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %7, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @writel(i32 %24, i32 %27)
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %7, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %53 [
    i32 0, label %37
    i32 1, label %45
  ]

37:                                               ; preds = %2
  %38 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @cmd_host2risc, align 4
  %42 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %43 = load i32, i32* @S5P_FIMV_CH_FRAME_START_V6, align 4
  %44 = call i32 @s5p_mfc_hw_call(i32 %40, i32 %41, %struct.s5p_mfc_dev* %42, i32 %43, i32* null)
  br label %57

45:                                               ; preds = %2
  %46 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @cmd_host2risc, align 4
  %50 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  %51 = load i32, i32* @S5P_FIMV_CH_LAST_FRAME_V6, align 4
  %52 = call i32 @s5p_mfc_hw_call(i32 %48, i32 %49, %struct.s5p_mfc_dev* %50, i32 %51, i32* null)
  br label %57

53:                                               ; preds = %2
  %54 = call i32 @mfc_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %45, %37
  %58 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
