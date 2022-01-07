; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1201.c_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1201.c_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.archdr = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.arc_rfc1201, %struct.arc_rfc1201* }
%struct.arc_rfc1201 = type { i32, i32, i64, i64 }
%struct.arcnet_local = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)* }
%struct.TYPE_10__ = type { i32, %struct.Incoming* }
%struct.Incoming = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i8*, %struct.arc_rfc1201*, %struct.net_device* }
%struct.arphdr = type { i32, i32 }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"it's an RFC1201 packet (length=%d)\0A\00", align 1
@MinTU = common dso_local global i32 0, align 4
@RFC1201_HDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"compensating for exception packet\0A\00", align 1
@D_EXTRA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"short RFC1201 exception packet from %02Xh\00", align 1
@D_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"incoming is not split (splitflag=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"aborting assembly (seq=%d) for unsplit packet (splitflag=%d, seq=%d)\0A\00", align 1
@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ARC_P_ARP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"ARP source address was 00h, set to %02Xh\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"ARP source address (%Xh) is fine.\0A\00", align 1
@D_NORMAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"funny-shaped ARP packet. (%Xh, %Xh)\0A\00", align 1
@D_SKB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"packet is split (splitflag=%d, seq=%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"wrong seq number (saddr=%d, expected=%d, seq=%d, splitflag=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"brand new splitpacket (splitflag=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"aborting previous (seq=%d) assembly (splitflag=%d, seq=%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"incoming packet more than 16 segments; dropping. (splitflag=%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"(split) memory squeeze, dropping packet.\0A\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"can't continue split without starting first! (splitflag=%d, seq=%d, aborted=%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"duplicate splitpacket ignored! (splitflag=%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"out-of-order splitpacket, reassembly (seq=%d) aborted (splitflag=%d, seq=%d)\0A\00", align 1
@D_SKB_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"skb: received %d bytes from %02X (unsplit)\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"skb: received %d bytes from %02X (split)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.archdr*, i32)* @rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx(%struct.net_device* %0, i32 %1, %struct.archdr* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.arcnet_local*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.archdr*, align 8
  %12 = alloca %struct.arc_rfc1201*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.Incoming*, align 8
  %16 = alloca %struct.arphdr*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.archdr* %2, %struct.archdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %19)
  store %struct.arcnet_local* %20, %struct.arcnet_local** %9, align 8
  %21 = load %struct.archdr*, %struct.archdr** %7, align 8
  store %struct.archdr* %21, %struct.archdr** %11, align 8
  %22 = load %struct.archdr*, %struct.archdr** %7, align 8
  %23 = getelementptr inbounds %struct.archdr, %struct.archdr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store %struct.arc_rfc1201* %24, %struct.arc_rfc1201** %12, align 8
  %25 = load %struct.archdr*, %struct.archdr** %11, align 8
  %26 = getelementptr inbounds %struct.archdr, %struct.archdr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %30 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.Incoming*, %struct.Incoming** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %32, i64 %34
  store %struct.Incoming* %35, %struct.Incoming** %15, align 8
  %36 = load i32, i32* @D_DURING, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %36, %struct.net_device* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MinTU, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 512, %44
  store i32 %45, i32* %14, align 4
  br label %49

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 256, %47
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %51 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %54, label %83

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %57 = add nsw i32 4, %56
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @D_DURING, align 4
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %60, %struct.net_device* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %68

63:                                               ; preds = %54
  %64 = load i32, i32* @D_EXTRA, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %64, %struct.net_device* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %680

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %14, align 4
  %73 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %74 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)** %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 512, %79
  %81 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %82 = call i32 %76(%struct.net_device* %77, i32 %78, i32 %80, %struct.arc_rfc1201* %81, i32 32)
  br label %83

83:                                               ; preds = %68, %49
  %84 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %85 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %279, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @D_RX, align 4
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %92 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %89, %struct.net_device* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %96 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %95, i32 0, i32 3
  %97 = load %struct.sk_buff*, %struct.sk_buff** %96, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %99, label %134

99:                                               ; preds = %88
  %100 = load i32, i32* @D_EXTRA, align 4
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %103 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %106 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %109 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %100, %struct.net_device* %101, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  %112 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %113 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %116 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %119 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %118, i32 0, i32 3
  %120 = load %struct.sk_buff*, %struct.sk_buff** %119, align 8
  %121 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %120)
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %133 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %132, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %133, align 8
  br label %134

