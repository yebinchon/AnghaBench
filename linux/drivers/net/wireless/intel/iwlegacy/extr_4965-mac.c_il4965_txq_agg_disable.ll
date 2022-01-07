; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_txq_agg_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_txq_agg_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IL49_FIRST_AMPDU_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"queue number out of range: %d, must be %d to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IL49_SCD_QUEUECHAIN_SEL = common dso_local global i32 0, align 4
@IL49_SCD_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i32, i32)* @il4965_txq_agg_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_txq_agg_disable(%struct.il_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %15 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %14, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %13, %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %26 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @IL_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %87

37:                                               ; preds = %13
  %38 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @il4965_tx_queue_stop_scheduler(%struct.il_priv* %38, i32 %39)
  %41 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %42 = load i32, i32* @IL49_SCD_QUEUECHAIN_SEL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 1, %43
  %45 = call i32 @il_clear_bits_prph(%struct.il_priv* %41, i32 %42, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 255
  %48 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %47, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 255
  %58 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %57, i32* %65, align 4
  %66 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @il4965_set_wr_ptrs(%struct.il_priv* %66, i32 %67, i32 %68)
  %70 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %71 = load i32, i32* @IL49_SCD_INTERRUPT_MASK, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 1, %72
  %74 = call i32 @il_clear_bits_prph(%struct.il_priv* %70, i32 %71, i32 %73)
  %75 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @il_txq_ctx_deactivate(%struct.il_priv* %75, i32 %76)
  %78 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %79 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %80 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @il4965_tx_queue_set_status(%struct.il_priv* %78, %struct.TYPE_6__* %84, i32 %85, i32 0)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %37, %23
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @IL_WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @il4965_tx_queue_stop_scheduler(%struct.il_priv*, i32) #1

declare dso_local i32 @il_clear_bits_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il4965_set_wr_ptrs(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_txq_ctx_deactivate(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_tx_queue_set_status(%struct.il_priv*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
