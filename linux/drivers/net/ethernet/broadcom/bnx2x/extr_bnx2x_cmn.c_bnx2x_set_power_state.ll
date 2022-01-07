; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"No power capability. Breaking.\0A\00", align 1
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_STATUS = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't support state = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_power_state(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_PM_CTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @pci_read_config_word(%struct.TYPE_3__* %18, i64 %25, i32* %6)
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %94 [
    i32 129, label %28
    i32 128, label %53
  ]

28:                                               ; preds = %15
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI_PM_CTRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* @PCI_PM_CTRL_PME_STATUS, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pci_write_config_word(%struct.TYPE_3__* %31, i64 %38, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = call i32 @msleep(i32 20)
  br label %52

52:                                               ; preds = %50, %28
  br label %103

53:                                               ; preds = %15
  %54 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i32 @atomic_read(i32* %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %104

61:                                               ; preds = %53
  %62 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %63 = call i32 @CHIP_REV_IS_SLOW(%struct.bnx2x* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %104

66:                                               ; preds = %61
  %67 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, 3
  store i32 %72, i32* %6, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i32, i32* @PCI_PM_CTRL_PME_ENABLE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %66
  %82 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %86 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI_PM_CTRL, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @pci_write_config_word(%struct.TYPE_3__* %84, i64 %91, i32 %92)
  br label %103

94:                                               ; preds = %15
  %95 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %96 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %81, %52
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %94, %65, %60, %13
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
