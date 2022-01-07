; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_determine_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_determine_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i32 }
%struct.ksz_port = type { i64 }

@PAUSE_FLOW_CTRL = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_SYM_PAUSE = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_ASYM_PAUSE = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, %struct.ksz_port*, i32, i32)* @determine_flow_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_flow_ctrl(%struct.ksz_hw* %0, %struct.ksz_port* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca %struct.ksz_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %5, align 8
  store %struct.ksz_port* %1, %struct.ksz_port** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAUSE_FLOW_CTRL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %73

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ksz_port*, %struct.ksz_port** %6, align 8
  %20 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PHY_AUTO_NEG_SYM_PAUSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PHY_AUTO_NEG_SYM_PAUSE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %48

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PHY_AUTO_NEG_ASYM_PAUSE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PHY_AUTO_NEG_PAUSE, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PHY_AUTO_NEG_ASYM_PAUSE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %40, %35
  br label %48

48:                                               ; preds = %47, %34
  br label %63

49:                                               ; preds = %24
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PHY_AUTO_NEG_ASYM_PAUSE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PHY_AUTO_NEG_PAUSE, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @PHY_AUTO_NEG_PAUSE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %65 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @set_flow_ctrl(%struct.ksz_hw* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %17, %68, %63
  ret void
}

declare dso_local i32 @set_flow_ctrl(%struct.ksz_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
