; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.dw_mci*)* }

@.str = private unnamed_addr constant [13 x i8] c"remove slot\0A\00", align 1
@RINTSTS = common dso_local global i32 0, align 4
@INTMASK = common dso_local global i32 0, align 4
@CLKENA = common dso_local global i32 0, align 4
@CLKSRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_mci_remove(%struct.dw_mci* %0) #0 {
  %2 = alloca %struct.dw_mci*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %2, align 8
  %3 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %4 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %8 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %13 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @dw_mci_cleanup_slot(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %18 = load i32, i32* @RINTSTS, align 4
  %19 = call i32 @mci_writel(%struct.dw_mci* %17, i32 %18, i32 -1)
  %20 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %21 = load i32, i32* @INTMASK, align 4
  %22 = call i32 @mci_writel(%struct.dw_mci* %20, i32 %21, i32 0)
  %23 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %24 = load i32, i32* @CLKENA, align 4
  %25 = call i32 @mci_writel(%struct.dw_mci* %23, i32 %24, i32 0)
  %26 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %27 = load i32, i32* @CLKSRC, align 4
  %28 = call i32 @mci_writel(%struct.dw_mci* %26, i32 %27, i32 0)
  %29 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %30 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %16
  %34 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %35 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dw_mci*)*, i32 (%struct.dw_mci*)** %37, align 8
  %39 = icmp ne i32 (%struct.dw_mci*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %42 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.dw_mci*)*, i32 (%struct.dw_mci*)** %44, align 8
  %46 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %47 = call i32 %45(%struct.dw_mci* %46)
  br label %48

48:                                               ; preds = %40, %33, %16
  %49 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %50 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IS_ERR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %48
  %57 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %58 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @reset_control_assert(i32 %61)
  br label %63

63:                                               ; preds = %56, %48
  %64 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %65 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  %68 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %69 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @clk_disable_unprepare(i32 %70)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dw_mci_cleanup_slot(i64) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
