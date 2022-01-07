; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_skb_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_skb_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i8* }
%struct.sk_buff = type { i32 }

@IEEE802154_MTU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"received erroneously large msdu length!\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"skb buffer length = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"security level: %#03x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"srcAddrMode: %#03x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"srcPanId: %#06x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"dstAddrMode: %#03x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dstPanId: %#06x\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to push mac hdr onto skb!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64, i8**)* @ca8210_skb_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_skb_rx(%struct.ieee802154_hw* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ieee802154_hdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ca8210_priv*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 23
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %17, i32 0, i32 0
  %19 = load %struct.ca8210_priv*, %struct.ca8210_priv** %18, align 8
  store %struct.ca8210_priv* %19, %struct.ca8210_priv** %13, align 8
  %20 = load i32, i32* @IEEE802154_MTU, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 80
  %23 = trunc i64 %22 to i32
  %24 = call %struct.sk_buff* @dev_alloc_skb(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %250

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call i32 @skb_reserve(%struct.sk_buff* %31, i32 80)
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 22
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @IEEE802154_MTU, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %42 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %250

50:                                               ; preds = %30
  %51 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %52 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %58 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %240

62:                                               ; preds = %50
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 29, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %73 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %62
  %85 = load i8**, i8*** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 30, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i8**, i8*** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 31, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  %100 = call i32 @memcpy(i32* %94, i8** %99, i32 8)
  %101 = load i8**, i8*** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 39, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %84, %62
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %117 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_dbg(i32* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i8**, i8*** %7, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %131 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_dbg(i32* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i8**, i8*** %7, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 3
  %142 = call i32 @memcpy(i32* %139, i8** %141, i32 8)
  %143 = load i8**, i8*** %7, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 11
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %150 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @dev_dbg(i32* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = load i8**, i8*** %7, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 12
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %164 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_dbg(i32* %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i8**, i8*** %7, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 14
  %175 = call i32 @memcpy(i32* %172, i8** %174, i32 8)
  %176 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %109
  %183 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 1, i32* %184, align 4
  br label %188

185:                                              ; preds = %109
  %186 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  store i32 0, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i8**, i8*** %7, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 1
  %191 = load i8*, i8** %190, align 8
  %192 = load i8**, i8*** %7, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 12
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %191, %194
  br i1 %195, label %204, label %196

196:                                              ; preds = %188
  %197 = load i8**, i8*** %7, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 2
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** %7, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 13
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %199, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %196, %188
  %205 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  store i32 1, i32* %206, align 4
  br label %210

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %8, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %222 = call i32 @ieee802154_hdr_push(%struct.sk_buff* %221, %struct.ieee802154_hdr* %8)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %210
  %226 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  %227 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = call i32 @dev_crit(i32* %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = call i32 @kfree_skb(%struct.sk_buff* %231)
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %4, align 4
  br label %250

234:                                              ; preds = %210
  %235 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %236 = call i32 @skb_reset_mac_header(%struct.sk_buff* %235)
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %234, %61
  %241 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %242 = load i8**, i8*** %7, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 29
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @skb_put_data(%struct.sk_buff* %241, i8** %243, i32 %244)
  %246 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %248 = load i8*, i8** %11, align 8
  %249 = call i32 @ieee802154_rx_irqsafe(%struct.ieee802154_hw* %246, %struct.sk_buff* %247, i8* %248)
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %240, %225, %40, %27
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @ieee802154_hdr_push(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8**, i32) #1

declare dso_local i32 @ieee802154_rx_irqsafe(%struct.ieee802154_hw*, %struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
