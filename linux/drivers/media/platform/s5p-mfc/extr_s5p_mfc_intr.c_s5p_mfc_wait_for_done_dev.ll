; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_intr.c_s5p_mfc_wait_for_done_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_intr.c_s5p_mfc_wait_for_done_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i64, i32 }

@S5P_MFC_R2H_CMD_ERR_RET = common dso_local global i32 0, align 4
@MFC_INT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Interrupt (dev->int_type:%d, command:%d) timed out\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Interrupted by a signal\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Finished waiting (dev->int_type:%d, command: %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @S5P_MFC_R2H_CMD_ERR_RET, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ true, %14 ], [ %25, %20 ]
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i1 [ false, %2 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @MFC_INT_TIMEOUT, align 4
  %32 = call i32 @msecs_to_jiffies(i32 %31)
  %33 = call i32 @wait_event_interruptible_timeout(i32 %9, i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  store i32 1, i32* %3, align 4
  br label %63

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %63

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mfc_debug(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @S5P_MFC_R2H_CMD_ERR_RET, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %63

62:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %47, %36
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
