; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_set_q_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_set_q_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@VFPF_QUEUE_FLG_TPA = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TPA = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_TPA_IPV6 = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TPA_IPV6 = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_TPA_GRO = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TPA_GRO = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_STATS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_STATS = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_VLAN = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_VLAN = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_COS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_COS = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_HC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_HC = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_DHC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_DHC = common dso_local global i32 0, align 4
@VFPF_QUEUE_FLG_LEADING_RSS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_LEADING_RSS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_OV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i64*)* @bnx2x_vf_mbx_set_q_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @VFPF_QUEUE_FLG_TPA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @BNX2X_Q_FLG_TPA, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @__set_bit(i32 %12, i64* %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VFPF_QUEUE_FLG_TPA_IPV6, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @BNX2X_Q_FLG_TPA_IPV6, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = call i32 @__set_bit(i32 %21, i64* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @VFPF_QUEUE_FLG_TPA_GRO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @BNX2X_Q_FLG_TPA_GRO, align 4
  %31 = load i64*, i64** %6, align 8
  %32 = call i32 @__set_bit(i32 %30, i64* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @VFPF_QUEUE_FLG_STATS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @BNX2X_Q_FLG_STATS, align 4
  %40 = load i64*, i64** %6, align 8
  %41 = call i32 @__set_bit(i32 %39, i64* %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VFPF_QUEUE_FLG_VLAN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @BNX2X_Q_FLG_VLAN, align 4
  %49 = load i64*, i64** %6, align 8
  %50 = call i32 @__set_bit(i32 %48, i64* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VFPF_QUEUE_FLG_COS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @BNX2X_Q_FLG_COS, align 4
  %58 = load i64*, i64** %6, align 8
  %59 = call i32 @__set_bit(i32 %57, i64* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @VFPF_QUEUE_FLG_HC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %67 = load i64*, i64** %6, align 8
  %68 = call i32 @__set_bit(i32 %66, i64* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @VFPF_QUEUE_FLG_DHC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @BNX2X_Q_FLG_DHC, align 4
  %76 = load i64*, i64** %6, align 8
  %77 = call i32 @__set_bit(i32 %75, i64* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @VFPF_QUEUE_FLG_LEADING_RSS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @BNX2X_Q_FLG_LEADING_RSS, align 4
  %85 = load i64*, i64** %6, align 8
  %86 = call i32 @__set_bit(i32 %84, i64* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %89 = call i64 @IS_MF_SD(%struct.bnx2x* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @BNX2X_Q_FLG_OV, align 4
  %93 = load i64*, i64** %6, align 8
  %94 = call i32 @__set_bit(i32 %92, i64* %93)
  br label %95

95:                                               ; preds = %91, %87
  ret void
}

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
