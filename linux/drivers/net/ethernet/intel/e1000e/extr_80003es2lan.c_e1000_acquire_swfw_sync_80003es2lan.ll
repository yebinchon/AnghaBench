; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_acquire_swfw_sync_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_acquire_swfw_sync_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@SW_FW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_acquire_swfw_sync_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_acquire_swfw_sync_80003es2lan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 16
  store i32 %13, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 50, i64* %10, align 8
  br label %14

14:                                               ; preds = %35, %2
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %20 = call i64 @e1000e_get_hw_semaphore(%struct.e1000_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %3, align 8
  br label %58

25:                                               ; preds = %18
  %26 = load i32, i32* @SW_FW_SYNC, align 4
  %27 = call i32 @er32(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = call i32 @e1000e_put_hw_semaphore(%struct.e1000_hw* %36)
  %38 = call i32 @mdelay(i32 5)
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %14

41:                                               ; preds = %34, %14
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %47 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %3, align 8
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @SW_FW_SYNC, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ew32(i32 %53, i32 %54)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = call i32 @e1000e_put_hw_semaphore(%struct.e1000_hw* %56)
  store i64 0, i64* %3, align 8
  br label %58

58:                                               ; preds = %49, %45, %22
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i64 @e1000e_get_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000e_put_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
