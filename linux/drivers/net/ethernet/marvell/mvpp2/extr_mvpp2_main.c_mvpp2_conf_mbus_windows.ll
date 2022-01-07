; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_conf_mbus_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_conf_mbus_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbus_dram_target_info = type { i32, i32, %struct.mbus_dram_window* }
%struct.mbus_dram_window = type { i32, i32, i32 }
%struct.mvpp2 = type { i32 }

@MVPP2_BASE_ADDR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbus_dram_target_info*, %struct.mvpp2*)* @mvpp2_conf_mbus_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_conf_mbus_windows(%struct.mbus_dram_target_info* %0, %struct.mvpp2* %1) #0 {
  %3 = alloca %struct.mbus_dram_target_info*, align 8
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbus_dram_window*, align 8
  store %struct.mbus_dram_target_info* %0, %struct.mbus_dram_target_info** %3, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @MVPP2_WIN_BASE(i32 %13)
  %15 = call i32 @mvpp2_write(%struct.mvpp2* %12, i32 %14, i32 0)
  %16 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MVPP2_WIN_SIZE(i32 %17)
  %19 = call i32 @mvpp2_write(%struct.mvpp2* %16, i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MVPP2_WIN_REMAP(i32 %24)
  %26 = call i32 @mvpp2_write(%struct.mvpp2* %23, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %22, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %8

31:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %75, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %35 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %32
  %39 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %40 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %39, i32 0, i32 2
  %41 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %41, i64 %43
  store %struct.mbus_dram_window* %44, %struct.mbus_dram_window** %7, align 8
  %45 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @MVPP2_WIN_BASE(i32 %46)
  %48 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %7, align 8
  %49 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -65536
  %52 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %7, align 8
  %53 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %51, %55
  %57 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %58 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  %61 = call i32 @mvpp2_write(%struct.mvpp2* %45, i32 %47, i32 %60)
  %62 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @MVPP2_WIN_SIZE(i32 %63)
  %65 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %7, align 8
  %66 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %68, -65536
  %70 = call i32 @mvpp2_write(%struct.mvpp2* %62, i32 %64, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %38
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %32

78:                                               ; preds = %32
  %79 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %80 = load i32, i32* @MVPP2_BASE_ADDR_ENABLE, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @mvpp2_write(%struct.mvpp2* %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_WIN_BASE(i32) #1

declare dso_local i32 @MVPP2_WIN_SIZE(i32) #1

declare dso_local i32 @MVPP2_WIN_REMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
