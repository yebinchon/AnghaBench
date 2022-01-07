; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_tx_pause_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_tx_pause_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.mwifiex_ie_types_header = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"tx_pause event while disconnected; bss_role=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"wrong tlv: tlvLen=%d, tlvBufLeft=%d\0A\00", align 1
@TLV_TYPE_TX_PAUSE = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_process_tx_pause_event(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mwifiex_ie_types_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ERROR, align 4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %16, i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr i8, i8* %32, i64 4
  %34 = bitcast i8* %33 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %34, %struct.mwifiex_ie_types_header** %5, align 8
  br label %35

35:                                               ; preds = %79, %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 8
  br i1 %37, label %38, label %95

38:                                               ; preds = %35
  %39 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %5, align 8
  %40 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %5, align 8
  %44 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 8, %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %56, i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %95

61:                                               ; preds = %38
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @TLV_TYPE_TX_PAUSE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %67 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %66)
  %68 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %72 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %5, align 8
  %73 = call i32 @mwifiex_process_sta_tx_pause(%struct.mwifiex_private* %71, %struct.mwifiex_ie_types_header* %72)
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %76 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %5, align 8
  %77 = call i32 @mwifiex_process_uap_tx_pause(%struct.mwifiex_private* %75, %struct.mwifiex_ie_types_header* %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 8, %81
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %5, align 8
  %88 = bitcast %struct.mwifiex_ie_types_header* %87 to i32*
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  %93 = bitcast i32* %92 to i8*
  %94 = bitcast i8* %93 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %94, %struct.mwifiex_ie_types_header** %5, align 8
  br label %35

95:                                               ; preds = %13, %53, %35
  ret void
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_process_sta_tx_pause(%struct.mwifiex_private*, %struct.mwifiex_ie_types_header*) #1

declare dso_local i32 @mwifiex_process_uap_tx_pause(%struct.mwifiex_private*, %struct.mwifiex_ie_types_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
