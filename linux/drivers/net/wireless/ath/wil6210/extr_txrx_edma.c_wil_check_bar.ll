; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_check_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_check_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i64, %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }
%struct.sk_buff = type { i8* }
%struct.wil_net_stats = type { i32 }

@IEEE80211_FTYPE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"RX descriptor with invalid mid %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"BAR: MID %d CID %d TID %d Seq 0x%03x\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Unhandled non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RxS \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"Rx \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i8*, i32, %struct.sk_buff*, %struct.wil_net_stats*)* @wil_check_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_check_bar(%struct.wil6210_priv* %0, i8* %1, i32 %2, %struct.sk_buff* %3, %struct.wil_net_stats* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wil_net_stats*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wil6210_vif*, align 8
  %18 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store %struct.wil_net_stats* %4, %struct.wil_net_stats** %11, align 8
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @wil_rx_status_get_frame_type(%struct.wil6210_priv* %19, i8* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @IEEE80211_FTYPE_DATA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %120

26:                                               ; preds = %5
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @wil_rx_status_get_fc1(%struct.wil6210_priv* %27, i8* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @wil_rx_status_get_mid(i8* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @wil_rx_status_get_tid(i8* %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @wil_rx_status_get_seq(%struct.wil6210_priv* %34, i8* %35)
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %39 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %38, i32 0, i32 1
  %40 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %40, i64 %42
  %44 = load %struct.wil6210_vif*, %struct.wil6210_vif** %43, align 8
  store %struct.wil6210_vif* %44, %struct.wil6210_vif** %17, align 8
  %45 = load %struct.wil6210_vif*, %struct.wil6210_vif** %17, align 8
  %46 = icmp ne %struct.wil6210_vif* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %26
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 (%struct.wil6210_priv*, i8*, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %120

58:                                               ; preds = %26
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 (%struct.wil6210_priv*, i8*, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %67 = icmp ne %struct.wil_net_stats* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %70 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %58
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @wil_is_back_req(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 (%struct.wil6210_priv*, i8*, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %86 = load %struct.wil6210_vif*, %struct.wil6210_vif** %17, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @wil_rx_bar(%struct.wil6210_priv* %85, %struct.wil6210_vif* %86, i32 %87, i32 %88, i32 %89)
  br label %117

91:                                               ; preds = %73
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %93 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i64 4, i64 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %18, align 4
  %99 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 (%struct.wil6210_priv*, i8*, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %99, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i64 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 32, i32 4, i8* %107, i32 %108, i32 0)
  %110 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %115 = call i32 @skb_headlen(%struct.sk_buff* %114)
  %116 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 16, i32 1, i8* %113, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %91, %77
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %51, %25
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @wil_rx_status_get_frame_type(%struct.wil6210_priv*, i8*) #1

declare dso_local i64 @wil_rx_status_get_fc1(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_rx_status_get_mid(i8*) #1

declare dso_local i32 @wil_rx_status_get_tid(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wil_rx_status_get_seq(%struct.wil6210_priv*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i64, ...) #1

declare dso_local i64 @wil_is_back_req(i64) #1

declare dso_local i32 @wil_rx_bar(%struct.wil6210_priv*, %struct.wil6210_vif*, i32, i32, i32) #1

declare dso_local i32 @wil_hex_dump_txrx(i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
