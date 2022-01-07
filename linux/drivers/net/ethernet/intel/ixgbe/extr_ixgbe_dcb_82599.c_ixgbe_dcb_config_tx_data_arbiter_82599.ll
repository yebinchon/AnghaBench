; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tx_data_arbiter_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tx_data_arbiter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_RTTPCS_TPPAC = common dso_local global i64 0, align 8
@IXGBE_RTTPCS_TPRM = common dso_local global i64 0, align 8
@IXGBE_RTTPCS_ARBD_DCB = common dso_local global i64 0, align 8
@IXGBE_RTTPCS_ARBD_SHIFT = common dso_local global i64 0, align 8
@IXGBE_RTTPCS_ARBDIS = common dso_local global i64 0, align 8
@IXGBE_RTTPCS = common dso_local global i32 0, align 4
@MAX_USER_PRIORITY = common dso_local global i64 0, align 8
@IXGBE_RTTUP2TC_UP_SHIFT = common dso_local global i64 0, align 8
@IXGBE_RTTUP2TC = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_RTTPT2C_MCL_SHIFT = common dso_local global i64 0, align 8
@IXGBE_RTTPT2C_BWG_SHIFT = common dso_local global i64 0, align 8
@prio_group = common dso_local global i64 0, align 8
@IXGBE_RTTPT2C_GSP = common dso_local global i64 0, align 8
@prio_link = common dso_local global i64 0, align 8
@IXGBE_RTTPT2C_LSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82599(%struct.ixgbe_hw* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i64, i64* @IXGBE_RTTPCS_TPPAC, align 8
  %16 = load i64, i64* @IXGBE_RTTPCS_TPRM, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @IXGBE_RTTPCS_ARBD_DCB, align 8
  %19 = load i64, i64* @IXGBE_RTTPCS_ARBD_SHIFT, align 8
  %20 = shl i64 %18, %19
  %21 = or i64 %17, %20
  %22 = load i64, i64* @IXGBE_RTTPCS_ARBDIS, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %25 = load i32, i32* @IXGBE_RTTPCS, align 4
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %24, i32 %25, i64 %26)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %43, %6
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @MAX_USER_PRIORITY, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i64*, i64** %12, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @IXGBE_RTTUP2TC_UP_SHIFT, align 8
  %39 = mul i64 %37, %38
  %40 = shl i64 %36, %39
  %41 = load i64, i64* %13, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %14, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %48 = load i32, i32* @IXGBE_RTTUP2TC, align 4
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %48, i64 %49)
  store i64 0, i64* %14, align 8
  br label %51

51:                                               ; preds = %103, %46
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @MAX_TRAFFIC_CLASS, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %13, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IXGBE_RTTPT2C_MCL_SHIFT, align 8
  %65 = shl i64 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %13, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IXGBE_RTTPT2C_BWG_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = load i64, i64* %13, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @prio_group, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %55
  %83 = load i64, i64* @IXGBE_RTTPT2C_GSP, align 8
  %84 = load i64, i64* %13, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %82, %55
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @prio_link, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i64, i64* @IXGBE_RTTPT2C_LSP, align 8
  %95 = load i64, i64* %13, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @IXGBE_RTTPT2C(i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %98, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %51

106:                                              ; preds = %51
  %107 = load i64, i64* @IXGBE_RTTPCS_TPPAC, align 8
  %108 = load i64, i64* @IXGBE_RTTPCS_TPRM, align 8
  %109 = or i64 %107, %108
  %110 = load i64, i64* @IXGBE_RTTPCS_ARBD_DCB, align 8
  %111 = load i64, i64* @IXGBE_RTTPCS_ARBD_SHIFT, align 8
  %112 = shl i64 %110, %111
  %113 = or i64 %109, %112
  store i64 %113, i64* %13, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %115 = load i32, i32* @IXGBE_RTTPCS, align 4
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %114, i32 %115, i64 %116)
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RTTPT2C(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
