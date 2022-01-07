; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_process_event_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_process_event_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i64, i64, %struct.sk_buff*, i32*, %struct.pcie_service_card* }
%struct.sk_buff = type { i32* }
%struct.pcie_service_card = type { i64, %struct.mwifiex_evt_buf_desc**, %struct.sk_buff**, %struct.TYPE_2__ }
%struct.mwifiex_evt_buf_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64, i32 }

@MWIFIEX_EVTBD_MASK = common dso_local global i64 0, align 8
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"info: Event being processed,\09do not process this interrupt just yet\0A\00", align 1
@MWIFIEX_MAX_EVT_BD = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"info: Invalid read pointer...\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"EventReady: failed to read reg->evt_wrptr\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"info: EventReady: Initial <Rd: 0x%x, Wr: 0x%x>\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"info: Read Index: %d\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"info: Event length: %d\0A\00", align 1
@MWIFIEX_EVENT_HEADER_LEN = common dso_local global i32 0, align 4
@MAX_EVENT_SIZE = common dso_local global i32 0, align 4
@PCIE_CPU_INT_EVENT = common dso_local global i32 0, align 4
@CPU_INTR_EVENT_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_process_event_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_process_event_ready(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mwifiex_evt_buf_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 5
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %14, align 8
  store %struct.pcie_service_card* %15, %struct.pcie_service_card** %4, align 8
  %16 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %17 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %18, align 8
  store %struct.mwifiex_pcie_card_reg* %19, %struct.mwifiex_pcie_card_reg** %5, align 8
  %20 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %21 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MWIFIEX_EVTBD_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %26 = call i32 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = call i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %38 = load i32, i32* @EVENT, align 4
  %39 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %186

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @MWIFIEX_MAX_EVT_BD, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %46 = load i32, i32* @ERROR, align 4
  %47 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %45, i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %186

48:                                               ; preds = %40
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %50 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %51 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %49, i32 %52, i64* %7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %56, i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %186

59:                                               ; preds = %48
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %61 = load i32, i32* @EVENT, align 4
  %62 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %63 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %60, i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %64, i64 %65)
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @MWIFIEX_EVTBD_MASK, align 8
  %69 = and i64 %67, %68
  %70 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %71 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MWIFIEX_EVTBD_MASK, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %69, %74
  br i1 %75, label %90, label %76

76:                                               ; preds = %59
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %77, %80
  %82 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %83 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %86 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %84, %87
  %89 = icmp eq i64 %81, %88
  br i1 %89, label %90, label %174

90:                                               ; preds = %76, %59
  store i32 0, i32* %11, align 4
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %92 = load i32, i32* @INFO, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %91, i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  %95 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %96 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %95, i32 0, i32 2
  %97 = load %struct.sk_buff**, %struct.sk_buff*** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %97, i64 %98
  %100 = load %struct.sk_buff*, %struct.sk_buff** %99, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %10, align 8
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %104 = call i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter* %101, %struct.sk_buff* %102, i32 %103)
  %105 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %106 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %105, i32 0, i32 2
  %107 = load %struct.sk_buff**, %struct.sk_buff*** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %107, i64 %108
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  %110 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %111 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %110, i32 0, i32 1
  %112 = load %struct.mwifiex_evt_buf_desc**, %struct.mwifiex_evt_buf_desc*** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %112, i64 %113
  %115 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %114, align 8
  store %struct.mwifiex_evt_buf_desc* %115, %struct.mwifiex_evt_buf_desc** %9, align 8
  %116 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %9, align 8
  %117 = call i32 @memset(%struct.mwifiex_evt_buf_desc* %116, i32 0, i32 4)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = call i64 @get_unaligned_le32(i32* %124)
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @memcpy(i32* %11, i32* %131, i32 4)
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @skb_trim(%struct.sk_buff* %135, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @skb_pull(%struct.sk_buff* %138, i64 %141)
  %143 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %144 = load i32, i32* @EVENT, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %143, i32 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @MWIFIEX_EVENT_HEADER_LEN, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %90
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @MAX_EVENT_SIZE, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @MWIFIEX_EVENT_HEADER_LEN, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @MWIFIEX_EVENT_HEADER_LEN, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 @memcpy(i32* %157, i32* %163, i32 %166)
  br label %168

168:                                              ; preds = %154, %150, %90
  %169 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %172, i32 0, i32 3
  store %struct.sk_buff* %171, %struct.sk_buff** %173, align 8
  br label %185

174:                                              ; preds = %76
  %175 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %176 = load i32, i32* @PCIE_CPU_INT_EVENT, align 4
  %177 = load i32, i32* @CPU_INTR_EVENT_DONE, align 4
  %178 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %175, i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %182 = load i32, i32* @ERROR, align 4
  %183 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %181, i32 %182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %186

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %168
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %180, %55, %44, %36
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.mwifiex_evt_buf_desc*, i32, i32) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
