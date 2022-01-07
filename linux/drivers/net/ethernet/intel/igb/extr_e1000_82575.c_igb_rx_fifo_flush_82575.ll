; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_rx_fifo_flush_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_rx_fifo_flush_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_RCV_TCO_EN = common dso_local global i32 0, align 4
@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Queue disable timed out after 10ms\0A\00", align 1
@E1000_RFCTL_LEF = common dso_local global i32 0, align 4
@E1000_RLPML = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@E1000_ROC = common dso_local global i32 0, align 4
@E1000_RNBC = common dso_local global i32 0, align 4
@E1000_MPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_rx_fifo_flush_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %11 = load i32, i32* @E1000_RFCTL, align 4
  %12 = call i32 @rd32(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @E1000_RFCTL, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wr32(i32 %16, i32 %17)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @e1000_82575, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @E1000_MANC, align 4
  %27 = call i32 @rd32(i32 %26)
  %28 = load i32, i32* @E1000_MANC_RCV_TCO_EN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %1
  br label %152

32:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @E1000_RXDCTL(i32 %37)
  %39 = call i32 @rd32(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @E1000_RXDCTL(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @wr32(i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %33

56:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 10
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %71, %60
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @E1000_RXDCTL(i32 %66)
  %68 = call i32 @rd32(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %62

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %84

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %57

84:                                               ; preds = %79, %57
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @hw_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* @E1000_RFCTL, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @E1000_RFCTL_LEF, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call i32 @wr32(i32 %90, i32 %94)
  %96 = load i32, i32* @E1000_RLPML, align 4
  %97 = call i32 @rd32(i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @E1000_RLPML, align 4
  %99 = call i32 @wr32(i32 %98, i32 0)
  %100 = load i32, i32* @E1000_RCTL, align 4
  %101 = call i32 @rd32(i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @E1000_RCTL_EN, align 4
  %104 = load i32, i32* @E1000_RCTL_SBP, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @E1000_RCTL_LPE, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* @E1000_RCTL, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @wr32(i32 %111, i32 %112)
  %114 = load i32, i32* @E1000_RCTL, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @E1000_RCTL_EN, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @wr32(i32 %114, i32 %117)
  %119 = call i32 (...) @wrfl()
  %120 = call i32 @usleep_range(i32 2000, i32 3000)
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %132, %89
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @E1000_RXDCTL(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @wr32(i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %121

135:                                              ; preds = %121
  %136 = load i32, i32* @E1000_RCTL, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @wr32(i32 %136, i32 %137)
  %139 = call i32 (...) @wrfl()
  %140 = load i32, i32* @E1000_RLPML, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @wr32(i32 %140, i32 %141)
  %143 = load i32, i32* @E1000_RFCTL, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @wr32(i32 %143, i32 %144)
  %146 = load i32, i32* @E1000_ROC, align 4
  %147 = call i32 @rd32(i32 %146)
  %148 = load i32, i32* @E1000_RNBC, align 4
  %149 = call i32 @rd32(i32 %148)
  %150 = load i32, i32* @E1000_MPC, align 4
  %151 = call i32 @rd32(i32 %150)
  br label %152

152:                                              ; preds = %135, %31
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_RXDCTL(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
