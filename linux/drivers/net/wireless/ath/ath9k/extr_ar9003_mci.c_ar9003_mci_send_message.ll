; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64 }
%struct.ath_common = type { i32 }

@AR_MCI_INTERRUPT_EN = common dso_local global i64 0, align 8
@AR_BTCOEX_CTRL = common dso_local global i64 0, align 8
@AR_BTCOEX_CTRL_MCI_MODE_EN = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"MCI Not sending 0x%x. MCI is not enabled. full_sleep = %d\0A\00", align 1
@ATH9K_PM_FULL_SLEEP = common dso_local global i64 0, align 8
@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"MCI Don't send message 0x%x. BT is in sleep state\0A\00", align 1
@AR_MCI_INTERRUPT_RAW = common dso_local global i64 0, align 8
@AR_MCI_INTERRUPT_SW_MSG_DONE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_MSG_FAIL_MASK = common dso_local global i32 0, align 4
@AR_MCI_TX_PAYLOAD0 = common dso_local global i64 0, align 8
@AR_MCI_COMMAND0 = common dso_local global i64 0, align 8
@MCI_FLAG_DISABLE_TIMESTAMP = common dso_local global i32 0, align 4
@AR_MCI_COMMAND0_DISABLE_TIMESTAMP = common dso_local global i32 0, align 4
@AR_MCI_COMMAND0_LEN = common dso_local global i32 0, align 4
@AR_MCI_COMMAND0_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_send_message(%struct.ath_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ath_common*, align 8
  %17 = alloca %struct.ath9k_hw_mci*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %16, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ath9k_hw_mci* %26, %struct.ath9k_hw_mci** %17, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %28 = load i64, i64* @AR_MCI_INTERRUPT_EN, align 8
  %29 = call i32 @REG_READ(%struct.ath_hw* %27, i64 %28)
  store i32 %29, i32* %20, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %31 = load i64, i64* @AR_BTCOEX_CTRL, align 8
  %32 = call i32 @REG_READ(%struct.ath_hw* %30, i64 %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp eq i32 %33, -559038737
  br i1 %34, label %40, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* @AR_BTCOEX_CTRL_MCI_MODE_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35, %7
  %41 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %42 = load i32, i32* @MCI, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATH9K_PM_FULL_SLEEP, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %41, i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @ar9003_mci_queue_unsent_gpm(%struct.ath_hw* %52, i32 %53, i32* %54, i32 1)
  store i32 0, i32* %8, align 4
  br label %159

56:                                               ; preds = %35
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %17, align 8
  %61 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MCI_BT_SLEEP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %67 = load i32, i32* @MCI, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %66, i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @ar9003_mci_queue_unsent_gpm(%struct.ath_hw* %70, i32 %71, i32* %72, i32 1)
  store i32 0, i32* %8, align 4
  br label %159

74:                                               ; preds = %59, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %80 = load i64, i64* @AR_MCI_INTERRUPT_EN, align 8
  %81 = call i32 @REG_WRITE(%struct.ath_hw* %79, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %84 = load i64, i64* @AR_MCI_INTERRUPT_RAW, align 8
  %85 = load i32, i32* @AR_MCI_INTERRUPT_SW_MSG_DONE, align 4
  %86 = load i32, i32* @AR_MCI_INTERRUPT_MSG_FAIL_MASK, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @REG_WRITE(%struct.ath_hw* %83, i64 %84, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %114

91:                                               ; preds = %82
  store i32 0, i32* %21, align 4
  br label %92

92:                                               ; preds = %110, %91
  %93 = load i32, i32* %21, align 4
  %94 = mul nsw i32 %93, 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %99 = load i64, i64* @AR_MCI_TX_PAYLOAD0, align 8
  %100 = load i32, i32* %21, align 4
  %101 = mul nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @REG_WRITE(%struct.ath_hw* %98, i64 %103, i32 %108)
  br label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %21, align 4
  br label %92

113:                                              ; preds = %92
  br label %114

114:                                              ; preds = %113, %82
  %115 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %116 = load i64, i64* @AR_MCI_COMMAND0, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @MCI_FLAG_DISABLE_TIMESTAMP, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @AR_MCI_COMMAND0_DISABLE_TIMESTAMP, align 4
  %121 = call i32 @SM(i32 %119, i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @AR_MCI_COMMAND0_LEN, align 4
  %124 = call i32 @SM(i32 %122, i32 %123)
  %125 = or i32 %121, %124
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @AR_MCI_COMMAND0_HEADER, align 4
  %128 = call i32 @SM(i32 %126, i32 %127)
  %129 = or i32 %125, %128
  %130 = call i32 @REG_WRITE(%struct.ath_hw* %115, i64 %116, i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %114
  %134 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %135 = load i64, i64* @AR_MCI_INTERRUPT_RAW, align 8
  %136 = load i32, i32* @AR_MCI_INTERRUPT_SW_MSG_DONE, align 4
  %137 = call i32 @ar9003_mci_wait_for_interrupt(%struct.ath_hw* %134, i64 %135, i32 %136, i32 500)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @ar9003_mci_queue_unsent_gpm(%struct.ath_hw* %140, i32 %141, i32* %142, i32 1)
  br label %149

144:                                              ; preds = %133, %114
  %145 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = call i32 @ar9003_mci_queue_unsent_gpm(%struct.ath_hw* %145, i32 %146, i32* %147, i32 0)
  store i32 1, i32* %18, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %154 = load i64, i64* @AR_MCI_INTERRUPT_EN, align 8
  %155 = load i32, i32* %20, align 4
  %156 = call i32 @REG_WRITE(%struct.ath_hw* %153, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %157, %65, %40
  %160 = load i32, i32* %8, align 4
  ret i32 %160
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @ar9003_mci_queue_unsent_gpm(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ar9003_mci_wait_for_interrupt(%struct.ath_hw*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
