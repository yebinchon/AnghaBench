; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_mpi_receive_802_11.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_mpi_receive_802_11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_16__*, i32*, %struct.TYPE_18__*, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.sk_buff = type { i32, i32, i32*, i32 }
%struct.rx_hdr = type { i64*, i64, i64 }

@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad size %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"gaplen too big. Problems will follow...\00", align 1
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@PKTSIZE = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @mpi_receive_802_11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_receive_802_11(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_hdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %13 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %18, i8** %11, align 8
  %19 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %20 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy_fromio(%struct.TYPE_17__* %3, i32 %24, i32 16)
  %26 = bitcast %struct.rx_hdr* %8 to i8*
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @memcpy(i8* %26, i8* %27, i32 24)
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 24
  store i8* %30, i8** %11, align 8
  %31 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @le16_to_cpu(i64 %32)
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %40 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le16_to_cpu(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @AIRO_DEF_MTU, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %54 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %53, i32 0, i32 2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @airo_print_err(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %160

60:                                               ; preds = %45
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %160

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = call i32 @get_unaligned(i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @header_len(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 2
  %74 = call %struct.sk_buff* @dev_alloc_skb(i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %64
  %78 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %79 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %160

85:                                               ; preds = %64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32* @skb_put(%struct.sk_buff* %86, i32 %89)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load i8*, i8** %11, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @memcpy(i8* %92, i8* %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %11, align 8
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 24
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 6
  store i8* %104, i8** %11, align 8
  br label %105

105:                                              ; preds = %102, %85
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @get_unaligned_le16(i8* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  store i8* %109, i8** %11, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = icmp sle i32 %113, 8
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %11, align 8
  br label %127

120:                                              ; preds = %112
  %121 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %122 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %121, i32 0, i32 2
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @airo_print_err(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127, %105
  %129 = load i32*, i32** %10, align 8
  %130 = bitcast i32* %129 to i8*
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8*, i8** %11, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @memcpy(i8* %133, i8* %134, i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %11, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @skb_reset_mac_header(%struct.sk_buff* %141)
  %143 = load i32, i32* @PACKET_OTHERHOST, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  %146 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %147 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 2
  store i32* %148, i32** %150, align 8
  %151 = load i32, i32* @ETH_P_802_2, align 4
  %152 = call i32 @htons(i32 %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @CHECKSUM_NONE, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call i32 @netif_rx(%struct.sk_buff* %158)
  br label %160

160:                                              ; preds = %128, %77, %63, %52
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* @PKTSIZE, align 4
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  store i32 %167, i32* %168, align 4
  %169 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %170 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %169, i32 0, i32 0
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @memcpy_toio(i32 %174, %struct.TYPE_17__* %3, i32 16)
  br label %176

176:                                              ; preds = %164, %160
  ret void
}

declare dso_local i32 @memcpy_fromio(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @header_len(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_toio(i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
