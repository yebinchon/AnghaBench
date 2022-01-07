; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_intr.c_s5p_mfc_wait_for_done_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_intr.c_s5p_mfc_wait_for_done_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i64, i32 }

@S5P_MFC_R2H_CMD_ERR_RET = common dso_local global i32 0, align 4
@MFC_INT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Interrupt (ctx->int_type:%d, command:%d) timed out\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Interrupted by a signal\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Finished waiting (ctx->int_type:%d, command: %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @S5P_MFC_R2H_CMD_ERR_RET, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ true, %19 ], [ %30, %25 ]
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi i1 [ false, %11 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @MFC_INT_TIMEOUT, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @wait_event_interruptible_timeout(i32 %14, i32 %35, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %67

39:                                               ; preds = %3
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @S5P_MFC_R2H_CMD_ERR_RET, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i1 [ true, %47 ], [ %58, %53 ]
  br label %61

61:                                               ; preds = %59, %39
  %62 = phi i1 [ false, %39 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @MFC_INT_TIMEOUT, align 4
  %65 = call i32 @msecs_to_jiffies(i32 %64)
  %66 = call i32 @wait_event_timeout(i32 %42, i32 %63, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %33
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  store i32 1, i32* %4, align 4
  br label %97

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %97

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @mfc_debug(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @S5P_MFC_R2H_CMD_ERR_RET, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %97

96:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %95, %81, %70
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
