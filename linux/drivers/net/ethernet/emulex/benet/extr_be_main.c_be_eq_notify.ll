; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_eq_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_eq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64 }

@DB_EQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_EQ_RING_ID_EXT_MASK = common dso_local global i32 0, align 4
@DB_EQ_RING_ID_EXT_MASK_SHIFT = common dso_local global i32 0, align 4
@BE_ERROR_HW = common dso_local global i32 0, align 4
@DB_EQ_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_CLR_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_EVNT_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_R2I_DLY_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, i32, i32, i32, i32, i32)* @be_eq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_eq_notify(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DB_EQ_RING_ID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %13, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DB_EQ_RING_ID_EXT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @DB_EQ_RING_ID_EXT_MASK_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %27 = load i32, i32* @BE_ERROR_HW, align 4
  %28 = call i64 @be_check_error(%struct.be_adapter* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %69

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @DB_EQ_REARM_SHIFT, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @DB_EQ_CLR_SHIFT, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* @DB_EQ_EVNT_SHIFT, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @DB_EQ_NUM_POPPED_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DB_EQ_R2I_DLY_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %64 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DB_EQ_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite32(i32 %62, i64 %67)
  br label %69

69:                                               ; preds = %47, %30
  ret void
}

declare dso_local i64 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