134:                                              ; preds = %99, %88
  %135 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %136 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %139 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @ARC_HDR_SIZE, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @GFP_ATOMIC, align 4
  %144 = call %struct.sk_buff* @alloc_skb(i32 %142, i32 %143)
  store %struct.sk_buff* %144, %struct.sk_buff** %10, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = icmp ne %struct.sk_buff* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %134
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %680

153:                                              ; preds = %134
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @ARC_HDR_SIZE, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @skb_put(%struct.sk_buff* %154, i32 %157)
  %159 = load %struct.net_device*, %struct.net_device** %5, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 3
  store %struct.net_device* %159, %struct.net_device** %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  %164 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %163, align 8
  %165 = bitcast %struct.arc_rfc1201* %164 to %struct.archdr*
  store %struct.archdr* %165, %struct.archdr** %11, align 8
  %166 = load %struct.archdr*, %struct.archdr** %11, align 8
  %167 = getelementptr inbounds %struct.archdr, %struct.archdr* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  store %struct.arc_rfc1201* %168, %struct.arc_rfc1201** %12, align 8
  %169 = load %struct.archdr*, %struct.archdr** %11, align 8
  %170 = load %struct.archdr*, %struct.archdr** %7, align 8
  %171 = call i32 @memcpy(%struct.archdr* %169, %struct.archdr* %170, i32 40)
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp ugt i64 %173, 32
  br i1 %174, label %175, label %196

175:                                              ; preds = %153
  %176 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %177 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)** %178, align 8
  %180 = load %struct.net_device*, %struct.net_device** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %183, 32
  %185 = trunc i64 %184 to i32
  %186 = load %struct.archdr*, %struct.archdr** %11, align 8
  %187 = getelementptr inbounds %struct.archdr, %struct.archdr* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %188, align 8
  %190 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %189, i64 32
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = sub i64 %192, 32
  %194 = trunc i64 %193 to i32
  %195 = call i32 %179(%struct.net_device* %180, i32 %181, i32 %185, %struct.arc_rfc1201* %190, i32 %194)
  br label %196

196:                                              ; preds = %175, %153
  %197 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %198 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ARC_P_ARP, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %263

202:                                              ; preds = %196
  %203 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %204 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to %struct.arphdr*
  store %struct.arphdr* %206, %struct.arphdr** %16, align 8
  %207 = load %struct.arphdr*, %struct.arphdr** %16, align 8
  %208 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %242

211:                                              ; preds = %202
  %212 = load %struct.arphdr*, %struct.arphdr** %16, align 8
  %213 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 4
  br i1 %215, label %216, label %242

216:                                              ; preds = %211
  %217 = load %struct.arphdr*, %struct.arphdr** %16, align 8
  %218 = bitcast %struct.arphdr* %217 to i32*
  %219 = getelementptr inbounds i32, i32* %218, i64 8
  store i32* %219, i32** %17, align 8
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %216
  %224 = load i32, i32* @D_EXTRA, align 4
  %225 = load %struct.net_device*, %struct.net_device** %5, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %224, %struct.net_device* %225, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  %228 = load %struct.net_device*, %struct.net_device** %5, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32*, i32** %17, align 8
  store i32 %233, i32* %234, align 4
  br label %241

235:                                              ; preds = %216
  %236 = load i32, i32* @D_DURING, align 4
  %237 = load %struct.net_device*, %struct.net_device** %5, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %236, %struct.net_device* %237, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %235, %223
  br label %262

