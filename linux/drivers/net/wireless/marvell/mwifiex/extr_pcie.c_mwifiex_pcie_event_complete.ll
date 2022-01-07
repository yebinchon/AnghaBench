; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_event_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_event_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { i64, %struct.sk_buff**, %struct.mwifiex_evt_buf_desc**, %struct.TYPE_2__ }
%struct.mwifiex_evt_buf_desc = type { i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }

@MWIFIEX_EVTBD_MASK = common dso_local global i64 0, align 8
@MWIFIEX_MAX_EVT_BD = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"event_complete: Invalid rdptr 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"event_complete: failed to read reg->evt_wrptr\0A\00", align 1
@MAX_EVENT_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"info: ERROR: buf still valid at index %d, <%p, %p>\0A\00", align 1
@EVENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"info: Updated <Rd: 0x%x, Wr: 0x%x>\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"event_complete: failed to read reg->evt_rdptr\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"info: Check Events Again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, %struct.sk_buff*)* @mwifiex_pcie_event_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_event_complete(%struct.mwifiex_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pcie_service_card*, align 8
  %7 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mwifiex_evt_buf_desc*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 1
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %13, align 8
  store %struct.pcie_service_card* %14, %struct.pcie_service_card** %6, align 8
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %17, align 8
  store %struct.mwifiex_pcie_card_reg* %18, %struct.mwifiex_pcie_card_reg** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %20 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MWIFIEX_EVTBD_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

27:                                               ; preds = %2
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @MWIFIEX_MAX_EVT_BD, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %32, i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %167

38:                                               ; preds = %27
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %40 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %7, align 8
  %41 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %39, i32 %42, i64* %10)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %46, i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %167

49:                                               ; preds = %38
  %50 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %51 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %50, i32 0, i32 1
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %53
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %101, label %57

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @skb_push(%struct.sk_buff* %58, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i64, i64* @MAX_EVENT_SIZE, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call i32 @skb_put(%struct.sk_buff* %63, i64 %68)
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i64, i64* @MAX_EVENT_SIZE, align 8
  %73 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %74 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %70, %struct.sk_buff* %71, i64 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %167

77:                                               ; preds = %57
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %80 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %79, i32 0, i32 1
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %81, i64 %82
  store %struct.sk_buff* %78, %struct.sk_buff** %83, align 8
  %84 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %85 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %84, i32 0, i32 2
  %86 = load %struct.mwifiex_evt_buf_desc**, %struct.mwifiex_evt_buf_desc*** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %86, i64 %87
  %89 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %88, align 8
  store %struct.mwifiex_evt_buf_desc* %89, %struct.mwifiex_evt_buf_desc** %11, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %90)
  %92 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %11, align 8
  %93 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, %struct.mwifiex_evt_buf_desc* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %11, align 8
  %98 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, %struct.mwifiex_evt_buf_desc* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %11, align 8
  %100 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, %struct.mwifiex_evt_buf_desc* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %113

101:                                              ; preds = %49
  %102 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %106 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %105, i32 0, i32 1
  %107 = load %struct.sk_buff**, %struct.sk_buff*** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %107, i64 %108
  %110 = load %struct.sk_buff*, %struct.sk_buff** %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %102, i32 %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %104, %struct.sk_buff* %110, %struct.sk_buff* %111)
  br label %113

113:                                              ; preds = %101, %77
  %114 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %115 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* @MWIFIEX_EVTBD_MASK, align 8
  %119 = and i64 %117, %118
  %120 = load i64, i64* @MWIFIEX_MAX_EVT_BD, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %124 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %7, align 8
  %127 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 %125, %129
  %131 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %7, align 8
  %132 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = xor i64 %130, %134
  %136 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %137 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %122, %113
  %139 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %140 = load i32, i32* @EVENT, align 4
  %141 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %142 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %139, i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %143, i64 %144)
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %147 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %7, align 8
  %148 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %151 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %146, i32 %149, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %138
  %157 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %158 = load i32, i32* @ERROR, align 4
  %159 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %157, i32 %158, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %167

160:                                              ; preds = %138
  %161 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %162 = load i32, i32* @EVENT, align 4
  %163 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %161, i32 %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %164 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %165 = call i32 @mwifiex_pcie_process_event_ready(%struct.mwifiex_adapter* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %160, %156, %76, %45, %31, %26
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i64, i32) #1

declare dso_local i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff*) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_pcie_process_event_ready(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
