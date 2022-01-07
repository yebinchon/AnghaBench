; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_copy_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_copy_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i32, i64 }

@S5P_CEC_TX_BUFF0 = common dso_local global i64 0, align 8
@S5P_CEC_TX_BYTES = common dso_local global i64 0, align 8
@S5P_CEC_TX_CTRL = common dso_local global i64 0, align 8
@S5P_CEC_TX_CTRL_START = common dso_local global i32 0, align 4
@CEC_MESSAGE_BROADCAST_MASK = common dso_local global i8 0, align 1
@CEC_MESSAGE_BROADCAST = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [10 x i8] c"Broadcast\00", align 1
@S5P_CEC_TX_CTRL_BCAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"No Broadcast\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cec-tx: cec count (%zu): %*ph\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_cec_copy_packet(%struct.s5p_cec_dev* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.s5p_cec_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %16, %4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %24 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @S5P_CEC_TX_BUFF0, align 8
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = add nsw i64 %25, %30
  %32 = call i32 @writeb(i32 %22, i64 %31)
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S5P_CEC_TX_BYTES, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writeb(i32 %37, i64 %42)
  %44 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %45 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @S5P_CEC_TX_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readb(i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @S5P_CEC_TX_CTRL_START, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, -113
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @CEC_MESSAGE_BROADCAST_MASK, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = load i8, i8* @CEC_MESSAGE_BROADCAST, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %35
  %70 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %71 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @S5P_CEC_TX_CTRL_BCAST, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %86

77:                                               ; preds = %35
  %78 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %79 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @S5P_CEC_TX_CTRL_BCAST, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %77, %69
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %89 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @S5P_CEC_TX_CTRL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writeb(i32 %87, i64 %92)
  %94 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %95 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %97, i32 %99, i8* %100)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