242:                                              ; preds = %211, %202
  %243 = load i32, i32* @D_NORMAL, align 4
  %244 = load %struct.net_device*, %struct.net_device** %5, align 8
  %245 = load %struct.arphdr*, %struct.arphdr** %16, align 8
  %246 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.arphdr*, %struct.arphdr** %16, align 8
  %249 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %243, %struct.net_device* %244, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %247, i32 %250)
  %252 = load %struct.net_device*, %struct.net_device** %5, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  %257 = load %struct.net_device*, %struct.net_device** %5, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %242, %241
  br label %263

263:                                              ; preds = %262, %196
  %264 = load i32, i32* @D_SKB, align 4
  %265 = call i64 @BUGLVL(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = load %struct.net_device*, %struct.net_device** %5, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %270 = call i32 @arcnet_dump_skb(%struct.net_device* %268, %struct.sk_buff* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %271

271:                                              ; preds = %267, %263
  %272 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %273 = load %struct.net_device*, %struct.net_device** %5, align 8
  %274 = call i8* @type_trans(%struct.sk_buff* %272, %struct.net_device* %273)
  %275 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %276 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %278 = call i32 @netif_rx(%struct.sk_buff* %277)
  br label %680

279:                                              ; preds = %83
  %280 = load i32, i32* @D_RX, align 4
  %281 = load %struct.net_device*, %struct.net_device** %5, align 8
  %282 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %283 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %286 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %280, %struct.net_device* %281, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %284, i32 %287)
  %289 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %290 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %289, i32 0, i32 3
  %291 = load %struct.sk_buff*, %struct.sk_buff** %290, align 8
  %292 = icmp ne %struct.sk_buff* %291, null
  br i1 %292, label %293, label %335

293:                                              ; preds = %279
  %294 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %295 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %298 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %296, %299
  br i1 %300, label %301, label %335

301:                                              ; preds = %293
  %302 = load i32, i32* @D_EXTRA, align 4
  %303 = load %struct.net_device*, %struct.net_device** %5, align 8
  %304 = load i32, i32* %13, align 4
  %305 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %306 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %309 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %312 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %302, %struct.net_device* %303, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %304, i32 %307, i32 %310, i32 %313)
  %315 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %316 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %315, i32 0, i32 3
  %317 = load %struct.sk_buff*, %struct.sk_buff** %316, align 8
  %318 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %317)
  %319 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %320 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %319, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %320, align 8
  %321 = load %struct.net_device*, %struct.net_device** %5, align 8
  %322 = getelementptr inbounds %struct.net_device, %struct.net_device* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %323, align 4
  %326 = load %struct.net_device*, %struct.net_device** %5, align 8
  %327 = getelementptr inbounds %struct.net_device, %struct.net_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  %331 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %332 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %331, i32 0, i32 2
  store i32 0, i32* %332, align 8
  %333 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %334 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %333, i32 0, i32 1
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %301, %293, %279
  %336 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %337 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, 1
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %473

341:                                              ; preds = %335
  %342 = load i32, i32* @D_RX, align 4
  %343 = load %struct.net_device*, %struct.net_device** %5, align 8
  %344 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %345 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %342, %struct.net_device* %343, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %346)
  %348 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %349 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %348, i32 0, i32 3
  %350 = load %struct.sk_buff*, %struct.sk_buff** %349, align 8
  %351 = icmp ne %struct.sk_buff* %350, null
  br i1 %351, label %352, label %379

352:                                              ; preds = %341
  %353 = load i32, i32* @D_EXTRA, align 4
  %354 = load %struct.net_device*, %struct.net_device** %5, align 8
  %355 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %356 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %359 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %362 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %353, %struct.net_device* %354, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i32 %357, i32 %360, i32 %363)
  %365 = load %struct.net_device*, %struct.net_device** %5, align 8
  %366 = getelementptr inbounds %struct.net_device, %struct.net_device* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 4
  %370 = load %struct.net_device*, %struct.net_device** %5, align 8
  %371 = getelementptr inbounds %struct.net_device, %struct.net_device* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %372, align 4
  %375 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %376 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %375, i32 0, i32 3
  %377 = load %struct.sk_buff*, %struct.sk_buff** %376, align 8
  %378 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %377)
  br label %379

