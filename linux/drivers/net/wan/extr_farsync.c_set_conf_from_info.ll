; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_set_conf_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_set_conf_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i64, i64 }
%struct.fstioc_info = type { i32, i64, i32, i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32 }

@FSTVAL_PROTO = common dso_local global i32 0, align 4
@FST_RAW = common dso_local global i64 0, align 8
@FST_GEN_HDLC = common dso_local global i64 0, align 8
@FSTVAL_CABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FSTVAL_SPEED = common dso_local global i32 0, align 4
@FSTVAL_PHASE = common dso_local global i32 0, align 4
@portConfig = common dso_local global %struct.TYPE_4__* null, align 8
@FSTVAL_MODE = common dso_local global i32 0, align 4
@cardMode = common dso_local global i32 0, align 4
@FSTVAL_TE1 = common dso_local global i32 0, align 4
@suConfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@FRAMING_E1 = common dso_local global i8 0, align 1
@E1 = common dso_local global i64 0, align 8
@T1 = common dso_local global i64 0, align 8
@FRAMING_T1 = common dso_local global i8 0, align 1
@J1 = common dso_local global i64 0, align 8
@FRAMING_J1 = common dso_local global i8 0, align 1
@FSTVAL_DEBUG = common dso_local global i32 0, align 4
@fst_debug_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fst_card_info*, %struct.fst_port_info*, %struct.fstioc_info*)* @set_conf_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_conf_from_info(%struct.fst_card_info* %0, %struct.fst_port_info* %1, %struct.fstioc_info* %2) #0 {
  %4 = alloca %struct.fst_card_info*, align 8
  %5 = alloca %struct.fst_port_info*, align 8
  %6 = alloca %struct.fstioc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.fst_card_info* %0, %struct.fst_card_info** %4, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %5, align 8
  store %struct.fstioc_info* %2, %struct.fstioc_info** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %10 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FSTVAL_PROTO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %17 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FST_RAW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @FST_RAW, align 8
  %23 = load %struct.fst_port_info*, %struct.fst_port_info** %5, align 8
  %24 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load i64, i64* @FST_GEN_HDLC, align 8
  %27 = load %struct.fst_port_info*, %struct.fst_port_info** %5, align 8
  %28 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %32 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FSTVAL_CABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %42 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FSTVAL_SPEED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %52 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FSTVAL_PHASE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @portConfig, align 8
  %60 = load %struct.fst_port_info*, %struct.fst_port_info** %5, align 8
  %61 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %67 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @FST_WRB(%struct.fst_card_info* %58, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %57, %50
  %71 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %72 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FSTVAL_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %79 = load i32, i32* @cardMode, align 4
  %80 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %81 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %80, i32 0, i32 20
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @FST_WRW(%struct.fst_card_info* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %77, %70
  %85 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %86 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FSTVAL_TE1, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %226

91:                                               ; preds = %84
  %92 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 16), align 4
  %94 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %95 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %94, i32 0, i32 3
  %96 = load i8, i8* %95, align 4
  %97 = call i32 @FST_WRL(%struct.fst_card_info* %92, i32 %93, i8 zeroext %96)
  %98 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 15), align 4
  %100 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %101 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @FST_WRB(%struct.fst_card_info* %98, i32 %99, i32 %102)
  %104 = load i8, i8* @FRAMING_E1, align 1
  store i8 %104, i8* %8, align 1
  %105 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %106 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @E1, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %91
  %111 = load i8, i8* @FRAMING_E1, align 1
  store i8 %111, i8* %8, align 1
  br label %112

112:                                              ; preds = %110, %91
  %113 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %114 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @T1, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i8, i8* @FRAMING_T1, align 1
  store i8 %119, i8* %8, align 1
  br label %120

120:                                              ; preds = %118, %112
  %121 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %122 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @J1, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i8, i8* @FRAMING_J1, align 1
  store i8 %127, i8* %8, align 1
  br label %128

128:                                              ; preds = %126, %120
  %129 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 14), align 4
  %131 = load i8, i8* %8, align 1
  %132 = zext i8 %131 to i32
  %133 = call i32 @FST_WRB(%struct.fst_card_info* %129, i32 %130, i32 %132)
  %134 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 13), align 4
  %136 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %137 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @FST_WRB(%struct.fst_card_info* %134, i32 %135, i32 %138)
  %140 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 12), align 4
  %142 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %143 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @FST_WRB(%struct.fst_card_info* %140, i32 %141, i32 %144)
  %146 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 11), align 4
  %148 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %149 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @FST_WRB(%struct.fst_card_info* %146, i32 %147, i32 %150)
  %152 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 10), align 4
  %154 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %155 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @FST_WRB(%struct.fst_card_info* %152, i32 %153, i32 %156)
  %158 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 9), align 4
  %160 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %161 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @FST_WRB(%struct.fst_card_info* %158, i32 %159, i32 %162)
  %164 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 8), align 4
  %166 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %167 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @FST_WRB(%struct.fst_card_info* %164, i32 %165, i32 %168)
  %170 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 7), align 4
  %172 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %173 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %172, i32 0, i32 12
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @FST_WRB(%struct.fst_card_info* %170, i32 %171, i32 %174)
  %176 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 6), align 4
  %178 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %179 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @FST_WRB(%struct.fst_card_info* %176, i32 %177, i32 %180)
  %182 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 5), align 4
  %184 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %185 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %184, i32 0, i32 14
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @FST_WRB(%struct.fst_card_info* %182, i32 %183, i32 %186)
  %188 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 4), align 4
  %190 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %191 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @FST_WRB(%struct.fst_card_info* %188, i32 %189, i32 %192)
  %194 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 3), align 4
  %196 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %197 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %196, i32 0, i32 16
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @FST_WRB(%struct.fst_card_info* %194, i32 %195, i32 %198)
  %200 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 2), align 4
  %202 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %203 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @FST_WRB(%struct.fst_card_info* %200, i32 %201, i32 %204)
  %206 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %207 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %206, i32 0, i32 18
  %208 = load i8, i8* %207, align 8
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %128
  %211 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 1), align 4
  %213 = call i32 @FST_WRB(%struct.fst_card_info* %211, i32 %212, i32 1)
  br label %218

214:                                              ; preds = %128
  %215 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 1), align 4
  %217 = call i32 @FST_WRB(%struct.fst_card_info* %215, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @suConfig, i32 0, i32 0), align 4
  %221 = load %struct.fstioc_info*, %struct.fstioc_info** %6, align 8
  %222 = getelementptr inbounds %struct.fstioc_info, %struct.fstioc_info* %221, i32 0, i32 18
  %223 = load i8, i8* %222, align 8
  %224 = sext i8 %223 to i32
  %225 = call i32 @FST_WRB(%struct.fst_card_info* %219, i32 %220, i32 %224)
  br label %226

226:                                              ; preds = %218, %84
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @FST_WRW(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @FST_WRL(%struct.fst_card_info*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
