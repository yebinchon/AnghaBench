; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_set_ftid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_set_ftid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@CHELSIO_T6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_info*, i32, i32, i32)* @cxgb4_set_ftid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_set_ftid(%struct.tid_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %11 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %15 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %21 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PF_INET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %32 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__set_bit(i32 %30, i32 %33)
  br label %52

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @CHELSIO_T6, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %41 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @bitmap_allocate_region(i32 %42, i32 %43, i32 2)
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %47 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bitmap_allocate_region(i32 %48, i32 %49, i32 1)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %54 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @bitmap_allocate_region(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
