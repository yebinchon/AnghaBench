; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_avail_cp_rings_for_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_avail_cp_rings_for_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_get_avail_cp_rings_for_en(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = call i32 @bnxt_get_max_func_cp_rings_for_en(%struct.bnxt* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %24, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @bnxt_get_max_func_cp_rings_for_en(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
