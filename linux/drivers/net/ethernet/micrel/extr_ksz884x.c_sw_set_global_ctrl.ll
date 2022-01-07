; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_set_global_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_set_global_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i64 }

@KS8842_SWITCH_CTRL_3_OFFSET = common dso_local global i64 0, align 8
@SWITCH_FLOW_CTRL = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_1_OFFSET = common dso_local global i64 0, align 8
@SWITCH_AGGR_BACKOFF = common dso_local global i32 0, align 4
@SWITCH_AGING_ENABLE = common dso_local global i32 0, align 4
@SWITCH_LINK_AUTO_AGING = common dso_local global i32 0, align 4
@FAST_AGING = common dso_local global i32 0, align 4
@SWITCH_FAST_AGING = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_2_OFFSET = common dso_local global i64 0, align 8
@NO_EXC_COLLISION_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_set_global_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_set_global_ctrl(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %4 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KS8842_SWITCH_CTRL_3_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readw(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @SWITCH_FLOW_CTRL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KS8842_SWITCH_CTRL_3_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writew(i32 %13, i64 %18)
  %20 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KS8842_SWITCH_CTRL_1_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readw(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SWITCH_AGGR_BACKOFF, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @SWITCH_AGING_ENABLE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @SWITCH_LINK_AUTO_AGING, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FAST_AGING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* @SWITCH_FAST_AGING, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %1
  %46 = load i32, i32* @SWITCH_FAST_AGING, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KS8842_SWITCH_CTRL_1_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %51, i64 %56)
  %58 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %59 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @KS8842_SWITCH_CTRL_2_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readw(i64 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @NO_EXC_COLLISION_DROP, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %69 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @KS8842_SWITCH_CTRL_2_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writew(i32 %67, i64 %72)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
