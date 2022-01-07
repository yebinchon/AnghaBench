; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_txq_attach_buf_to_tfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_txq_attach_buf_to_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_tx_queue = type { i64, %struct.il_queue }
%struct.il_queue = type { i64 }
%struct.il3945_tfd = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@NUM_TFD_CHUNKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error can not send more than %d chunks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_hw_txq_attach_buf_to_tfd(%struct.il_priv* %0, %struct.il_tx_queue* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.il_tx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.il_queue*, align 8
  %16 = alloca %struct.il3945_tfd*, align 8
  %17 = alloca %struct.il3945_tfd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store %struct.il_tx_queue* %1, %struct.il_tx_queue** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %19 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %18, i32 0, i32 1
  store %struct.il_queue* %19, %struct.il_queue** %15, align 8
  %20 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %21 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.il3945_tfd*
  store %struct.il3945_tfd* %23, %struct.il3945_tfd** %17, align 8
  %24 = load %struct.il3945_tfd*, %struct.il3945_tfd** %17, align 8
  %25 = load %struct.il_queue*, %struct.il_queue** %15, align 8
  %26 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %24, i64 %27
  store %struct.il3945_tfd* %28, %struct.il3945_tfd** %16, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load %struct.il3945_tfd*, %struct.il3945_tfd** %16, align 8
  %33 = call i32 @memset(%struct.il3945_tfd* %32, i32 0, i32 16)
  br label %34

34:                                               ; preds = %31, %6
  %35 = load %struct.il3945_tfd*, %struct.il3945_tfd** %16, align 8
  %36 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @le32_to_cpu(i8* %37)
  %39 = call i32 @TFD_CTL_COUNT_GET(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @NUM_TFD_CHUNKS, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43, %34
  %47 = load i32, i32* @NUM_TFD_CHUNKS, align 4
  %48 = call i32 @IL_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %80

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.il3945_tfd*, %struct.il3945_tfd** %16, align 8
  %55 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* %53, i8** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.il3945_tfd*, %struct.il3945_tfd** %16, align 8
  %64 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %62, i8** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @TFD_CTL_COUNT_SET(i32 %72)
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @TFD_CTL_PAD_SET(i64 %74)
  %76 = or i32 %73, %75
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.il3945_tfd*, %struct.il3945_tfd** %16, align 8
  %79 = getelementptr inbounds %struct.il3945_tfd, %struct.il3945_tfd* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %51, %46
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.il3945_tfd*, i32, i32) #1

declare dso_local i32 @TFD_CTL_COUNT_GET(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TFD_CTL_COUNT_SET(i32) #1

declare dso_local i32 @TFD_CTL_PAD_SET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
