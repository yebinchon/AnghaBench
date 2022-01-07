; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_flash_erase_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_flash_erase_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SF_WR_ENABLE = common dso_local global i32 0, align 4
@SF_ERASE_SECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"erase of flash sector %d failed, error %d\0A\00", align 1
@SF_OP_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @t4_flash_erase_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_flash_erase_sectors(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = load i32, i32* @SF_WR_ENABLE, align 4
  %26 = call i32 @sf1_write(%struct.adapter* %24, i32 1, i32 0, i32 1, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load %struct.adapter*, %struct.adapter** %5, align 8
  %30 = load i32, i32* @SF_ERASE_SECTOR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %30, %32
  %34 = call i32 @sf1_write(%struct.adapter* %29, i32 4, i32 0, i32 1, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = call i32 @flash_wait_op(%struct.adapter* %37, i32 14, i32 500)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %28, %23
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %19

50:                                               ; preds = %40, %19
  %51 = load %struct.adapter*, %struct.adapter** %5, align 8
  %52 = load i32, i32* @SF_OP_A, align 4
  %53 = call i32 @t4_write_reg(%struct.adapter* %51, i32 %52, i32 0)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @flash_wait_op(%struct.adapter*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
