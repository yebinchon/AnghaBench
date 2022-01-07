; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_reset_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_reset_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@T3_REV_B2 = common dso_local global i64 0, align 8
@A_PL_RST = common dso_local global i32 0, align 4
@F_CRSTWRM = common dso_local global i32 0, align 4
@F_CRSTWRMMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_reset_adapter(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @T3_REV_B2, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = call i64 @is_pcie(%struct.adapter* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_save_state(i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load i32, i32* @A_PL_RST, align 4
  %30 = load i32, i32* @F_CRSTWRM, align 4
  %31 = load i32, i32* @F_CRSTWRMMODE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @t3_write_reg(%struct.adapter* %28, i32 %29, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %47, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = call i32 @msleep(i32 50)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pci_read_config_word(i32 %41, i32 0, i32* %6)
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 5157
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %34

50:                                               ; preds = %45, %34
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 5157
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_restore_state(i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @is_pcie(%struct.adapter*) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_restore_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
