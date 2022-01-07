; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_storm_fw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_storm_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.fw_info = type { i32, i64 }
%struct.fw_info_location = type { i32, i64 }

@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@SEM_FAST_REG_INT_RAM = common dso_local global i64 0, align 8
@SEM_FAST_REG_INT_RAM_SIZE_BB_K2 = common dso_local global i32 0, align 4
@BYTES_IN_DWORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i64, %struct.fw_info*)* @qed_read_storm_fw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_read_storm_fw_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, %struct.fw_info* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fw_info*, align 8
  %9 = alloca %struct.storm_defs*, align 8
  %10 = alloca %struct.fw_info_location, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.fw_info* %3, %struct.fw_info** %8, align 8
  %14 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %14, i64 %15
  store %struct.storm_defs* %16, %struct.storm_defs** %9, align 8
  %17 = call i32 @memset(%struct.fw_info_location* %10, i32 0, i32 16)
  %18 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %19 = bitcast %struct.fw_info* %18 to %struct.fw_info_location*
  %20 = call i32 @memset(%struct.fw_info_location* %19, i32 0, i32 16)
  %21 = load %struct.storm_defs*, %struct.storm_defs** %9, align 8
  %22 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %25 = add i64 %23, %24
  %26 = load i32, i32* @SEM_FAST_REG_INT_RAM_SIZE_BB_K2, align 4
  %27 = call i64 @DWORDS_TO_BYTES(i32 %26)
  %28 = add i64 %25, %27
  %29 = sub i64 %28, 16
  store i64 %29, i64* %11, align 8
  %30 = bitcast %struct.fw_info_location* %10 to i64*
  store i64* %30, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %43, %4
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @BYTES_TO_DWORDS(i32 16)
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @qed_rd(%struct.qed_hwfn* %36, %struct.qed_ptt* %37, i64 %38)
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %35
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* @BYTES_IN_DWORD, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %31

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ule i64 %56, 16
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  %61 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %62 = bitcast %struct.fw_info* %61 to i64*
  store i64* %62, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %77, %58
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @BYTES_TO_DWORDS(i32 %66)
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @qed_rd(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i64 %72)
  %74 = load i64*, i64** %13, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* @BYTES_IN_DWORD, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %11, align 8
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %53, %49
  ret void
}

declare dso_local i32 @memset(%struct.fw_info_location*, i32, i32) #1

declare dso_local i64 @DWORDS_TO_BYTES(i32) #1

declare dso_local i64 @BYTES_TO_DWORDS(i32) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
