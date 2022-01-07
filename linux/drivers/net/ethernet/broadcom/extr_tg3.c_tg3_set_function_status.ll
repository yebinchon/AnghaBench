; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_set_function_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_set_function_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ASIC_REV_5717 = common dso_local global i64 0, align 8
@ASIC_REV_5719 = common dso_local global i64 0, align 8
@TG3_APE_GPIO_MSG = common dso_local global i32 0, align 4
@TG3_CPMU_DRV_STATUS = common dso_local global i32 0, align 4
@TG3_APE_GPIO_MSG_SHIFT = common dso_local global i32 0, align 4
@TG3_GPIO_MSG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_set_function_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_set_function_status(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = call i64 @tg3_asic_rev(%struct.tg3* %7)
  %9 = load i64, i64* @ASIC_REV_5717, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = call i64 @tg3_asic_rev(%struct.tg3* %12)
  %14 = load i64, i64* @ASIC_REV_5719, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %2
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = load i32, i32* @TG3_APE_GPIO_MSG, align 4
  %19 = call i32 @tg3_ape_read32(%struct.tg3* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @TG3_CPMU_DRV_STATUS, align 4
  %22 = call i32 @tr32(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @TG3_APE_GPIO_MSG_SHIFT, align 4
  %25 = load %struct.tg3*, %struct.tg3** %3, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 4, %27
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @TG3_GPIO_MSG_MASK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.tg3*, %struct.tg3** %3, align 8
  %42 = call i64 @tg3_asic_rev(%struct.tg3* %41)
  %43 = load i64, i64* @ASIC_REV_5717, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %23
  %46 = load %struct.tg3*, %struct.tg3** %3, align 8
  %47 = call i64 @tg3_asic_rev(%struct.tg3* %46)
  %48 = load i64, i64* @ASIC_REV_5719, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45, %23
  %51 = load %struct.tg3*, %struct.tg3** %3, align 8
  %52 = load i32, i32* @TG3_APE_GPIO_MSG, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @tg3_ape_write32(%struct.tg3* %51, i32 %52, i32 %53)
  br label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @TG3_CPMU_DRV_STATUS, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @tw32(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @TG3_APE_GPIO_MSG_SHIFT, align 4
  %62 = ashr i32 %60, %61
  ret i32 %62
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
