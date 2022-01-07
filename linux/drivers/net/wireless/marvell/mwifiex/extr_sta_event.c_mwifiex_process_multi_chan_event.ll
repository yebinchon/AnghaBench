; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_multi_chan_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_multi_chan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i32, i32, i64 }
%struct.sk_buff = type { i32, i64 }
%struct.mwifiex_ie_types_multi_chan_info = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mwifiex_ie_types_mc_group_info = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mwifiex_ie_types_header = type { i32, i32 }

@TLV_TYPE_MULTI_CHAN_INFO = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unknown TLV in chan_info event\0A\00", align 1
@EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"multi chan operation %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"over\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"wrong tlv: tlvLen=%d,\09tlvBufLeft=%d\0A\00", align 1
@TLV_TYPE_MC_GROUP_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"wrong tlv type: 0x%x\0A\00", align 1
@BSS_NUM_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Invalid bss_type bss_num\09in multi channel event\0A\00", align 1
@MWIFIEX_USB = common dso_local global i64 0, align 8
@MWIFIEX_USB_EP_DATA = common dso_local global i64 0, align 8
@MWIFIEX_USB_EP_DATA_CH2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_process_multi_chan_event(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mwifiex_ie_types_multi_chan_info*, align 8
  %6 = alloca %struct.mwifiex_ie_types_mc_group_info*, align 8
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca %struct.mwifiex_ie_types_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mwifiex_private*, align 8
  %17 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %19, align 8
  store %struct.mwifiex_adapter* %20, %struct.mwifiex_adapter** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr i8, i8* %30, i64 4
  %32 = bitcast i8* %31 to %struct.mwifiex_ie_types_multi_chan_info*
  store %struct.mwifiex_ie_types_multi_chan_info* %32, %struct.mwifiex_ie_types_multi_chan_info** %5, align 8
  %33 = load %struct.mwifiex_ie_types_multi_chan_info*, %struct.mwifiex_ie_types_multi_chan_info** %5, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ie_types_multi_chan_info, %struct.mwifiex_ie_types_multi_chan_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = load i64, i64* @TLV_TYPE_MULTI_CHAN_INFO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 16
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %2
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %46 = load i32, i32* @ERROR, align 4
  %47 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %45, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %201

48:                                               ; preds = %40
  %49 = load %struct.mwifiex_ie_types_multi_chan_info*, %struct.mwifiex_ie_types_multi_chan_info** %5, align 8
  %50 = getelementptr inbounds %struct.mwifiex_ie_types_multi_chan_info, %struct.mwifiex_ie_types_multi_chan_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @le16_to_cpu(i32 %51)
  %53 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %54 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %56 = load i32, i32* @EVENT, align 4
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %63 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 16
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load %struct.mwifiex_ie_types_multi_chan_info*, %struct.mwifiex_ie_types_multi_chan_info** %5, align 8
  %69 = getelementptr inbounds %struct.mwifiex_ie_types_multi_chan_info, %struct.mwifiex_ie_types_multi_chan_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %71, %struct.mwifiex_ie_types_header** %8, align 8
  br label %72

72:                                               ; preds = %172, %48
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %73, 8
  br i1 %74, label %75, label %188

75:                                               ; preds = %72
  %76 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %8, align 8
  %77 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le16_to_cpu(i32 %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %8, align 8
  %82 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le16_to_cpu(i32 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 8, %87
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ugt i64 %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %75
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %93, i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32 %96)
  br label %188

98:                                               ; preds = %75
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @TLV_TYPE_MC_GROUP_INFO, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %103, i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %188

107:                                              ; preds = %98
  %108 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %8, align 8
  %109 = bitcast %struct.mwifiex_ie_types_header* %108 to %struct.mwifiex_ie_types_mc_group_info*
  store %struct.mwifiex_ie_types_mc_group_info* %109, %struct.mwifiex_ie_types_mc_group_info** %6, align 8
  %110 = load %struct.mwifiex_ie_types_mc_group_info*, %struct.mwifiex_ie_types_mc_group_info** %6, align 8
  %111 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, %struct.mwifiex_ie_types_mc_group_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %169, %107
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %172

117:                                              ; preds = %113
  %118 = load %struct.mwifiex_ie_types_mc_group_info*, %struct.mwifiex_ie_types_mc_group_info** %6, align 8
  %119 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, %struct.mwifiex_ie_types_mc_group_info* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 4
  store i32 %125, i32* %13, align 4
  %126 = load %struct.mwifiex_ie_types_mc_group_info*, %struct.mwifiex_ie_types_mc_group_info** %6, align 8
  %127 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, %struct.mwifiex_ie_types_mc_group_info* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @BSS_NUM_MASK, align 4
  %134 = and i32 %132, %133
  store i32 %134, i32* %14, align 4
  %135 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter* %135, i32 %136, i32 %137)
  store %struct.mwifiex_private* %138, %struct.mwifiex_private** %16, align 8
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %140 = icmp ne %struct.mwifiex_private* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %117
  %142 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %143 = load i32, i32* @ERROR, align 4
  %144 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %142, i32 %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %169

145:                                              ; preds = %117
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %147 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MWIFIEX_USB, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %145
  %152 = load %struct.mwifiex_ie_types_mc_group_info*, %struct.mwifiex_ie_types_mc_group_info** %6, align 8
  %153 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, %struct.mwifiex_ie_types_mc_group_info* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %17, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* @MWIFIEX_USB_EP_DATA, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* @MWIFIEX_USB_EP_DATA_CH2, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159, %151
  %164 = load i64, i64* %17, align 8
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %166 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %159
  br label %168

168:                                              ; preds = %167, %145
  br label %169

169:                                              ; preds = %168, %141
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %113

172:                                              ; preds = %113
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 8, %174
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = sub i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %9, align 4
  %180 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %8, align 8
  %181 = bitcast %struct.mwifiex_ie_types_header* %180 to i64*
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = getelementptr inbounds i64, i64* %184, i64 8
  %186 = bitcast i64* %185 to i8*
  %187 = bitcast i8* %186 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %187, %struct.mwifiex_ie_types_header** %8, align 8
  br label %72

188:                                              ; preds = %102, %92, %72
  %189 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %190 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @MWIFIEX_USB, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %188
  %195 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %196 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %195, i32 0, i32 1
  store i32 1, i32* %196, align 8
  %197 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %198 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %197, i32 0, i32 2
  store i32 1, i32* %198, align 4
  %199 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %200 = call i32 @mwifiex_multi_chan_resync(%struct.mwifiex_adapter* %199)
  br label %201

201:                                              ; preds = %44, %194, %188
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv_by_id(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_multi_chan_resync(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
