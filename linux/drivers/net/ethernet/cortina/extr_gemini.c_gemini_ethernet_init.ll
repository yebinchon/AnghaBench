; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_ethernet_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_ethernet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet = type { i32, i32, i32, i64, i64, i64 }

@GLOBAL_INTERRUPT_ENABLE_0_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_ENABLE_1_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_ENABLE_2_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_ENABLE_3_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_ENABLE_4_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_SELECT_0_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_SELECT_1_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_SELECT_2_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_SELECT_3_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_SELECT_4_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_STATUS_0_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_STATUS_1_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_STATUS_2_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_STATUS_3_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_STATUS_4_REG = common dso_local global i64 0, align 8
@GLOBAL_SW_FREEQ_BASE_SIZE_REG = common dso_local global i64 0, align 8
@GLOBAL_HW_FREEQ_BASE_SIZE_REG = common dso_local global i64 0, align 8
@GLOBAL_SWFQ_RWPTR_REG = common dso_local global i64 0, align 8
@GLOBAL_HWFQ_RWPTR_REG = common dso_local global i64 0, align 8
@DEFAULT_RX_BUF_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gemini_ethernet*)* @gemini_ethernet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemini_ethernet_init(%struct.gemini_ethernet* %0) #0 {
  %2 = alloca %struct.gemini_ethernet*, align 8
  store %struct.gemini_ethernet* %0, %struct.gemini_ethernet** %2, align 8
  %3 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %4 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %142

8:                                                ; preds = %1
  %9 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %10 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %15 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %20 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %22

21:                                               ; preds = %13, %8
  br label %142

22:                                               ; preds = %18
  %23 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %24 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_0_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %30 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_1_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %36 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_2_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %42 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_3_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %48 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %54 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GLOBAL_INTERRUPT_SELECT_0_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 -855896128, i64 %57)
  %59 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %60 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GLOBAL_INTERRUPT_SELECT_1_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 15728642, i64 %63)
  %65 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %66 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @GLOBAL_INTERRUPT_SELECT_2_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 -1, i64 %69)
  %71 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %72 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @GLOBAL_INTERRUPT_SELECT_3_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 -1, i64 %75)
  %77 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %78 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @GLOBAL_INTERRUPT_SELECT_4_REG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 -16777213, i64 %81)
  %83 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %84 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_0_REG, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 -1, i64 %87)
  %89 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %90 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_1_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 -1, i64 %93)
  %95 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %96 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_2_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 -1, i64 %99)
  %101 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %102 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_3_REG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 -1, i64 %105)
  %107 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %108 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_4_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 -1, i64 %111)
  %113 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %114 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @GLOBAL_SW_FREEQ_BASE_SIZE_REG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 0, i64 %117)
  %119 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %120 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @GLOBAL_HW_FREEQ_BASE_SIZE_REG, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 0, i64 %123)
  %125 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %126 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @GLOBAL_SWFQ_RWPTR_REG, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 0, i64 %129)
  %131 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %132 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GLOBAL_HWFQ_RWPTR_REG, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 0, i64 %135)
  %137 = load i32, i32* @DEFAULT_RX_BUF_ORDER, align 4
  %138 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %139 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %141 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %22, %21, %7
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
