; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_coal_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_coal_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32 }

@ENABLE_TSS = common dso_local global i32 0, align 4
@HOSTCC_TXCOL_TICKS = common dso_local global i64 0, align 8
@HOSTCC_TXMAX_FRAMES = common dso_local global i64 0, align 8
@HOSTCC_TXCOAL_MAXF_INT = common dso_local global i64 0, align 8
@HOSTCC_TXCOL_TICKS_VEC1 = common dso_local global i64 0, align 8
@HOSTCC_TXMAX_FRAMES_VEC1 = common dso_local global i64 0, align 8
@HOSTCC_TXCOAL_MAXF_INT_VEC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, %struct.ethtool_coalesce*)* @tg3_coal_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_coal_tx_init(%struct.tg3* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = load i32, i32* @ENABLE_TSS, align 4
  %9 = call i32 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @HOSTCC_TXCOL_TICKS, align 8
  %13 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tw32(i64 %12, i32 %15)
  %17 = load i64, i64* @HOSTCC_TXMAX_FRAMES, align 8
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tw32(i64 %17, i32 %20)
  %22 = load i64, i64* @HOSTCC_TXCOAL_MAXF_INT, align 8
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tw32(i64 %22, i32 %25)
  br label %75

27:                                               ; preds = %2
  %28 = load i64, i64* @HOSTCC_TXCOL_TICKS, align 8
  %29 = call i32 @tw32(i64 %28, i32 0)
  %30 = load i64, i64* @HOSTCC_TXMAX_FRAMES, align 8
  %31 = call i32 @tw32(i64 %30, i32 0)
  %32 = load i64, i64* @HOSTCC_TXCOAL_MAXF_INT, align 8
  %33 = call i32 @tw32(i64 %32, i32 0)
  br label %34

34:                                               ; preds = %71, %27
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tg3*, %struct.tg3** %3, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load i64, i64* @HOSTCC_TXCOL_TICKS_VEC1, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 24
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tw32(i64 %46, i32 %49)
  %51 = load i64, i64* @HOSTCC_TXMAX_FRAMES_VEC1, align 8
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 24
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tw32(i64 %56, i32 %59)
  %61 = load i64, i64* @HOSTCC_TXCOAL_MAXF_INT_VEC1, align 8
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 24
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tw32(i64 %66, i32 %69)
  br label %71

71:                                               ; preds = %40
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %34

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74, %11
  br label %76

76:                                               ; preds = %102, %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.tg3*, %struct.tg3** %3, align 8
  %79 = getelementptr inbounds %struct.tg3, %struct.tg3* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %76
  %84 = load i64, i64* @HOSTCC_TXCOL_TICKS_VEC1, align 8
  %85 = load i32, i32* %5, align 4
  %86 = mul nsw i32 %85, 24
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @tw32(i64 %88, i32 0)
  %90 = load i64, i64* @HOSTCC_TXMAX_FRAMES_VEC1, align 8
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %91, 24
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = call i32 @tw32(i64 %94, i32 0)
  %96 = load i64, i64* @HOSTCC_TXCOAL_MAXF_INT_VEC1, align 8
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 24
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = call i32 @tw32(i64 %100, i32 0)
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %76

105:                                              ; preds = %76
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
