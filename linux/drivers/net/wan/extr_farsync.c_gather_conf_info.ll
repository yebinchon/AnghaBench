; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_gather_conf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_gather_conf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fst_card_info = type { i64, i64, i64, i32 }
%struct.fst_port_info = type { i32 }
%struct.fstioc_info = type { i64, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@LINUX_VERSION_CODE = common dso_local global i32 0, align 4
@FST_GEN_HDLC = common dso_local global i32 0, align 4
@FST_RUNNING = common dso_local global i64 0, align 8
@FSTVAL_ALL = common dso_local global i32 0, align 4
@FSTVAL_CARD = common dso_local global i32 0, align 4
@portConfig = common dso_local global %struct.TYPE_6__* null, align 8
@v24IpSts = common dso_local global i32* null, align 8
@v24OpSts = common dso_local global i32* null, align 8
@clockStatus = common dso_local global i32* null, align 8
@cableStatus = common dso_local global i32 0, align 4
@cardMode = common dso_local global i32 0, align 4
@smcFirmwareVersion = common dso_local global i32 0, align 4
@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@FST_TYPE_TE1 = common dso_local global i64 0, align 8
@suConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@suStatus = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FSTVAL_DEBUG = common dso_local global i32 0, align 4
@fst_debug_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*, %struct.fstioc_info*)* @gather_conf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_conf_info(%struct.fst_card_info* %0, %struct.fst_port_info* %1, %struct.fstioc_info* %2) #0 {
  %4 = alloca %struct.fst_card_info*, align 8
  %5 = alloca %struct.fst_port_info*, align 8
  %6 = alloca %struct.fstioc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %4, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %5, align 8
  store %struct.fstioc_info* %2, %struct.fstioc_info** %6, align 8
  %8 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %9 = call i32 @memset(%struct.fstioc_info* %8, i32 0, i32 296)
  %10 = load %struct.fst_port_info*, %struct.fst_port_info** %5, align 8
  %11 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @LINUX_VERSION_CODE, align 4
  %14 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %15 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %14, i32 0, i32 39
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %17 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %20 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %19, i32 0, i32 38
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %22 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %25 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %27 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %30 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @FST_GEN_HDLC, align 4
  %32 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %33 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %32, i32 0, i32 37
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %36 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %38 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FST_RUNNING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @FSTVAL_ALL, align 4
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @FSTVAL_CARD, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %49 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @portConfig, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @FST_RDW(%struct.fst_card_info* %50, i32 %56)
  %58 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %59 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %58, i32 0, i32 35
  store i8* %57, i8** %59, align 8
  %60 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @portConfig, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @FST_RDB(%struct.fst_card_info* %60, i32 %66)
  %68 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %69 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %68, i32 0, i32 34
  store i8* %67, i8** %69, align 8
  %70 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @portConfig, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @FST_RDL(%struct.fst_card_info* %70, i32 %76)
  %78 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %79 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %78, i32 0, i32 27
  store i8* %77, i8** %79, align 8
  %80 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @portConfig, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @FST_RDB(%struct.fst_card_info* %80, i32 %86)
  %88 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %89 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %88, i32 0, i32 33
  store i8* %87, i8** %89, align 8
  %90 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %91 = load i32*, i32** @v24IpSts, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @FST_RDL(%struct.fst_card_info* %90, i32 %95)
  %97 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %98 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %97, i32 0, i32 32
  store i8* %96, i8** %98, align 8
  %99 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %100 = load i32*, i32** @v24OpSts, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @FST_RDL(%struct.fst_card_info* %99, i32 %104)
  %106 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %107 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %106, i32 0, i32 31
  store i8* %105, i8** %107, align 8
  %108 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %109 = load i32*, i32** @clockStatus, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @FST_RDW(%struct.fst_card_info* %108, i32 %113)
  %115 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %116 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %115, i32 0, i32 30
  store i8* %114, i8** %116, align 8
  %117 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %118 = load i32, i32* @cableStatus, align 4
  %119 = call i8* @FST_RDW(%struct.fst_card_info* %117, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %122 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %124 = load i32, i32* @cardMode, align 4
  %125 = call i8* @FST_RDW(%struct.fst_card_info* %123, i32 %124)
  %126 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %127 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %126, i32 0, i32 29
  store i8* %125, i8** %127, align 8
  %128 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %129 = load i32, i32* @smcFirmwareVersion, align 4
  %130 = call i8* @FST_RDL(%struct.fst_card_info* %128, i32 %129)
  %131 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %132 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %131, i32 0, i32 28
  store i8* %130, i8** %132, align 8
  %133 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %134 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @FST_FAMILY_TXU, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %46
  %139 = load %struct.fst_port_info*, %struct.fst_port_info** %5, align 8
  %140 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %145 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, 1
  %148 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %149 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  br label %163

150:                                              ; preds = %138
  %151 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %152 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = ashr i32 %153, 1
  %155 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %156 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %158 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, 1
  %161 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %162 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %150, %143
  br label %164

164:                                              ; preds = %163, %46
  %165 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %166 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @FST_TYPE_TE1, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %295

170:                                              ; preds = %164
  %171 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 15), align 4
  %173 = call i8* @FST_RDL(%struct.fst_card_info* %171, i32 %172)
  %174 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %175 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %174, i32 0, i32 27
  store i8* %173, i8** %175, align 8
  %176 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 14), align 4
  %178 = call i8* @FST_RDB(%struct.fst_card_info* %176, i32 %177)
  %179 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %180 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %179, i32 0, i32 26
  store i8* %178, i8** %180, align 8
  %181 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 13), align 4
  %183 = call i8* @FST_RDB(%struct.fst_card_info* %181, i32 %182)
  %184 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %185 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %184, i32 0, i32 25
  store i8* %183, i8** %185, align 8
  %186 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 12), align 4
  %188 = call i8* @FST_RDB(%struct.fst_card_info* %186, i32 %187)
  %189 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %190 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %189, i32 0, i32 24
  store i8* %188, i8** %190, align 8
  %191 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 11), align 4
  %193 = call i8* @FST_RDB(%struct.fst_card_info* %191, i32 %192)
  %194 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %195 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %194, i32 0, i32 23
  store i8* %193, i8** %195, align 8
  %196 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 10), align 4
  %198 = call i8* @FST_RDB(%struct.fst_card_info* %196, i32 %197)
  %199 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %200 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %199, i32 0, i32 22
  store i8* %198, i8** %200, align 8
  %201 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 9), align 4
  %203 = call i8* @FST_RDB(%struct.fst_card_info* %201, i32 %202)
  %204 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %205 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %204, i32 0, i32 21
  store i8* %203, i8** %205, align 8
  %206 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 8), align 4
  %208 = call i8* @FST_RDB(%struct.fst_card_info* %206, i32 %207)
  %209 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %210 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %209, i32 0, i32 20
  store i8* %208, i8** %210, align 8
  %211 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 7), align 4
  %213 = call i8* @FST_RDB(%struct.fst_card_info* %211, i32 %212)
  %214 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %215 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %214, i32 0, i32 19
  store i8* %213, i8** %215, align 8
  %216 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 6), align 4
  %218 = call i8* @FST_RDB(%struct.fst_card_info* %216, i32 %217)
  %219 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %220 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %219, i32 0, i32 18
  store i8* %218, i8** %220, align 8
  %221 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 5), align 4
  %223 = call i8* @FST_RDB(%struct.fst_card_info* %221, i32 %222)
  %224 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %225 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %224, i32 0, i32 17
  store i8* %223, i8** %225, align 8
  %226 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 4), align 4
  %228 = call i8* @FST_RDB(%struct.fst_card_info* %226, i32 %227)
  %229 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %230 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %229, i32 0, i32 16
  store i8* %228, i8** %230, align 8
  %231 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 3), align 4
  %233 = call i8* @FST_RDB(%struct.fst_card_info* %231, i32 %232)
  %234 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %235 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %234, i32 0, i32 15
  store i8* %233, i8** %235, align 8
  %236 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 2), align 4
  %238 = call i8* @FST_RDB(%struct.fst_card_info* %236, i32 %237)
  %239 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %240 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %239, i32 0, i32 14
  store i8* %238, i8** %240, align 8
  %241 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 1), align 4
  %243 = call i8* @FST_RDB(%struct.fst_card_info* %241, i32 %242)
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %170
  %246 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @suConfig, i32 0, i32 0), align 4
  %248 = call i8* @FST_RDB(%struct.fst_card_info* %246, i32 %247)
  %249 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %250 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %249, i32 0, i32 13
  store i8* %248, i8** %250, align 8
  br label %254

