; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.myri10ge_priv = type { i32, %struct.myri10ge_slice_state*, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_9__*, i64 }
%struct.myri10ge_slice_state = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__*, i32* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.rtnl_link_stats64 = type { i32 }

@MYRI10GE_NET_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @myri10ge_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.myri10ge_priv*, align 8
  %8 = alloca %struct.myri10ge_slice_state*, align 8
  %9 = alloca %struct.rtnl_link_stats64, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.myri10ge_priv* %13, %struct.myri10ge_priv** %7, align 8
  %14 = call i32 @memset(%struct.rtnl_link_stats64* %9, i32 0, i32 4)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @myri10ge_get_stats(%struct.net_device* %15, %struct.rtnl_link_stats64* %9)
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %31, %3
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @MYRI10GE_NET_STATS_LEN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = bitcast %struct.rtnl_link_stats64* %9 to i32*
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %36 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %45 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %44, i32 0, i32 11
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %56 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %65 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %74 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %83 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %92 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %101 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %110 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %119 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %128 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %127, i32 0, i32 1
  %129 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %128, align 8
  %130 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %129, i64 0
  store %struct.myri10ge_slice_state* %130, %struct.myri10ge_slice_state** %8, align 8
  %131 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %132 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %131, i32 0, i32 3
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 11
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @ntohl(i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %144 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %143, i32 0, i32 3
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ntohl(i32 %147)
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %156 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %155, i32 0, i32 3
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @ntohl(i32 %159)
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %168 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @ntohl(i32 %171)
  %173 = trunc i64 %172 to i32
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %180 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %179, i32 0, i32 3
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @ntohl(i32 %183)
  %185 = trunc i64 %184 to i32
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  %191 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %192 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %191, i32 0, i32 3
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @ntohl(i32 %195)
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %204 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %203, i32 0, i32 3
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @ntohl(i32 %207)
  %209 = trunc i64 %208 to i32
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %209, i32* %214, align 4
  %215 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %216 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %215, i32 0, i32 3
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @ntohl(i32 %219)
  %221 = trunc i64 %220 to i32
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %228 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %227, i32 0, i32 3
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @ntohl(i32 %231)
  %233 = trunc i64 %232 to i32
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  store i32 %233, i32* %238, align 4
  %239 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %240 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %239, i32 0, i32 3
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @ntohl(i32 %243)
  %245 = trunc i64 %244 to i32
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store i32 %245, i32* %250, align 4
  %251 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %252 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %251, i32 0, i32 3
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @ntohl(i32 %255)
  %257 = trunc i64 %256 to i32
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %11, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %257, i32* %262, align 4
  %263 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %264 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %263, i32 0, i32 3
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @ntohl(i32 %267)
  %269 = trunc i64 %268 to i32
  %270 = load i32*, i32** %6, align 8
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %269, i32* %274, align 4
  store i32 0, i32* %10, align 4
  br label %275

275:                                              ; preds = %384, %34
  %276 = load i32, i32* %10, align 4
  %277 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %278 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %387

281:                                              ; preds = %275
  %282 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %283 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %282, i32 0, i32 1
  %284 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %284, i64 %286
  store %struct.myri10ge_slice_state* %287, %struct.myri10ge_slice_state** %8, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load i32*, i32** %6, align 8
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32 %288, i32* %293, align 4
  %294 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %295 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = trunc i64 %297 to i32
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %11, align 4
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  store i32 %298, i32* %303, align 4
  %304 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %305 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load i32*, i32** %6, align 8
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %11, align 4
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  store i32 %308, i32* %313, align 4
  %314 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %315 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = load i32*, i32** %6, align 8
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %11, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  store i32 %318, i32* %323, align 4
  %324 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %325 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %11, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %11, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  store i32 %328, i32* %333, align 4
  %334 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %335 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = trunc i64 %337 to i32
  %339 = load i32*, i32** %6, align 8
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %11, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  store i32 %338, i32* %343, align 4
  %344 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %345 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %11, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %11, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  store i32 %348, i32* %353, align 4
  %354 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %355 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = load i32*, i32** %6, align 8
  %360 = load i32, i32* %11, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %11, align 4
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  store i32 %358, i32* %363, align 4
  %364 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %365 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = trunc i64 %367 to i32
  %369 = load i32*, i32** %6, align 8
  %370 = load i32, i32* %11, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %11, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %368, i32* %373, align 4
  %374 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %375 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = trunc i64 %377 to i32
  %379 = load i32*, i32** %6, align 8
  %380 = load i32, i32* %11, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %11, align 4
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  store i32 %378, i32* %383, align 4
  br label %384

384:                                              ; preds = %281
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %275

387:                                              ; preds = %275
  ret void
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.rtnl_link_stats64*, i32, i32) #1

declare dso_local i32 @myri10ge_get_stats(%struct.net_device*, %struct.rtnl_link_stats64*) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
