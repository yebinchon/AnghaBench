; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_prep_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_prep_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32, i64 }
%struct.ath_common = type { i32 }

@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@AR_MCI_INTERRUPT_EN = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING = common dso_local global i32 0, align 4
@MCI_BT_AWAKE = common dso_local global i64 0, align 8
@AR_MCI_BT_PRI0 = common dso_local global i32 0, align 4
@AR_MCI_BT_PRI1 = common dso_local global i32 0, align 4
@AR_MCI_BT_PRI2 = common dso_local global i32 0, align 4
@AR_MCI_BT_PRI3 = common dso_local global i32 0, align 4
@AR_MCI_BT_PRI = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_RST = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_BT_PRI = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_LNA_INFO = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"MCI WLAN has control over the LNA & BT obeys it\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MCI BT didn't respond to LNA_TRANS\0A\00", align 1
@AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_mci_prep_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_prep_interface(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_hw_mci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath9k_hw_mci* %11, %struct.ath9k_hw_mci** %4, align 8
  store i32 150, i32* %6, align 4
  %12 = load i64, i64* @MCI_BT_SLEEP, align 8
  %13 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %14 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_MCI_INTERRUPT_EN, align 4
  %17 = call i32 @REG_READ(%struct.ath_hw* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = load i32, i32* @AR_MCI_INTERRUPT_EN, align 4
  %20 = call i32 @REG_WRITE(%struct.ath_hw* %18, i32 %19, i32 0)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %25 = call i32 @REG_READ(%struct.ath_hw* %23, i32 %24)
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %21, i32 %22, i32 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %31 = call i32 @REG_READ(%struct.ath_hw* %29, i32 %30)
  %32 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = call i32 @ar9003_mci_remote_reset(%struct.ath_hw* %33, i32 1)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = call i32 @ar9003_mci_send_req_wake(%struct.ath_hw* %35, i32 1)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %39 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %40 = call i64 @ar9003_mci_wait_for_interrupt(%struct.ath_hw* %37, i32 %38, i32 %39, i32 500)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %1
  br label %116

43:                                               ; preds = %1
  %44 = load i64, i64* @MCI_BT_AWAKE, align 8
  %45 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %46 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = call i32 @ar9003_mci_send_sys_waking(%struct.ath_hw* %47, i32 1)
  %49 = call i32 @udelay(i32 10)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = load i32, i32* @AR_MCI_BT_PRI0, align 4
  %52 = call i32 @REG_WRITE(%struct.ath_hw* %50, i32 %51, i32 -1)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %54 = load i32, i32* @AR_MCI_BT_PRI1, align 4
  %55 = call i32 @REG_WRITE(%struct.ath_hw* %53, i32 %54, i32 -1)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = load i32, i32* @AR_MCI_BT_PRI2, align 4
  %58 = call i32 @REG_WRITE(%struct.ath_hw* %56, i32 %57, i32 -1)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = load i32, i32* @AR_MCI_BT_PRI3, align 4
  %61 = call i32 @REG_WRITE(%struct.ath_hw* %59, i32 %60, i32 -1)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = load i32, i32* @AR_MCI_BT_PRI, align 4
  %64 = call i32 @REG_WRITE(%struct.ath_hw* %62, i32 %63, i32 255)
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %67 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_RST, align 4
  %68 = call i32 @REG_WRITE(%struct.ath_hw* %65, i32 %66, i32 %67)
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %71 = load i32, i32* @AR_MCI_INTERRUPT_BT_PRI, align 4
  %72 = call i32 @REG_WRITE(%struct.ath_hw* %69, i32 %70, i32 %71)
  %73 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %74 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %43
  %78 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %79 = call i64 @MCI_ANT_ARCH_PA_LNA_SHARED(%struct.ath9k_hw_mci* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %83 = call i32 @ar9003_mci_send_lna_transfer(%struct.ath_hw* %82, i32 1)
  %84 = call i32 @udelay(i32 5)
  br label %85

85:                                               ; preds = %81, %77, %43
  %86 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %87 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %92 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %90
  %96 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %97 = call i64 @MCI_ANT_ARCH_PA_LNA_SHARED(%struct.ath9k_hw_mci* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %102 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_INFO, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @ar9003_mci_wait_for_interrupt(%struct.ath_hw* %100, i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %108 = load i32, i32* @MCI, align 4
  %109 = call i32 @ath_dbg(%struct.ath_common* %107, i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %114

110:                                              ; preds = %99
  %111 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %112 = load i32, i32* @MCI, align 4
  %113 = call i32 @ath_dbg(%struct.ath_common* %111, i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %95, %90, %85
  br label %116

116:                                              ; preds = %115, %42
  %117 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %4, align 8
  %118 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MCI_BT_AWAKE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %124 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %125 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %126 = call i64 @REG_READ_FIELD(%struct.ath_hw* %123, i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %130 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %131 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING, align 4
  %132 = call i64 @REG_READ_FIELD(%struct.ath_hw* %129, i32 %130, i32 %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %136 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %137 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %138 = call i32 @REG_WRITE(%struct.ath_hw* %135, i32 %136, i32 %137)
  %139 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %140 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %141 = load i32, i32* @AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE, align 4
  %142 = call i32 @REG_WRITE(%struct.ath_hw* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %128, %122, %116
  %144 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %145 = load i32, i32* @AR_MCI_INTERRUPT_EN, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @REG_WRITE(%struct.ath_hw* %144, i32 %145, i32 %146)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_remote_reset(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_req_wake(%struct.ath_hw*, i32) #1

declare dso_local i64 @ar9003_mci_wait_for_interrupt(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ar9003_mci_send_sys_waking(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @MCI_ANT_ARCH_PA_LNA_SHARED(%struct.ath9k_hw_mci*) #1

declare dso_local i32 @ar9003_mci_send_lna_transfer(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
