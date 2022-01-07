; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.stmpe = type { i64*, i64*, i32, i32*, %struct.stmpe_variant_info* }
%struct.stmpe_variant_info = type { i32 }

@STMPE_IDX_IER_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @stmpe_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca %struct.stmpe_variant_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.stmpe* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.stmpe* %10, %struct.stmpe** %3, align 8
  %11 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %12 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %11, i32 0, i32 4
  %13 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %12, align 8
  store %struct.stmpe_variant_info* %13, %struct.stmpe_variant_info** %4, align 8
  %14 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %4, align 8
  %15 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %16, i32 8)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %61, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %24 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %31 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %61

41:                                               ; preds = %22
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %44 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %42, i64* %48, align 8
  %49 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %50 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %51 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @STMPE_IDX_IER_LSB, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @stmpe_reg_write(%struct.stmpe* %49, i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %41, %40
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %18

64:                                               ; preds = %18
  %65 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %66 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  ret void
}

declare dso_local %struct.stmpe* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