251:                                              ; preds = %170
  %252 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %253 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %252, i32 0, i32 13
  store i8* null, i8** %253, align 8
  br label %254

254:                                              ; preds = %251, %245
  %255 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 7), align 4
  %257 = call i8* @FST_RDL(%struct.fst_card_info* %255, i32 %256)
  %258 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %259 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %258, i32 0, i32 12
  store i8* %257, i8** %259, align 8
  %260 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 6), align 4
  %262 = call i8* @FST_RDL(%struct.fst_card_info* %260, i32 %261)
  %263 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %264 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %263, i32 0, i32 11
  store i8* %262, i8** %264, align 8
  %265 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %266 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 5), align 4
  %267 = call i8* @FST_RDL(%struct.fst_card_info* %265, i32 %266)
  %268 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %269 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %268, i32 0, i32 10
  store i8* %267, i8** %269, align 8
  %270 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 4), align 4
  %272 = call i8* @FST_RDL(%struct.fst_card_info* %270, i32 %271)
  %273 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %274 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %273, i32 0, i32 9
  store i8* %272, i8** %274, align 8
  %275 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 3), align 4
  %277 = call i8* @FST_RDL(%struct.fst_card_info* %275, i32 %276)
  %278 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %279 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %278, i32 0, i32 8
  store i8* %277, i8** %279, align 8
  %280 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 2), align 4
  %282 = call i8* @FST_RDB(%struct.fst_card_info* %280, i32 %281)
  %283 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %284 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %283, i32 0, i32 7
  store i8* %282, i8** %284, align 8
  %285 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %286 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 1), align 4
  %287 = call i8* @FST_RDB(%struct.fst_card_info* %285, i32 %286)
  %288 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %289 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %288, i32 0, i32 6
  store i8* %287, i8** %289, align 8
  %290 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suStatus, i32 0, i32 0), align 4
  %292 = call i8* @FST_RDB(%struct.fst_card_info* %290, i32 %291)
  %293 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %294 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %293, i32 0, i32 5
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %254, %164
  ret void
}

declare dso_local i32 @memset(%struct.fstioc_info*, i32, i32) #1

declare dso_local i8* @FST_RDW(%struct.fst_card_info*, i32) #1

declare dso_local i8* @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i8* @FST_RDL(%struct.fst_card_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
