; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_update_flash_i225.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_update_flash_i225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { i32 }

@IGC_ERR_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Flash update time out\0A\00", align 1
@IGC_EECD = common dso_local global i32 0, align 4
@IGC_EECD_FLUPD_I225 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Flash update complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_hw*)* @igc_update_flash_i225 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_update_flash_i225(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %6 = call i32 @igc_pool_flash_update_done_i225(%struct.igc_hw* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IGC_ERR_NVM, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @IGC_EECD, align 4
  %15 = call i32 @rd32(i32 %14)
  %16 = load i32, i32* @IGC_EECD_FLUPD_I225, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @IGC_EECD, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @wr32(i32 %18, i32 %19)
  %21 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %22 = call i32 @igc_pool_flash_update_done_i225(%struct.igc_hw* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %29

27:                                               ; preds = %13
  %28 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @igc_pool_flash_update_done_i225(%struct.igc_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