379:                                              ; preds = %352, %341
  %380 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %381 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %384 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %383, i32 0, i32 0
  store i32 %382, i32* %384, align 8
  %385 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %386 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = lshr i32 %387, 1
  %389 = add i32 %388, 2
  %390 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %391 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %390, i32 0, i32 2
  store i32 %389, i32* %391, align 8
  %392 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %393 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %392, i32 0, i32 1
  store i32 1, i32* %393, align 4
  %394 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %395 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = icmp sgt i32 %396, 16
  br i1 %397, label %398, label %421

398:                                              ; preds = %379
  %399 = load i32, i32* @D_EXTRA, align 4
  %400 = load %struct.net_device*, %struct.net_device** %5, align 8
  %401 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %402 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %399, %struct.net_device* %400, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32 %403)
  %405 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %406 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %409 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 0
  store i32 %407, i32* %410, align 8
  %411 = load %struct.net_device*, %struct.net_device** %5, align 8
  %412 = getelementptr inbounds %struct.net_device, %struct.net_device* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %413, align 4
  %416 = load %struct.net_device*, %struct.net_device** %5, align 8
  %417 = getelementptr inbounds %struct.net_device, %struct.net_device* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 4
  br label %680

421:                                              ; preds = %379
  %422 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %423 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = mul nsw i32 508, %424
  %426 = load i32, i32* @ARC_HDR_SIZE, align 4
  %427 = add nsw i32 %425, %426
  %428 = load i32, i32* @GFP_ATOMIC, align 4
  %429 = call %struct.sk_buff* @alloc_skb(i32 %427, i32 %428)
  store %struct.sk_buff* %429, %struct.sk_buff** %10, align 8
  %430 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %431 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %430, i32 0, i32 3
  store %struct.sk_buff* %429, %struct.sk_buff** %431, align 8
  %432 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %433 = icmp ne %struct.sk_buff* %432, null
  br i1 %433, label %449, label %434

434:                                              ; preds = %421
  %435 = load i32, i32* @D_NORMAL, align 4
  %436 = load %struct.net_device*, %struct.net_device** %5, align 8
  %437 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %435, %struct.net_device* %436, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %438 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %439 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %442 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  store i32 %440, i32* %443, align 8
  %444 = load %struct.net_device*, %struct.net_device** %5, align 8
  %445 = getelementptr inbounds %struct.net_device, %struct.net_device* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  br label %680

449:                                              ; preds = %421
  %450 = load %struct.net_device*, %struct.net_device** %5, align 8
  %451 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %452 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %451, i32 0, i32 3
  store %struct.net_device* %450, %struct.net_device** %452, align 8
  %453 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %454 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %453, i32 0, i32 2
  %455 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %454, align 8
  %456 = bitcast %struct.arc_rfc1201* %455 to %struct.archdr*
  store %struct.archdr* %456, %struct.archdr** %11, align 8
  %457 = load %struct.archdr*, %struct.archdr** %11, align 8
  %458 = getelementptr inbounds %struct.archdr, %struct.archdr* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  store %struct.arc_rfc1201* %459, %struct.arc_rfc1201** %12, align 8
  %460 = load %struct.archdr*, %struct.archdr** %11, align 8
  %461 = load %struct.archdr*, %struct.archdr** %7, align 8
  %462 = load i32, i32* @ARC_HDR_SIZE, align 4
  %463 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %464 = add nsw i32 %462, %463
  %465 = call i32 @memcpy(%struct.archdr* %460, %struct.archdr* %461, i32 %464)
  %466 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %467 = load i32, i32* @ARC_HDR_SIZE, align 4
  %468 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %469 = add nsw i32 %467, %468
  %470 = call i32 @skb_put(%struct.sk_buff* %466, i32 %469)
  %471 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %472 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %471, i32 0, i32 0
  store i32 0, i32* %472, align 8
  br label %600

