; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_rxba_sync_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_rxba_sync_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ie_types_rxba_sync = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mwifiex_rx_reorder_tbl = type { i32 }

@EVT_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RXBA_SYNC event:\00", align 1
@TLV_TYPE_RXBA_SYNC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Wrong TLV id=0x%x\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%pM tid=%d seq_num=%d bitmap_len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can not find rx_reorder_tbl!\00", align 1
@MAX_TID_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"drop packet,seq=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Fail to drop packet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_11n_rxba_sync_event(%struct.mwifiex_private* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mwifiex_ie_types_rxba_sync*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mwifiex_rx_reorder_tbl*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = bitcast i64* %19 to i8*
  %21 = bitcast i8* %20 to %struct.mwifiex_ie_types_rxba_sync*
  store %struct.mwifiex_ie_types_rxba_sync* %21, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %16, align 4
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EVT_D, align 4
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @mwifiex_dbg_dump(i32 %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64* %28, i64 %29)
  br label %31

31:                                               ; preds = %158, %3
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 32
  br i1 %34, label %35, label %172

35:                                               ; preds = %31
  %36 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %37 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %42 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @le16_to_cpu(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @TLV_TYPE_RXBA_SYNC, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %52, i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %172

56:                                               ; preds = %35
  %57 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %58 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_cpu(i32 %59)
  store i64 %60, i64* %14, align 8
  %61 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %62 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @le16_to_cpu(i32 %63)
  store i64 %64, i64* %15, align 8
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INFO, align 4
  %69 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %70 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %73 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %74, i64 %75, i64 %76)
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %79 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %80 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %83 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.mwifiex_rx_reorder_tbl* @mwifiex_11n_get_rx_reorder_tbl(%struct.mwifiex_private* %78, i32 %81, i32 %84)
  store %struct.mwifiex_rx_reorder_tbl* %85, %struct.mwifiex_rx_reorder_tbl** %10, align 8
  %86 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %10, align 8
  %87 = icmp ne %struct.mwifiex_rx_reorder_tbl* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %56
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %172

94:                                               ; preds = %56
  store i64 0, i64* %11, align 8
  br label %95

95:                                               ; preds = %155, %94
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %158

99:                                               ; preds = %95
  store i64 0, i64* %12, align 8
  br label %100

100:                                              ; preds = %151, %99
  %101 = load i64, i64* %12, align 8
  %102 = icmp slt i64 %101, 8
  br i1 %102, label %103, label %154

103:                                              ; preds = %100
  %104 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %105 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %12, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 1, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %150

115:                                              ; preds = %103
  %116 = load i32, i32* @MAX_TID_VALUE, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %11, align 8
  %121 = mul nsw i64 %120, 8
  %122 = add nsw i64 %119, %121
  %123 = load i64, i64* %12, align 8
  %124 = add nsw i64 %122, %123
  %125 = and i64 %118, %124
  store i64 %125, i64* %13, align 8
  %126 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %127 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ERROR, align 4
  %130 = load i64, i64* %13, align 8
  %131 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %128, i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %135 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %138 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, %struct.mwifiex_ie_types_rxba_sync* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @mwifiex_11n_rx_reorder_pkt(%struct.mwifiex_private* %132, i64 %133, i32 %136, i32 %139, i32 0, i32* null)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %115
  %144 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %145 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ERROR, align 4
  %148 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %146, i32 %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %115
  br label %150

150:                                              ; preds = %149, %103
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %12, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %12, align 8
  br label %100

154:                                              ; preds = %100
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %11, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %11, align 8
  br label %95

158:                                              ; preds = %95
  %159 = load i64, i64* %9, align 8
  %160 = add i64 32, %159
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %16, align 4
  %165 = load %struct.mwifiex_ie_types_rxba_sync*, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  %166 = bitcast %struct.mwifiex_ie_types_rxba_sync* %165 to i64*
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = getelementptr inbounds i64, i64* %168, i64 32
  store i64* %169, i64** %18, align 8
  %170 = load i64*, i64** %18, align 8
  %171 = bitcast i64* %170 to %struct.mwifiex_ie_types_rxba_sync*
  store %struct.mwifiex_ie_types_rxba_sync* %171, %struct.mwifiex_ie_types_rxba_sync** %7, align 8
  br label %31

172:                                              ; preds = %49, %88, %31
  ret void
}

declare dso_local i32 @mwifiex_dbg_dump(i32, i32, i8*, i64*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local %struct.mwifiex_rx_reorder_tbl* @mwifiex_11n_get_rx_reorder_tbl(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(%struct.mwifiex_private*, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
