; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, %struct.TYPE_4__, %struct.sk_buff*, %struct.TYPE_3__, %struct.mwifiex_private** }
%struct.TYPE_4__ = type { i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64* }
%struct.mwifiex_private = type { i32, i32, i64 }
%struct.mwifiex_rxinfo = type { i32, i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@EVENT_ID_MASK = common dso_local global i32 0, align 4
@EVENT_RADAR_DETECTED = common dso_local global i32 0, align 4
@DBG_CMD_NUM = common dso_local global i32 0, align 4
@EVT_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Event Buf:\00", align 1
@EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"EVENT: cause: %#x\0A\00", align 1
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_process_event(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_rxinfo*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %10 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %11 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %9, i32 %10)
  store %struct.mwifiex_private* %11, %struct.mwifiex_private** %5, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EVENT_ID_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @EVENT_RADAR_DETECTED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %30, i32 0, i32 5
  %32 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %32, i64 %34
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %35, align 8
  store %struct.mwifiex_private* %36, %struct.mwifiex_private** %5, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %38 = icmp ne %struct.mwifiex_private* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %29
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %41 = call i64 @mwifiex_is_11h_active(%struct.mwifiex_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 255
  %48 = shl i32 %47, 16
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 24
  %54 = or i32 %48, %53
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %63

59:                                               ; preds = %39, %29
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %23

63:                                               ; preds = %43, %23
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %7, align 4
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* @DBG_CMD_NUM, align 4
  %74 = srem i32 %72, %73
  %75 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %83, i64 %88
  store i64 %79, i64* %89, align 8
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @EVENT_GET_BSS_NUM(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @EVENT_GET_BSS_TYPE(i32 %93)
  %95 = call %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter* %90, i32 %92, i32 %94)
  store %struct.mwifiex_private* %95, %struct.mwifiex_private** %5, align 8
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %97 = icmp ne %struct.mwifiex_private* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %64
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %100 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %101 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %99, i32 %100)
  store %struct.mwifiex_private* %101, %struct.mwifiex_private** %5, align 8
  br label %102

102:                                              ; preds = %98, %64
  %103 = load i32, i32* @EVENT_ID_MASK, align 4
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %111, label %135

111:                                              ; preds = %102
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call %struct.mwifiex_rxinfo* @MWIFIEX_SKB_RXCB(%struct.sk_buff* %112)
  store %struct.mwifiex_rxinfo* %113, %struct.mwifiex_rxinfo** %8, align 8
  %114 = load %struct.mwifiex_rxinfo*, %struct.mwifiex_rxinfo** %8, align 8
  %115 = call i32 @memset(%struct.mwifiex_rxinfo* %114, i32 0, i32 8)
  %116 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %117 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mwifiex_rxinfo*, %struct.mwifiex_rxinfo** %8, align 8
  %120 = getelementptr inbounds %struct.mwifiex_rxinfo, %struct.mwifiex_rxinfo* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %122 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mwifiex_rxinfo*, %struct.mwifiex_rxinfo** %8, align 8
  %125 = getelementptr inbounds %struct.mwifiex_rxinfo, %struct.mwifiex_rxinfo* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %127 = load i32, i32* @EVT_D, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter* %126, i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %111, %102
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %137 = load i32, i32* @EVENT, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %136, i32 %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %141 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %147 = call i32 @mwifiex_process_uap_event(%struct.mwifiex_private* %146)
  store i32 %147, i32* %3, align 4
  br label %151

148:                                              ; preds = %135
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %150 = call i32 @mwifiex_process_sta_event(%struct.mwifiex_private* %149)
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %153 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %155 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %154, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %155, align 8
  %156 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %157 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)*, i32 (%struct.mwifiex_adapter.0*, %struct.sk_buff*)** %158, align 8
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %161 = bitcast %struct.mwifiex_adapter* %160 to %struct.mwifiex_adapter.0*
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = call i32 %159(%struct.mwifiex_adapter.0* %161, %struct.sk_buff* %162)
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i64 @mwifiex_is_11h_active(%struct.mwifiex_private*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @EVENT_GET_BSS_NUM(i32) #1

declare dso_local i32 @EVENT_GET_BSS_TYPE(i32) #1

declare dso_local %struct.mwifiex_rxinfo* @MWIFIEX_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_rxinfo*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter*, i32, i8*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i32 @mwifiex_process_uap_event(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_process_sta_event(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
