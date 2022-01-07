; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_add_signature_filter_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_add_signature_filter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%union.ixgbe_atr_hash_dword = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ATR_L4TYPE_TUNNEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c" Error on flow type input\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_ADD_FLOW = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FILTER_UPDATE = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_LAST = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_QUEUE_EN = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FLOW_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_RX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_TUNNEL_FILTER = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Tx Queue=%x hash=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fdir_add_signature_filter_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.ixgbe_atr_hash_dword, align 4
  %7 = alloca %union.ixgbe_atr_hash_dword, align 4
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %6, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %1, i32* %15, align 4
  %16 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %2, i32* %17, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IXGBE_ATR_L4TYPE_TUNNEL_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IXGBE_ATR_L4TYPE_TUNNEL_MASK, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %35 [
    i32 131, label %34
    i32 129, label %34
    i32 133, label %34
    i32 130, label %34
    i32 128, label %34
    i32 132, label %34
  ]

34:                                               ; preds = %4, %4, %4, %4, %4, %4
  br label %39

35:                                               ; preds = %4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %37 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %34
  %40 = load i32, i32* @IXGBE_FDIRCMD_CMD_ADD_FLOW, align 4
  %41 = load i32, i32* @IXGBE_FDIRCMD_FILTER_UPDATE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IXGBE_FDIRCMD_LAST, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IXGBE_FDIRCMD_QUEUE_EN, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @IXGBE_FDIRCMD_FLOW_TYPE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @IXGBE_FDIRCMD_RX_QUEUE_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load i32, i32* @IXGBE_FDIRCMD_TUNNEL_FILTER, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %39
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %64, 32
  store i32 %65, i32* %10, align 4
  %66 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %6, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ixgbe_atr_compute_sig_hash_82599(i32 %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %76 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @IXGBE_WRITE_REG64(%struct.ixgbe_hw* %75, i32 %76, i32 %77)
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %63, %35
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @ixgbe_atr_compute_sig_hash_82599(i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG64(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
