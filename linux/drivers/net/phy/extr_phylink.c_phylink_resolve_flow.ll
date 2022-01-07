; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_resolve_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_resolve_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.phylink_link_state = type { i32 }

@MLO_PAUSE_AN = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@MLO_PAUSE_SYM = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@MLO_PAUSE_ASYM = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MLO_PAUSE_TXRX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink*, %struct.phylink_link_state*)* @phylink_resolve_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phylink_resolve_flow(%struct.phylink* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.phylink*, %struct.phylink** %3, align 8
  %8 = getelementptr inbounds %struct.phylink, %struct.phylink* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MLO_PAUSE_AN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load %struct.phylink*, %struct.phylink** %3, align 8
  %16 = getelementptr inbounds %struct.phylink, %struct.phylink* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @Pause, align 4
  %20 = call i64 @phylink_test(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.phylink*, %struct.phylink** %3, align 8
  %28 = getelementptr inbounds %struct.phylink, %struct.phylink* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @Asym_Pause, align 4
  %32 = call i64 @phylink_test(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @MLO_PAUSE_ASYM, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %40 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @MLO_PAUSE_TX, align 4
  %50 = load i32, i32* @MLO_PAUSE_RX, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %5, align 4
  br label %71

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MLO_PAUSE_ASYM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %59 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @MLO_PAUSE_TX, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @MLO_PAUSE_RX, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %52
  br label %71

71:                                               ; preds = %70, %48
  br label %79

72:                                               ; preds = %2
  %73 = load %struct.phylink*, %struct.phylink** %3, align 8
  %74 = getelementptr inbounds %struct.phylink, %struct.phylink* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %71
  %80 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %83 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %88 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  ret void
}

declare dso_local i64 @phylink_test(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
