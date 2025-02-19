; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_muram.c_fman_muram_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_muram.c_fman_muram_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muram_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_muram_free_mem(%struct.muram_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.muram_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.muram_info* %0, %struct.muram_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.muram_info*, %struct.muram_info** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @fman_muram_offset_to_vbase(%struct.muram_info* %8, i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.muram_info*, %struct.muram_info** %4, align 8
  %12 = getelementptr inbounds %struct.muram_info, %struct.muram_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @gen_pool_free(i32 %13, i64 %14, i64 %15)
  ret void
}

declare dso_local i64 @fman_muram_offset_to_vbase(%struct.muram_info*, i64) #1

declare dso_local i32 @gen_pool_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
