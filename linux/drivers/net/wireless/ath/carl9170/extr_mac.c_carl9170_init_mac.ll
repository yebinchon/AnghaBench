; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@AR9170_MAC_REG_ACK_EXTENSION = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RETRY_MAX = common dso_local global i32 0, align 4
@AR9170_MAC_REG_FRAMETYPE_FILTER = common dso_local global i32 0, align 4
@AR9170_MAC_FTF_MONITOR = common dso_local global i32 0, align 4
@AR9170_MAC_REG_SNIFFER = common dso_local global i32 0, align 4
@AR9170_MAC_SNIFFER_DEFAULTS = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RX_THRESHOLD = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RX_PE_DELAY = common dso_local global i32 0, align 4
@AR9170_MAC_REG_EIFS_AND_SIFS = common dso_local global i32 0, align 4
@AR9170_MAC_REG_SLOT_TIME = common dso_local global i32 0, align 4
@AR9170_MAC_REG_TID_CFACK_CFEND_RATE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_TXOP_DURATION = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_HT1 = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BACKOFF_PROTECT = common dso_local global i32 0, align 4
@AR9170_MAC_REG_AMPDU_FACTOR = common dso_local global i32 0, align 4
@AR9170_MAC_REG_AMPDU_DENSITY = common dso_local global i32 0, align 4
@AR9170_MAC_FTF_DEFAULTS = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RX_CONTROL = common dso_local global i32 0, align 4
@AR9170_MAC_RX_CTRL_DEAGG = common dso_local global i32 0, align 4
@AR9170_MAC_RX_CTRL_SHORT_FILTER = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BASIC_RATE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_MANDATORY_RATE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RTS_CTS_RATE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_ACK_TPC = common dso_local global i32 0, align 4
@AR9170_MAC_REG_AMPDU_RX_THRESH = common dso_local global i32 0, align 4
@AR9170_MAC_REG_MISC_680 = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RX_TIMEOUT = common dso_local global i32 0, align 4
@AR9170_MAC_REG_TXRX_MPI = common dso_local global i32 0, align 4
@AR9170_MAC_REG_FCS_SELECT = common dso_local global i32 0, align 4
@AR9170_MAC_FCS_FIFO_PROT = common dso_local global i32 0, align 4
@AR9170_MAC_REG_TXOP_NOT_ENOUGH_IND = common dso_local global i32 0, align 4
@AR9170_MAC_REG_GROUP_HASH_TBL_L = common dso_local global i32 0, align 4
@AR9170_MAC_REG_GROUP_HASH_TBL_H = common dso_local global i32 0, align 4
@AR9170_MAC_REG_PRETBTT = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_init_mac(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %3 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %4 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %3)
  %5 = call i32 @carl9170_regwrite(i32 1848832, i32 3)
  %6 = load i32, i32* @AR9170_MAC_REG_ACK_EXTENSION, align 4
  %7 = call i32 @carl9170_regwrite(i32 %6, i32 64)
  %8 = load i32, i32* @AR9170_MAC_REG_RETRY_MAX, align 4
  %9 = call i32 @carl9170_regwrite(i32 %8, i32 0)
  %10 = load i32, i32* @AR9170_MAC_REG_FRAMETYPE_FILTER, align 4
  %11 = load i32, i32* @AR9170_MAC_FTF_MONITOR, align 4
  %12 = call i32 @carl9170_regwrite(i32 %10, i32 %11)
  %13 = load i32, i32* @AR9170_MAC_REG_SNIFFER, align 4
  %14 = load i32, i32* @AR9170_MAC_SNIFFER_DEFAULTS, align 4
  %15 = call i32 @carl9170_regwrite(i32 %13, i32 %14)
  %16 = load i32, i32* @AR9170_MAC_REG_RX_THRESHOLD, align 4
  %17 = call i32 @carl9170_regwrite(i32 %16, i32 794496)
  %18 = load i32, i32* @AR9170_MAC_REG_RX_PE_DELAY, align 4
  %19 = call i32 @carl9170_regwrite(i32 %18, i32 112)
  %20 = load i32, i32* @AR9170_MAC_REG_EIFS_AND_SIFS, align 4
  %21 = call i32 @carl9170_regwrite(i32 %20, i32 169099264)
  %22 = load i32, i32* @AR9170_MAC_REG_SLOT_TIME, align 4
  %23 = call i32 @carl9170_regwrite(i32 %22, i32 9216)
  %24 = load i32, i32* @AR9170_MAC_REG_TID_CFACK_CFEND_RATE, align 4
  %25 = call i32 @carl9170_regwrite(i32 %24, i32 1502609408)
  %26 = load i32, i32* @AR9170_MAC_REG_TXOP_DURATION, align 4
  %27 = call i32 @carl9170_regwrite(i32 %26, i32 513)
  %28 = load i32, i32* @AR9170_MAC_REG_BCN_HT1, align 4
  %29 = call i32 @carl9170_regwrite(i32 %28, i32 134218096)
  %30 = load i32, i32* @AR9170_MAC_REG_BACKOFF_PROTECT, align 4
  %31 = call i32 @carl9170_regwrite(i32 %30, i32 261)
  %32 = load i32, i32* @AR9170_MAC_REG_AMPDU_FACTOR, align 4
  %33 = call i32 @carl9170_regwrite(i32 %32, i32 524298)
  %34 = load i32, i32* @AR9170_MAC_REG_AMPDU_DENSITY, align 4
  %35 = call i32 @carl9170_regwrite(i32 %34, i32 1313287)
  %36 = load i32, i32* @AR9170_MAC_REG_FRAMETYPE_FILTER, align 4
  %37 = load i32, i32* @AR9170_MAC_FTF_DEFAULTS, align 4
  %38 = call i32 @carl9170_regwrite(i32 %36, i32 %37)
  %39 = load i32, i32* @AR9170_MAC_REG_RX_CONTROL, align 4
  %40 = load i32, i32* @AR9170_MAC_RX_CTRL_DEAGG, align 4
  %41 = load i32, i32* @AR9170_MAC_RX_CTRL_SHORT_FILTER, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @carl9170_regwrite(i32 %39, i32 %42)
  %44 = load i32, i32* @AR9170_MAC_REG_BASIC_RATE, align 4
  %45 = call i32 @carl9170_regwrite(i32 %44, i32 5391)
  %46 = load i32, i32* @AR9170_MAC_REG_MANDATORY_RATE, align 4
  %47 = call i32 @carl9170_regwrite(i32 %46, i32 5391)
  %48 = load i32, i32* @AR9170_MAC_REG_RTS_CTS_RATE, align 4
  %49 = call i32 @carl9170_regwrite(i32 %48, i32 196659)
  %50 = load i32, i32* @AR9170_MAC_REG_ACK_TPC, align 4
  %51 = call i32 @carl9170_regwrite(i32 %50, i32 67124254)
  %52 = load i32, i32* @AR9170_MAC_REG_AMPDU_RX_THRESH, align 4
  %53 = call i32 @carl9170_regwrite(i32 %52, i32 65535)
  %54 = load i32, i32* @AR9170_MAC_REG_MISC_680, align 4
  %55 = call i32 @carl9170_regwrite(i32 %54, i32 15728648)
  %56 = load i32, i32* @AR9170_MAC_REG_RX_TIMEOUT, align 4
  %57 = call i32 @carl9170_regwrite(i32 %56, i32 0)
  %58 = load i32, i32* @AR9170_MAC_REG_TXRX_MPI, align 4
  %59 = call i32 @carl9170_regwrite(i32 %58, i32 1114129)
  %60 = load i32, i32* @AR9170_MAC_REG_FCS_SELECT, align 4
  %61 = load i32, i32* @AR9170_MAC_FCS_FIFO_PROT, align 4
  %62 = call i32 @carl9170_regwrite(i32 %60, i32 %61)
  %63 = load i32, i32* @AR9170_MAC_REG_TXOP_NOT_ENOUGH_IND, align 4
  %64 = call i32 @carl9170_regwrite(i32 %63, i32 337514312)
  %65 = load i32, i32* @AR9170_MAC_REG_GROUP_HASH_TBL_L, align 4
  %66 = call i32 @carl9170_regwrite(i32 %65, i32 -1)
  %67 = load i32, i32* @AR9170_MAC_REG_GROUP_HASH_TBL_H, align 4
  %68 = call i32 @carl9170_regwrite(i32 %67, i32 -1)
  %69 = load i32, i32* @AR9170_MAC_REG_PRETBTT, align 4
  %70 = call i32 @carl9170_regwrite(i32 %69, i32 0)
  %71 = load i32, i32* @AR9170_MAC_REG_BCN_PERIOD, align 4
  %72 = call i32 @carl9170_regwrite(i32 %71, i32 0)
  %73 = call i32 (...) @carl9170_regwrite_finish()
  %74 = call i32 (...) @carl9170_regwrite_result()
  ret i32 %74
}

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
