; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_wakeup_data_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_wakeup_data_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { %struct.nvt_dev* }
%struct.nvt_dev = type { i32 }

@CIR_WAKE_FIFO_COUNT = common dso_local global i32 0, align 4
@WAKEUP_MAX_SIZE = common dso_local global i32 0, align 4
@CIR_WAKE_RD_FIFO_ONLY_IDX = common dso_local global i32 0, align 4
@CIR_WAKE_RD_FIFO_ONLY = common dso_local global i32 0, align 4
@BUF_LEN_MASK = common dso_local global i32 0, align 4
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_data_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wakeup_data_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca %struct.nvt_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.rc_dev* @to_rc_dev(%struct.device* %14)
  store %struct.rc_dev* %15, %struct.rc_dev** %7, align 8
  %16 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 0
  %18 = load %struct.nvt_dev*, %struct.nvt_dev** %17, align 8
  store %struct.nvt_dev* %18, %struct.nvt_dev** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.nvt_dev*, %struct.nvt_dev** %8, align 8
  %20 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.nvt_dev*, %struct.nvt_dev** %8, align 8
  %24 = load i32, i32* @CIR_WAKE_FIFO_COUNT, align 4
  %25 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %34, %3
  %30 = load %struct.nvt_dev*, %struct.nvt_dev** %8, align 8
  %31 = load i32, i32* @CIR_WAKE_RD_FIFO_ONLY_IDX, align 4
  %32 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.nvt_dev*, %struct.nvt_dev** %8, align 8
  %36 = load i32, i32* @CIR_WAKE_RD_FIFO_ONLY, align 4
  %37 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %35, i32 %36)
  br label %29

38:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load %struct.nvt_dev*, %struct.nvt_dev** %8, align 8
  %45 = load i32, i32* @CIR_WAKE_RD_FIFO_ONLY, align 4
  %46 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BUF_LEN_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SAMPLE_PERIOD, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load %struct.nvt_dev*, %struct.nvt_dev** %8, align 8
  %78 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %12, align 4
  ret i32 %81
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvt_cir_wake_reg_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