473:                                              ; preds = %335
  %474 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %475 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = lshr i32 %476, 1
  %478 = add i32 %477, 1
  store i32 %478, i32* %18, align 4
  %479 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %480 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %479, i32 0, i32 3
  %481 = load %struct.sk_buff*, %struct.sk_buff** %480, align 8
  %482 = icmp ne %struct.sk_buff* %481, null
  br i1 %482, label %517, label %483

483:                                              ; preds = %473
  %484 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %485 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %489 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = icmp ne i32 %487, %490
  br i1 %491, label %492, label %516

492:                                              ; preds = %483
  %493 = load i32, i32* @D_EXTRA, align 4
  %494 = load %struct.net_device*, %struct.net_device** %5, align 8
  %495 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %496 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %499 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %502 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %493, %struct.net_device* %494, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.15, i64 0, i64 0), i32 %497, i32 %500, i32 %504)
  %506 = load %struct.net_device*, %struct.net_device** %5, align 8
  %507 = getelementptr inbounds %struct.net_device, %struct.net_device* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %508, align 4
  %511 = load %struct.net_device*, %struct.net_device** %5, align 8
  %512 = getelementptr inbounds %struct.net_device, %struct.net_device* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 4
  br label %516

516:                                              ; preds = %492, %483
  br label %680

517:                                              ; preds = %473
  %518 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %519 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %519, align 4
  %522 = load i32, i32* %18, align 4
  %523 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %524 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = icmp ne i32 %522, %525
  br i1 %526, label %527, label %590

527:                                              ; preds = %517
  %528 = load i32, i32* %18, align 4
  %529 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %530 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = sub nsw i32 %531, 1
  %533 = icmp sle i32 %528, %532
  br i1 %533, label %534, label %551

534:                                              ; preds = %527
  %535 = load i32, i32* @D_EXTRA, align 4
  %536 = load %struct.net_device*, %struct.net_device** %5, align 8
  %537 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %538 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %535, %struct.net_device* %536, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 %539)
  %541 = load %struct.net_device*, %struct.net_device** %5, align 8
  %542 = getelementptr inbounds %struct.net_device, %struct.net_device* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %543, align 4
  %546 = load %struct.net_device*, %struct.net_device** %5, align 8
  %547 = getelementptr inbounds %struct.net_device, %struct.net_device* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %548, align 4
  br label %680

551:                                              ; preds = %527
  %552 = load i32, i32* @D_EXTRA, align 4
  %553 = load %struct.net_device*, %struct.net_device** %5, align 8
  %554 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %555 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %558 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %561 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %552, %struct.net_device* %553, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i64 0, i64 0), i32 %556, i32 %559, i32 %562)
  %564 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %12, align 8
  %565 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %568 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %568, i32 0, i32 0
  store i32 %566, i32* %569, align 8
  %570 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %571 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %570, i32 0, i32 3
  %572 = load %struct.sk_buff*, %struct.sk_buff** %571, align 8
  %573 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %572)
  %574 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %575 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %574, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %575, align 8
  %576 = load %struct.net_device*, %struct.net_device** %5, align 8
  %577 = getelementptr inbounds %struct.net_device, %struct.net_device* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %578, align 4
  %581 = load %struct.net_device*, %struct.net_device** %5, align 8
  %582 = getelementptr inbounds %struct.net_device, %struct.net_device* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %583, align 4
  %586 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %587 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %586, i32 0, i32 2
  store i32 0, i32* %587, align 8
  %588 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %589 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %588, i32 0, i32 1
  store i32 0, i32* %589, align 4
  br label %680

