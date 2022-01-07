; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_wol_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_wol_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64 }

@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @wol_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wol_supported(%struct.skge_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skge_hw*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  %4 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %5 = call i64 @is_genesis(%struct.skge_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %10 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_ID_YUKON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %16 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %24

20:                                               ; preds = %14, %8
  %21 = load i32, i32* @WAKE_MAGIC, align 4
  %22 = load i32, i32* @WAKE_PHY, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %19, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
