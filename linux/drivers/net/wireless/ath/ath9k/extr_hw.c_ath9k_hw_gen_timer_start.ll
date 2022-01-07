; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gen_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gen_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ath_hw = type { i32, %struct.ath_gen_timer_table }
%struct.ath_gen_timer_table = type { i32 }
%struct.ath_gen_timer = type { i64, i64, i64 }

@gen_tmr_configuration = common dso_local global %struct.TYPE_2__* null, align 8
@AR_GEN_TIMER_BANK_1_LEN = common dso_local global i64 0, align 8
@AR_MAC_PCU_GEN_TIMER_TSF_SEL = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@AR_IMR_S5 = common dso_local global i32 0, align 4
@ATH9K_INT_GENTIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_gen_timer_start(%struct.ath_hw* %0, %struct.ath_gen_timer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_gen_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_gen_timer_table*, align 8
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_gen_timer* %1, %struct.ath_gen_timer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  store %struct.ath_gen_timer_table* %12, %struct.ath_gen_timer_table** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %14 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @BIT(i64 %15)
  %17 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %9, align 8
  %18 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_tmr_configuration, align 8
  %23 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %24 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @REG_WRITE(%struct.ath_hw* %21, i32 %28, i32 %29)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_tmr_configuration, align 8
  %33 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %34 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %38, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_tmr_configuration, align 8
  %43 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %44 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gen_tmr_configuration, align 8
  %50 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %51 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_SET_BIT(%struct.ath_hw* %41, i32 %48, i32 %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %58 = call i64 @AR_SREV_9462(%struct.ath_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %4
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = call i64 @AR_SREV_9565(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %60, %4
  %65 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %66 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AR_GEN_TIMER_BANK_1_LEN, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %72 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %73 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %74 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = call i32 @REG_CLR_BIT(%struct.ath_hw* %71, i32 %72, i32 %77)
  br label %88

79:                                               ; preds = %64
  %80 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %81 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %82 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %83 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 1, %85
  %87 = call i32 @REG_SET_BIT(%struct.ath_hw* %80, i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %91 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %96 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @AR_GENTMR_BIT(i32 %98)
  %100 = load i32, i32* @AR_IMR_S5_GENTIMER_TRIG, align 4
  %101 = call i32 @SM(i32 %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %94, %89
  %105 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %106 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %111 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @AR_GENTMR_BIT(i32 %113)
  %115 = load i32, i32* @AR_IMR_S5_GENTIMER_THRESH, align 4
  %116 = call i32 @SM(i32 %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %109, %104
  %120 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %121 = load i32, i32* @AR_IMR_S5, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @REG_SET_BIT(%struct.ath_hw* %120, i32 %121, i32 %122)
  %124 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %125 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %119
  %131 = load i32, i32* @ATH9K_INT_GENTIMER, align 4
  %132 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %133 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %137 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %136)
  br label %138

138:                                              ; preds = %130, %119
  ret void
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @AR_GENTMR_BIT(i32) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