590:                                              ; preds = %517
  %591 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %592 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %591, i32 0, i32 3
  %593 = load %struct.sk_buff*, %struct.sk_buff** %592, align 8
  %594 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %593, i32 0, i32 2
  %595 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %594, align 8
  %596 = bitcast %struct.arc_rfc1201* %595 to %struct.archdr*
  store %struct.archdr* %596, %struct.archdr** %11, align 8
  %597 = load %struct.archdr*, %struct.archdr** %11, align 8
  %598 = getelementptr inbounds %struct.archdr, %struct.archdr* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %598, i32 0, i32 0
  store %struct.arc_rfc1201* %599, %struct.arc_rfc1201** %12, align 8
  br label %600

600:                                              ; preds = %590, %449
  %601 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %602 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %601, i32 0, i32 3
  %603 = load %struct.sk_buff*, %struct.sk_buff** %602, align 8
  store %struct.sk_buff* %603, %struct.sk_buff** %10, align 8
  %604 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %605 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %605, i32 0, i32 0
  %607 = load i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201*, i32)** %606, align 8
  %608 = load %struct.net_device*, %struct.net_device** %5, align 8
  %609 = load i32, i32* %6, align 4
  %610 = load i32, i32* %14, align 4
  %611 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %612 = add nsw i32 %610, %611
  %613 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %614 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %613, i32 0, i32 2
  %615 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %614, align 8
  %616 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %617 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %615, i64 %619
  %621 = load i32, i32* %8, align 4
  %622 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %623 = sub nsw i32 %621, %622
  %624 = call i32 %607(%struct.net_device* %608, i32 %609, i32 %612, %struct.arc_rfc1201* %620, i32 %623)
  %625 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %626 = load i32, i32* %8, align 4
  %627 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %628 = sub nsw i32 %626, %627
  %629 = call i32 @skb_put(%struct.sk_buff* %625, i32 %628)
  %630 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %631 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %634 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = icmp eq i32 %632, %635
  br i1 %636, label %637, label %679

637:                                              ; preds = %600
  %638 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %639 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %638, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %639, align 8
  %640 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %641 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %640, i32 0, i32 2
  store i32 0, i32* %641, align 8
  %642 = load %struct.Incoming*, %struct.Incoming** %15, align 8
  %643 = getelementptr inbounds %struct.Incoming, %struct.Incoming* %642, i32 0, i32 1
  store i32 0, i32* %643, align 4
  %644 = load i32, i32* @D_SKB_SIZE, align 4
  %645 = load %struct.net_device*, %struct.net_device** %5, align 8
  %646 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %647 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = load %struct.archdr*, %struct.archdr** %11, align 8
  %650 = getelementptr inbounds %struct.archdr, %struct.archdr* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %644, %struct.net_device* %645, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %648, i32 %652)
  %654 = load i32, i32* @D_SKB_SIZE, align 4
  %655 = load %struct.net_device*, %struct.net_device** %5, align 8
  %656 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %657 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = load %struct.archdr*, %struct.archdr** %11, align 8
  %660 = getelementptr inbounds %struct.archdr, %struct.archdr* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %654, %struct.net_device* %655, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 %658, i32 %662)
  %664 = load i32, i32* @D_SKB, align 4
  %665 = call i64 @BUGLVL(i32 %664)
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %671

667:                                              ; preds = %637
  %668 = load %struct.net_device*, %struct.net_device** %5, align 8
  %669 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %670 = call i32 @arcnet_dump_skb(%struct.net_device* %668, %struct.sk_buff* %669, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %671

671:                                              ; preds = %667, %637
  %672 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %673 = load %struct.net_device*, %struct.net_device** %5, align 8
  %674 = call i8* @type_trans(%struct.sk_buff* %672, %struct.net_device* %673)
  %675 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %676 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %675, i32 0, i32 1
  store i8* %674, i8** %676, align 8
  %677 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %678 = call i32 @netif_rx(%struct.sk_buff* %677)
  br label %679

679:                                              ; preds = %671, %600
  br label %680

680:                                              ; preds = %63, %147, %398, %434, %516, %534, %551, %679, %271
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.archdr*, %struct.archdr*, i32) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arcnet_dump_skb(%struct.net_device*, %struct.sk_buff*, i8*) #1

declare dso_local i8* @type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
