; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_q_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_q_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fastpath = type { i64 }

@BNX2X_Q_FLG_OV = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_FCOE = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_FORCE_DEFAULT_PRI = common dso_local global i32 0, align 4
@TPA_MODE_DISABLED = common dso_local global i64 0, align 8
@BNX2X_Q_FLG_TPA = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TPA_IPV6 = common dso_local global i32 0, align 4
@TPA_MODE_GRO = common dso_local global i64 0, align 8
@BNX2X_Q_FLG_TPA_GRO = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_LEADING_RSS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_MCAST = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_VLAN = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_SILENT_VLAN_REM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*, %struct.bnx2x_fastpath*, i32)* @bnx2x_get_q_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_get_q_flags(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_fastpath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = call i64 @IS_MF_SD(%struct.bnx2x* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @BNX2X_Q_FLG_OV, align 4
  %13 = call i32 @__set_bit(i32 %12, i64* %7)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %16 = call i64 @IS_FCOE_FP(%struct.bnx2x_fastpath* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @BNX2X_Q_FLG_FCOE, align 4
  %20 = call i32 @__set_bit(i32 %19, i64* %7)
  %21 = load i32, i32* @BNX2X_Q_FLG_FORCE_DEFAULT_PRI, align 4
  %22 = call i32 @__set_bit(i32 %21, i64* %7)
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TPA_MODE_DISABLED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* @BNX2X_Q_FLG_TPA, align 4
  %31 = call i32 @__set_bit(i32 %30, i64* %7)
  %32 = load i32, i32* @BNX2X_Q_FLG_TPA_IPV6, align 4
  %33 = call i32 @__set_bit(i32 %32, i64* %7)
  %34 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TPA_MODE_GRO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @BNX2X_Q_FLG_TPA_GRO, align 4
  %41 = call i32 @__set_bit(i32 %40, i64* %7)
  br label %42

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @BNX2X_Q_FLG_LEADING_RSS, align 4
  %48 = call i32 @__set_bit(i32 %47, i64* %7)
  %49 = load i32, i32* @BNX2X_Q_FLG_MCAST, align 4
  %50 = call i32 @__set_bit(i32 %49, i64* %7)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @BNX2X_Q_FLG_VLAN, align 4
  %53 = call i32 @__set_bit(i32 %52, i64* %7)
  %54 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %55 = call i64 @IS_MF_AFEX(%struct.bnx2x* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @BNX2X_Q_FLG_SILENT_VLAN_REM, align 4
  %59 = call i32 @__set_bit(i32 %58, i64* %7)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %63 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %64 = call i64 @bnx2x_get_common_flags(%struct.bnx2x* %62, %struct.bnx2x_fastpath* %63, i32 1)
  %65 = or i64 %61, %64
  ret i64 %65
}

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i64 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_get_common_flags(%struct.bnx2x*, %struct.bnx2x_fastpath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
