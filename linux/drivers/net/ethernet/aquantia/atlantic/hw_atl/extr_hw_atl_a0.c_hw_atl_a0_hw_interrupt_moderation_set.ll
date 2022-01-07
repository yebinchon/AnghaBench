; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_interrupt_moderation_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_interrupt_moderation_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AQ_CFG_INTERRUPT_MODERATION_AUTO = common dso_local global i32 0, align 4
@AQ_CFG_IRQ_MASK = common dso_local global i32 0, align 4
@hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_ = internal global [6 x i32] [i32 28, i32 57, i32 57, i32 115, i32 288, i32 511], align 16
@HW_ATL_A0_RINGS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_a0_hw_interrupt_moderation_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_a0_hw_interrupt_moderation_set(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %9 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %1
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %16 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AQ_CFG_INTERRUPT_MODERATION_AUTO, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %24 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @AQ_CFG_IRQ_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 -2147483648, %33
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %14
  %36 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %37 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %36, i32 10752)
  %38 = and i32 65535, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %41 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %48 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @hw_atl_utils_mbps_2_speed_index(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* @hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 -2147483648, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %46, %45
  %59 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %60 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %59, i32 10752, i32 1073741824)
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %62 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %61, i32 10752, i32 -1929379840)
  br label %63

63:                                               ; preds = %58, %22
  br label %65

64:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* @HW_ATL_A0_RINGS_MAX, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %71, %65
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %3, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @hw_atl_reg_irq_thr_set(%struct.aq_hw_s* %72, i32 %73, i32 %74)
  br label %67

76:                                               ; preds = %67
  %77 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %78 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %77)
  ret i32 %78
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_utils_mbps_2_speed_index(i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_irq_thr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
