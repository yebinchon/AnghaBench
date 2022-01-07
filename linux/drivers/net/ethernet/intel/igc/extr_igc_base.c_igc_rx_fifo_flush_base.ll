; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_rx_fifo_flush_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_rx_fifo_flush_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { i32 }

@IGC_RFCTL = common dso_local global i32 0, align 4
@IGC_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@IGC_MANC = common dso_local global i32 0, align 4
@IGC_MANC_RCV_TCO_EN = common dso_local global i32 0, align 4
@IGC_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Queue disable timed out after 10ms\0A\00", align 1
@IGC_RFCTL_LEF = common dso_local global i32 0, align 4
@IGC_RLPML = common dso_local global i32 0, align 4
@IGC_RCTL = common dso_local global i32 0, align 4
@IGC_RCTL_EN = common dso_local global i32 0, align 4
@IGC_RCTL_SBP = common dso_local global i32 0, align 4
@IGC_RCTL_LPE = common dso_local global i32 0, align 4
@IGC_ROC = common dso_local global i32 0, align 4
@IGC_RNBC = common dso_local global i32 0, align 4
@IGC_MPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igc_rx_fifo_flush_base(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %11 = load i32, i32* @IGC_RFCTL, align 4
  %12 = call i32 @rd32(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @IGC_RFCTL_IPV6_EX_DIS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @IGC_RFCTL, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wr32(i32 %16, i32 %17)
  %19 = load i32, i32* @IGC_MANC, align 4
  %20 = call i32 @rd32(i32 %19)
  %21 = load i32, i32* @IGC_MANC_RCV_TCO_EN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %145

25:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @IGC_RXDCTL(i32 %30)
  %32 = call i32 @rd32(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @IGC_RXDCTL(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IGC_RXDCTL_QUEUE_ENABLE, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @wr32(i32 %37, i32 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %64, %53
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @IGC_RXDCTL(i32 %59)
  %61 = call i32 @rd32(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @IGC_RXDCTL_QUEUE_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %77

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %50

77:                                               ; preds = %72, %50
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* @IGC_RFCTL, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @IGC_RFCTL_LEF, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = call i32 @wr32(i32 %83, i32 %87)
  %89 = load i32, i32* @IGC_RLPML, align 4
  %90 = call i32 @rd32(i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @IGC_RLPML, align 4
  %92 = call i32 @wr32(i32 %91, i32 0)
  %93 = load i32, i32* @IGC_RCTL, align 4
  %94 = call i32 @rd32(i32 %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @IGC_RCTL_EN, align 4
  %97 = load i32, i32* @IGC_RCTL_SBP, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = and i32 %95, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @IGC_RCTL_LPE, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @IGC_RCTL, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @wr32(i32 %104, i32 %105)
  %107 = load i32, i32* @IGC_RCTL, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @IGC_RCTL_EN, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @wr32(i32 %107, i32 %110)
  %112 = call i32 (...) @wrfl()
  %113 = call i32 @usleep_range(i32 2000, i32 3000)
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %125, %82
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @IGC_RXDCTL(i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wr32(i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %114

128:                                              ; preds = %114
  %129 = load i32, i32* @IGC_RCTL, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @wr32(i32 %129, i32 %130)
  %132 = call i32 (...) @wrfl()
  %133 = load i32, i32* @IGC_RLPML, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @wr32(i32 %133, i32 %134)
  %136 = load i32, i32* @IGC_RFCTL, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @wr32(i32 %136, i32 %137)
  %139 = load i32, i32* @IGC_ROC, align 4
  %140 = call i32 @rd32(i32 %139)
  %141 = load i32, i32* @IGC_RNBC, align 4
  %142 = call i32 @rd32(i32 %141)
  %143 = load i32, i32* @IGC_MPC, align 4
  %144 = call i32 @rd32(i32 %143)
  br label %145

145:                                              ; preds = %128, %24
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @IGC_RXDCTL(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
