; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_init_card2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_init_card2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.bttv = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i8*, i8*, i8*, i64, i64, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@UNSET = common dso_local global i64 0, align 8
@BTTV_BOARD_UNKNOWN = common dso_local global i32 0, align 4
@eeprom_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%d: radio detected by subsystem id (CPH05x)\0A\00", align 1
@TUNER_TEMIC_NTSC = common dso_local global i64 0, align 8
@PLL_28 = common dso_local global i64 0, align 8
@bttv_tvcards = common dso_local global %struct.TYPE_8__* null, align 8
@BT848_IFORM_XT0 = common dso_local global i8* null, align 8
@PLL_35 = common dso_local global i64 0, align 8
@BT848_IFORM_XT1 = common dso_local global i8* null, align 8
@PLL_14 = common dso_local global i64 0, align 8
@pll = common dso_local global i32* null, align 8
@tuner = common dso_local global i64* null, align 8
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%d: tuner absent\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%d: tuner type unset\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%d: tuner type=%d\0A\00", align 1
@autoload = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"%d: the autoload option is obsolete\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"%d: use option msp3400, tda7432 or tvaudio to override which audio module should be used\0A\00", align 1
@NO_SVHS = common dso_local global i64 0, align 8
@svhs = common dso_local global i64* null, align 8
@remote = common dso_local global i64* null, align 8
@saa6588 = common dso_local global i64* null, align 8
@bttv_init_card2.addrs = internal constant [3 x i16] [i16 16, i16 17, i16 128], align 2
@.str.6 = private unnamed_addr constant [8 x i8] c"saa6588\00", align 1
@audiodev = common dso_local global i32* null, align 8
@bttv_init_card2.addrs.7 = internal constant [3 x i16] [i16 65, i16 65, i16 128], align 2
@.str.8 = private unnamed_addr constant [8 x i8] c"msp3400\00", align 1
@bttv_init_card2.addrs.9 = internal constant [2 x i16] [i16 64, i16 128], align 2
@.str.10 = private unnamed_addr constant [8 x i8] c"tda7432\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"tvaudio\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%d: unknown audiodev value!\0A\00", align 1
@bttv_init_card2.addrs.13 = internal constant [2 x i16] [i16 64, i16 128], align 2
@.str.14 = private unnamed_addr constant [42 x i8] c"%d: audio absent, no audio device found!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_init_card2(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load i64, i64* @UNSET, align 8
  %5 = load %struct.bttv*, %struct.bttv** %2, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load i32, i32* @BTTV_BOARD_UNKNOWN, align 4
  %8 = load %struct.bttv*, %struct.bttv** %2, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.bttv*, %struct.bttv** %2, align 8
  %15 = load i32, i32* @eeprom_data, align 4
  %16 = call i32 @bttv_readee(%struct.bttv* %14, i32 %15, i32 160)
  %17 = load %struct.bttv*, %struct.bttv** %2, align 8
  %18 = load i32, i32* @eeprom_data, align 4
  %19 = call i32 @identify_by_eeprom(%struct.bttv* %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %125 [
    i32 156, label %25
    i32 155, label %25
    i32 140, label %25
    i32 139, label %25
    i32 169, label %28
    i32 157, label %28
    i32 160, label %28
    i32 172, label %28
    i32 134, label %28
    i32 174, label %28
    i32 168, label %28
    i32 171, label %28
    i32 170, label %28
    i32 173, label %28
    i32 161, label %28
    i32 166, label %31
    i32 165, label %31
    i32 164, label %31
    i32 176, label %37
    i32 175, label %37
    i32 138, label %43
    i32 141, label %46
    i32 133, label %49
    i32 132, label %68
    i32 136, label %68
    i32 158, label %71
    i32 137, label %85
    i32 152, label %97
    i32 151, label %97
    i32 153, label %97
    i32 150, label %97
    i32 149, label %97
    i32 145, label %97
    i32 146, label %97
    i32 147, label %97
    i32 144, label %97
    i32 143, label %97
    i32 142, label %97
    i32 148, label %97
    i32 163, label %104
    i32 154, label %107
    i32 159, label %113
    i32 135, label %116
    i32 162, label %119
    i32 167, label %122
  ]

25:                                               ; preds = %20, %20, %20, %20
  %26 = load %struct.bttv*, %struct.bttv** %2, align 8
  %27 = call i32 @miro_pinnacle_gpio(%struct.bttv* %26)
  br label %125

28:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %29 = load %struct.bttv*, %struct.bttv** %2, align 8
  %30 = call i32 @flyvideo_gpio(%struct.bttv* %29)
  br label %125

31:                                               ; preds = %20, %20, %20
  %32 = load %struct.bttv*, %struct.bttv** %2, align 8
  %33 = load i32, i32* @eeprom_data, align 4
  %34 = call i32 @bttv_readee(%struct.bttv* %32, i32 %33, i32 160)
  %35 = load %struct.bttv*, %struct.bttv** %2, align 8
  %36 = call i32 @hauppauge_eeprom(%struct.bttv* %35)
  br label %125

37:                                               ; preds = %20, %20
  %38 = load %struct.bttv*, %struct.bttv** %2, align 8
  %39 = load i32, i32* @eeprom_data, align 4
  %40 = call i32 @bttv_readee(%struct.bttv* %38, i32 %39, i32 160)
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = call i32 @avermedia_eeprom(%struct.bttv* %41)
  br label %125

43:                                               ; preds = %20
  %44 = load %struct.bttv*, %struct.bttv** %2, align 8
  %45 = call i32 @init_PXC200(%struct.bttv* %44)
  br label %125

46:                                               ; preds = %20
  %47 = load %struct.bttv*, %struct.bttv** %2, align 8
  %48 = call i32 @picolo_tetra_init(%struct.bttv* %47)
  br label %125

49:                                               ; preds = %20
  %50 = load %struct.bttv*, %struct.bttv** %2, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.bttv*, %struct.bttv** %2, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  %54 = load %struct.bttv*, %struct.bttv** %2, align 8
  %55 = getelementptr inbounds %struct.bttv, %struct.bttv* %54, i32 0, i32 18
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 5, i32* %56, align 8
  %57 = load %struct.bttv*, %struct.bttv** %2, align 8
  %58 = getelementptr inbounds %struct.bttv, %struct.bttv* %57, i32 0, i32 18
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 6, i32* %59, align 4
  %60 = load %struct.bttv*, %struct.bttv** %2, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 18
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 3, i32* %62, align 8
  %63 = load %struct.bttv*, %struct.bttv** %2, align 8
  %64 = getelementptr inbounds %struct.bttv, %struct.bttv* %63, i32 0, i32 18
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i32 4, i32* %65, align 4
  %66 = load %struct.bttv*, %struct.bttv** %2, align 8
  %67 = call i32 @tea575x_init(%struct.bttv* %66)
  br label %125

68:                                               ; preds = %20, %20
  %69 = load %struct.bttv*, %struct.bttv** %2, align 8
  %70 = call i32 @terratec_active_radio_upgrade(%struct.bttv* %69)
  br label %125

71:                                               ; preds = %20
  %72 = load %struct.bttv*, %struct.bttv** %2, align 8
  %73 = getelementptr inbounds %struct.bttv, %struct.bttv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 805442639
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.bttv*, %struct.bttv** %2, align 8
  %78 = getelementptr inbounds %struct.bttv, %struct.bttv* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  %79 = load %struct.bttv*, %struct.bttv** %2, align 8
  %80 = getelementptr inbounds %struct.bttv, %struct.bttv* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %76, %71
  br label %125

85:                                               ; preds = %20
  %86 = load %struct.bttv*, %struct.bttv** %2, align 8
  %87 = getelementptr inbounds %struct.bttv, %struct.bttv* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 811602458
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.bttv*, %struct.bttv** %2, align 8
  %92 = getelementptr inbounds %struct.bttv, %struct.bttv* %91, i32 0, i32 1
  store i32 0, i32* %92, align 8
  %93 = load i64, i64* @TUNER_TEMIC_NTSC, align 8
  %94 = load %struct.bttv*, %struct.bttv** %2, align 8
  %95 = getelementptr inbounds %struct.bttv, %struct.bttv* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %85
  br label %125

97:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %98 = load %struct.bttv*, %struct.bttv** %2, align 8
  %99 = load i32, i32* @eeprom_data, align 4
  %100 = call i32 @bttv_readee(%struct.bttv* %98, i32 %99, i32 160)
  %101 = load %struct.bttv*, %struct.bttv** %2, align 8
  %102 = load i32, i32* @eeprom_data, align 4
  %103 = call i32 @osprey_eeprom(%struct.bttv* %101, i32 %102)
  br label %125

104:                                              ; preds = %20
  %105 = load %struct.bttv*, %struct.bttv** %2, align 8
  %106 = call i32 @init_ids_eagle(%struct.bttv* %105)
  br label %125

107:                                              ; preds = %20
  %108 = load %struct.bttv*, %struct.bttv** %2, align 8
  %109 = load i32, i32* @eeprom_data, align 4
  %110 = call i32 @bttv_readee(%struct.bttv* %108, i32 %109, i32 160)
  %111 = load %struct.bttv*, %struct.bttv** %2, align 8
  %112 = call i32 @modtec_eeprom(%struct.bttv* %111)
  br label %125

113:                                              ; preds = %20
  %114 = load %struct.bttv*, %struct.bttv** %2, align 8
  %115 = call i32 @init_lmlbt4x(%struct.bttv* %114)
  br label %125

116:                                              ; preds = %20
  %117 = load %struct.bttv*, %struct.bttv** %2, align 8
  %118 = call i32 @tibetCS16_init(%struct.bttv* %117)
  br label %125

119:                                              ; preds = %20
  %120 = load %struct.bttv*, %struct.bttv** %2, align 8
  %121 = call i32 @kodicom4400r_init(%struct.bttv* %120)
  br label %125

122:                                              ; preds = %20
  %123 = load %struct.bttv*, %struct.bttv** %2, align 8
  %124 = call i32 @gv800s_init(%struct.bttv* %123)
  br label %125

125:                                              ; preds = %20, %122, %119, %116, %113, %107, %104, %97, %96, %84, %68, %49, %46, %43, %37, %31, %28, %25
  %126 = load %struct.bttv*, %struct.bttv** %2, align 8
  %127 = getelementptr inbounds %struct.bttv, %struct.bttv* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 848
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.bttv*, %struct.bttv** %2, align 8
  %132 = getelementptr inbounds %struct.bttv, %struct.bttv* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 17
  br i1 %134, label %247, label %135

135:                                              ; preds = %130, %125
  %136 = load i64, i64* @PLL_28, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %138 = load %struct.bttv*, %struct.bttv** %2, align 8
  %139 = getelementptr inbounds %struct.bttv, %struct.bttv* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %136, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %135
  %148 = load %struct.bttv*, %struct.bttv** %2, align 8
  %149 = getelementptr inbounds %struct.bttv, %struct.bttv* %148, i32 0, i32 17
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 28636363, i32* %150, align 8
  %151 = load i8*, i8** @BT848_IFORM_XT0, align 8
  %152 = load %struct.bttv*, %struct.bttv** %2, align 8
  %153 = getelementptr inbounds %struct.bttv, %struct.bttv* %152, i32 0, i32 17
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i8* %151, i8** %154, align 8
  br label %155

155:                                              ; preds = %147, %135
  %156 = load i64, i64* @PLL_35, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %158 = load %struct.bttv*, %struct.bttv** %2, align 8
  %159 = getelementptr inbounds %struct.bttv, %struct.bttv* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %156, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %155
  %168 = load %struct.bttv*, %struct.bttv** %2, align 8
  %169 = getelementptr inbounds %struct.bttv, %struct.bttv* %168, i32 0, i32 17
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32 35468950, i32* %170, align 8
  %171 = load i8*, i8** @BT848_IFORM_XT1, align 8
  %172 = load %struct.bttv*, %struct.bttv** %2, align 8
  %173 = getelementptr inbounds %struct.bttv, %struct.bttv* %172, i32 0, i32 17
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i8* %171, i8** %174, align 8
  br label %175

175:                                              ; preds = %167, %155
  %176 = load i64, i64* @PLL_14, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %178 = load %struct.bttv*, %struct.bttv** %2, align 8
  %179 = getelementptr inbounds %struct.bttv, %struct.bttv* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %176, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %175
  %188 = load %struct.bttv*, %struct.bttv** %2, align 8
  %189 = getelementptr inbounds %struct.bttv, %struct.bttv* %188, i32 0, i32 17
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 14318181, i32* %190, align 8
  %191 = load i8*, i8** @BT848_IFORM_XT0, align 8
  %192 = load %struct.bttv*, %struct.bttv** %2, align 8
  %193 = getelementptr inbounds %struct.bttv, %struct.bttv* %192, i32 0, i32 17
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  store i8* %191, i8** %194, align 8
  br label %195

195:                                              ; preds = %187, %175
  %196 = load i32*, i32** @pll, align 8
  %197 = load %struct.bttv*, %struct.bttv** %2, align 8
  %198 = getelementptr inbounds %struct.bttv, %struct.bttv* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %246 [
    i32 0, label %203
    i32 1, label %213
    i32 28, label %213
    i32 2, label %224
    i32 35, label %224
    i32 3, label %235
    i32 14, label %235
  ]

203:                                              ; preds = %195
  %204 = load %struct.bttv*, %struct.bttv** %2, align 8
  %205 = getelementptr inbounds %struct.bttv, %struct.bttv* %204, i32 0, i32 17
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  store i8* null, i8** %206, align 8
  %207 = load %struct.bttv*, %struct.bttv** %2, align 8
  %208 = getelementptr inbounds %struct.bttv, %struct.bttv* %207, i32 0, i32 17
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  %210 = load %struct.bttv*, %struct.bttv** %2, align 8
  %211 = getelementptr inbounds %struct.bttv, %struct.bttv* %210, i32 0, i32 17
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  store i32 0, i32* %212, align 8
  br label %246

213:                                              ; preds = %195, %195
  %214 = load %struct.bttv*, %struct.bttv** %2, align 8
  %215 = getelementptr inbounds %struct.bttv, %struct.bttv* %214, i32 0, i32 17
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i32 28636363, i32* %216, align 8
  %217 = load %struct.bttv*, %struct.bttv** %2, align 8
  %218 = getelementptr inbounds %struct.bttv, %struct.bttv* %217, i32 0, i32 17
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  store i32 0, i32* %219, align 8
  %220 = load i8*, i8** @BT848_IFORM_XT0, align 8
  %221 = load %struct.bttv*, %struct.bttv** %2, align 8
  %222 = getelementptr inbounds %struct.bttv, %struct.bttv* %221, i32 0, i32 17
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  store i8* %220, i8** %223, align 8
  br label %246

224:                                              ; preds = %195, %195
  %225 = load %struct.bttv*, %struct.bttv** %2, align 8
  %226 = getelementptr inbounds %struct.bttv, %struct.bttv* %225, i32 0, i32 17
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 35468950, i32* %227, align 8
  %228 = load %struct.bttv*, %struct.bttv** %2, align 8
  %229 = getelementptr inbounds %struct.bttv, %struct.bttv* %228, i32 0, i32 17
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  store i32 0, i32* %230, align 8
  %231 = load i8*, i8** @BT848_IFORM_XT1, align 8
  %232 = load %struct.bttv*, %struct.bttv** %2, align 8
  %233 = getelementptr inbounds %struct.bttv, %struct.bttv* %232, i32 0, i32 17
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  store i8* %231, i8** %234, align 8
  br label %246

235:                                              ; preds = %195, %195
  %236 = load %struct.bttv*, %struct.bttv** %2, align 8
  %237 = getelementptr inbounds %struct.bttv, %struct.bttv* %236, i32 0, i32 17
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32 14318181, i32* %238, align 8
  %239 = load %struct.bttv*, %struct.bttv** %2, align 8
  %240 = getelementptr inbounds %struct.bttv, %struct.bttv* %239, i32 0, i32 17
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  store i32 0, i32* %241, align 8
  %242 = load i8*, i8** @BT848_IFORM_XT0, align 8
  %243 = load %struct.bttv*, %struct.bttv** %2, align 8
  %244 = getelementptr inbounds %struct.bttv, %struct.bttv* %243, i32 0, i32 17
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  store i8* %242, i8** %245, align 8
  br label %246

246:                                              ; preds = %195, %235, %224, %213, %203
  br label %247

247:                                              ; preds = %246, %130
  %248 = load %struct.bttv*, %struct.bttv** %2, align 8
  %249 = getelementptr inbounds %struct.bttv, %struct.bttv* %248, i32 0, i32 17
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  store i32 -1, i32* %250, align 4
  %251 = load i64, i64* @UNSET, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %253 = load %struct.bttv*, %struct.bttv** %2, align 8
  %254 = getelementptr inbounds %struct.bttv, %struct.bttv* %253, i32 0, i32 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %251, %260
  br i1 %261, label %262, label %281

262:                                              ; preds = %247
  %263 = load i64, i64* @UNSET, align 8
  %264 = load %struct.bttv*, %struct.bttv** %2, align 8
  %265 = getelementptr inbounds %struct.bttv, %struct.bttv* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %263, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %262
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %270 = load %struct.bttv*, %struct.bttv** %2, align 8
  %271 = getelementptr inbounds %struct.bttv, %struct.bttv* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.bttv*, %struct.bttv** %2, align 8
  %279 = getelementptr inbounds %struct.bttv, %struct.bttv* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %268, %262
  br label %281

281:                                              ; preds = %280, %247
  %282 = load i64, i64* @UNSET, align 8
  %283 = load i64*, i64** @tuner, align 8
  %284 = load %struct.bttv*, %struct.bttv** %2, align 8
  %285 = getelementptr inbounds %struct.bttv, %struct.bttv* %284, i32 0, i32 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds i64, i64* %283, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %282, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %281
  %292 = load i64*, i64** @tuner, align 8
  %293 = load %struct.bttv*, %struct.bttv** %2, align 8
  %294 = getelementptr inbounds %struct.bttv, %struct.bttv* %293, i32 0, i32 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds i64, i64* %292, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.bttv*, %struct.bttv** %2, align 8
  %300 = getelementptr inbounds %struct.bttv, %struct.bttv* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  br label %301

301:                                              ; preds = %291, %281
  %302 = load %struct.bttv*, %struct.bttv** %2, align 8
  %303 = getelementptr inbounds %struct.bttv, %struct.bttv* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @TUNER_ABSENT, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %301
  %308 = load %struct.bttv*, %struct.bttv** %2, align 8
  %309 = getelementptr inbounds %struct.bttv, %struct.bttv* %308, i32 0, i32 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %311)
  br label %335

313:                                              ; preds = %301
  %314 = load %struct.bttv*, %struct.bttv** %2, align 8
  %315 = getelementptr inbounds %struct.bttv, %struct.bttv* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @UNSET, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  %320 = load %struct.bttv*, %struct.bttv** %2, align 8
  %321 = getelementptr inbounds %struct.bttv, %struct.bttv* %320, i32 0, i32 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %323)
  br label %334

325:                                              ; preds = %313
  %326 = load %struct.bttv*, %struct.bttv** %2, align 8
  %327 = getelementptr inbounds %struct.bttv, %struct.bttv* %326, i32 0, i32 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.bttv*, %struct.bttv** %2, align 8
  %331 = getelementptr inbounds %struct.bttv, %struct.bttv* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %329, i64 %332)
  br label %334

334:                                              ; preds = %325, %319
  br label %335

335:                                              ; preds = %334, %307
  %336 = load i64, i64* @autoload, align 8
  %337 = load i64, i64* @UNSET, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %350

339:                                              ; preds = %335
  %340 = load %struct.bttv*, %struct.bttv** %2, align 8
  %341 = getelementptr inbounds %struct.bttv, %struct.bttv* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %343)
  %345 = load %struct.bttv*, %struct.bttv** %2, align 8
  %346 = getelementptr inbounds %struct.bttv, %struct.bttv* %345, i32 0, i32 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = call i32 @pr_warn(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i64 %348)
  br label %350

350:                                              ; preds = %339, %335
  %351 = load i64, i64* @UNSET, align 8
  %352 = load %struct.bttv*, %struct.bttv** %2, align 8
  %353 = getelementptr inbounds %struct.bttv, %struct.bttv* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %351, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %350
  %357 = load i64, i64* @TUNER_ABSENT, align 8
  %358 = load %struct.bttv*, %struct.bttv** %2, align 8
  %359 = getelementptr inbounds %struct.bttv, %struct.bttv* %358, i32 0, i32 0
  store i64 %357, i64* %359, align 8
  br label %360

360:                                              ; preds = %356, %350
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %362 = load %struct.bttv*, %struct.bttv** %2, align 8
  %363 = getelementptr inbounds %struct.bttv, %struct.bttv* %362, i32 0, i32 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 12
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %382

371:                                              ; preds = %360
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %373 = load %struct.bttv*, %struct.bttv** %2, align 8
  %374 = getelementptr inbounds %struct.bttv, %struct.bttv* %373, i32 0, i32 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = sub nsw i64 %380, 1
  br label %384

382:                                              ; preds = %360
  %383 = load i64, i64* @UNSET, align 8
  br label %384

384:                                              ; preds = %382, %371
  %385 = phi i64 [ %381, %371 ], [ %383, %382 ]
  %386 = load %struct.bttv*, %struct.bttv** %2, align 8
  %387 = getelementptr inbounds %struct.bttv, %struct.bttv* %386, i32 0, i32 16
  store i64 %385, i64* %387, align 8
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %389 = load %struct.bttv*, %struct.bttv** %2, align 8
  %390 = getelementptr inbounds %struct.bttv, %struct.bttv* %389, i32 0, i32 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 3
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @NO_SVHS, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %384
  %400 = load i64, i64* @UNSET, align 8
  br label %411

401:                                              ; preds = %384
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %403 = load %struct.bttv*, %struct.bttv** %2, align 8
  %404 = getelementptr inbounds %struct.bttv, %struct.bttv* %403, i32 0, i32 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  br label %411

411:                                              ; preds = %401, %399
  %412 = phi i64 [ %400, %399 ], [ %410, %401 ]
  %413 = load %struct.bttv*, %struct.bttv** %2, align 8
  %414 = getelementptr inbounds %struct.bttv, %struct.bttv* %413, i32 0, i32 15
  store i64 %412, i64* %414, align 8
  %415 = load i64*, i64** @svhs, align 8
  %416 = load %struct.bttv*, %struct.bttv** %2, align 8
  %417 = getelementptr inbounds %struct.bttv, %struct.bttv* %416, i32 0, i32 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds i64, i64* %415, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @UNSET, align 8
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %424, label %434

424:                                              ; preds = %411
  %425 = load i64*, i64** @svhs, align 8
  %426 = load %struct.bttv*, %struct.bttv** %2, align 8
  %427 = getelementptr inbounds %struct.bttv, %struct.bttv* %426, i32 0, i32 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds i64, i64* %425, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.bttv*, %struct.bttv** %2, align 8
  %433 = getelementptr inbounds %struct.bttv, %struct.bttv* %432, i32 0, i32 15
  store i64 %431, i64* %433, align 8
  br label %434

434:                                              ; preds = %424, %411
  %435 = load i64*, i64** @remote, align 8
  %436 = load %struct.bttv*, %struct.bttv** %2, align 8
  %437 = getelementptr inbounds %struct.bttv, %struct.bttv* %436, i32 0, i32 8
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds i64, i64* %435, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @UNSET, align 8
  %443 = icmp ne i64 %441, %442
  br i1 %443, label %444, label %455

444:                                              ; preds = %434
  %445 = load i64*, i64** @remote, align 8
  %446 = load %struct.bttv*, %struct.bttv** %2, align 8
  %447 = getelementptr inbounds %struct.bttv, %struct.bttv* %446, i32 0, i32 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds i64, i64* %445, i64 %449
  %451 = load i64, i64* %450, align 8
  %452 = trunc i64 %451 to i32
  %453 = load %struct.bttv*, %struct.bttv** %2, align 8
  %454 = getelementptr inbounds %struct.bttv, %struct.bttv* %453, i32 0, i32 6
  store i32 %452, i32* %454, align 4
  br label %455

455:                                              ; preds = %444, %434
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %457 = load %struct.bttv*, %struct.bttv** %2, align 8
  %458 = getelementptr inbounds %struct.bttv, %struct.bttv* %457, i32 0, i32 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i32 0, i32 11
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %455
  %467 = load %struct.bttv*, %struct.bttv** %2, align 8
  %468 = getelementptr inbounds %struct.bttv, %struct.bttv* %467, i32 0, i32 1
  store i32 1, i32* %468, align 8
  br label %469

469:                                              ; preds = %466, %455
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %471 = load %struct.bttv*, %struct.bttv** %2, align 8
  %472 = getelementptr inbounds %struct.bttv, %struct.bttv* %471, i32 0, i32 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 10
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %469
  %481 = load %struct.bttv*, %struct.bttv** %2, align 8
  %482 = getelementptr inbounds %struct.bttv, %struct.bttv* %481, i32 0, i32 6
  store i32 1, i32* %482, align 4
  br label %483

483:                                              ; preds = %480, %469
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %485 = load %struct.bttv*, %struct.bttv** %2, align 8
  %486 = getelementptr inbounds %struct.bttv, %struct.bttv* %485, i32 0, i32 8
  %487 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 9
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %483
  %495 = load %struct.bttv*, %struct.bttv** %2, align 8
  %496 = getelementptr inbounds %struct.bttv, %struct.bttv* %495, i32 0, i32 7
  store i32 1, i32* %496, align 8
  br label %497

497:                                              ; preds = %494, %483
  %498 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %499 = load %struct.bttv*, %struct.bttv** %2, align 8
  %500 = getelementptr inbounds %struct.bttv, %struct.bttv* %499, i32 0, i32 8
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 8
  %506 = load i64, i64* %505, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %520

508:                                              ; preds = %497
  %509 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %510 = load %struct.bttv*, %struct.bttv** %2, align 8
  %511 = getelementptr inbounds %struct.bttv, %struct.bttv* %510, i32 0, i32 8
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 8
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.bttv*, %struct.bttv** %2, align 8
  %519 = getelementptr inbounds %struct.bttv, %struct.bttv* %518, i32 0, i32 14
  store i64 %517, i64* %519, align 8
  br label %520

520:                                              ; preds = %508, %497
  %521 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %522 = load %struct.bttv*, %struct.bttv** %2, align 8
  %523 = getelementptr inbounds %struct.bttv, %struct.bttv* %522, i32 0, i32 8
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %527, i32 0, i32 7
  %529 = load i64, i64* %528, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %543

531:                                              ; preds = %520
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %533 = load %struct.bttv*, %struct.bttv** %2, align 8
  %534 = getelementptr inbounds %struct.bttv, %struct.bttv* %533, i32 0, i32 8
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i32 0, i32 7
  %540 = load i64, i64* %539, align 8
  %541 = load %struct.bttv*, %struct.bttv** %2, align 8
  %542 = getelementptr inbounds %struct.bttv, %struct.bttv* %541, i32 0, i32 13
  store i64 %540, i64* %542, align 8
  br label %543

543:                                              ; preds = %531, %520
  %544 = load %struct.bttv*, %struct.bttv** %2, align 8
  %545 = getelementptr inbounds %struct.bttv, %struct.bttv* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = load i64, i64* @TUNER_ABSENT, align 8
  %548 = icmp eq i64 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %543
  br label %754

550:                                              ; preds = %543
  %551 = load %struct.bttv*, %struct.bttv** %2, align 8
  %552 = getelementptr inbounds %struct.bttv, %struct.bttv* %551, i32 0, i32 12
  %553 = load i64, i64* %552, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %564, label %555

555:                                              ; preds = %550
  %556 = load i64*, i64** @saa6588, align 8
  %557 = load %struct.bttv*, %struct.bttv** %2, align 8
  %558 = getelementptr inbounds %struct.bttv, %struct.bttv* %557, i32 0, i32 8
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds i64, i64* %556, i64 %560
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %579

564:                                              ; preds = %555, %550
  %565 = load %struct.bttv*, %struct.bttv** %2, align 8
  %566 = getelementptr inbounds %struct.bttv, %struct.bttv* %565, i32 0, i32 8
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 3
  %568 = load %struct.bttv*, %struct.bttv** %2, align 8
  %569 = getelementptr inbounds %struct.bttv, %struct.bttv* %568, i32 0, i32 8
  %570 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %569, i32 0, i32 2
  %571 = call i8* @v4l2_i2c_new_subdev(i32* %567, i32* %570, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @bttv_init_card2.addrs, i64 0, i64 0))
  %572 = bitcast i8* %571 to %struct.v4l2_subdev*
  store %struct.v4l2_subdev* %572, %struct.v4l2_subdev** %3, align 8
  %573 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %574 = icmp ne %struct.v4l2_subdev* %573, null
  %575 = zext i1 %574 to i32
  %576 = sext i32 %575 to i64
  %577 = load %struct.bttv*, %struct.bttv** %2, align 8
  %578 = getelementptr inbounds %struct.bttv, %struct.bttv* %577, i32 0, i32 12
  store i64 %576, i64* %578, align 8
  br label %579

579:                                              ; preds = %564, %555
  %580 = load i32*, i32** @audiodev, align 8
  %581 = load %struct.bttv*, %struct.bttv** %2, align 8
  %582 = getelementptr inbounds %struct.bttv, %struct.bttv* %581, i32 0, i32 8
  %583 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %582, i32 0, i32 1
  %584 = load i64, i64* %583, align 8
  %585 = getelementptr inbounds i32, i32* %580, i64 %584
  %586 = load i32, i32* %585, align 4
  switch i32 %586, label %633 [
    i32 -1, label %587
    i32 0, label %588
    i32 1, label %589
    i32 2, label %605
    i32 3, label %616
  ]

587:                                              ; preds = %579
  br label %754

588:                                              ; preds = %579
  br label %639

589:                                              ; preds = %579
  %590 = load %struct.bttv*, %struct.bttv** %2, align 8
  %591 = getelementptr inbounds %struct.bttv, %struct.bttv* %590, i32 0, i32 8
  %592 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i32 0, i32 3
  %593 = load %struct.bttv*, %struct.bttv** %2, align 8
  %594 = getelementptr inbounds %struct.bttv, %struct.bttv* %593, i32 0, i32 8
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 2
  %596 = call i8* @v4l2_i2c_new_subdev(i32* %592, i32* %595, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 0, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @bttv_init_card2.addrs.7, i64 0, i64 0))
  %597 = load %struct.bttv*, %struct.bttv** %2, align 8
  %598 = getelementptr inbounds %struct.bttv, %struct.bttv* %597, i32 0, i32 11
  store i8* %596, i8** %598, align 8
  %599 = load %struct.bttv*, %struct.bttv** %2, align 8
  %600 = getelementptr inbounds %struct.bttv, %struct.bttv* %599, i32 0, i32 11
  %601 = load i8*, i8** %600, align 8
  %602 = icmp ne i8* %601, null
  br i1 %602, label %603, label %604

603:                                              ; preds = %589
  br label %754

604:                                              ; preds = %589
  br label %748

605:                                              ; preds = %579
  %606 = load %struct.bttv*, %struct.bttv** %2, align 8
  %607 = getelementptr inbounds %struct.bttv, %struct.bttv* %606, i32 0, i32 8
  %608 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %607, i32 0, i32 3
  %609 = load %struct.bttv*, %struct.bttv** %2, align 8
  %610 = getelementptr inbounds %struct.bttv, %struct.bttv* %609, i32 0, i32 8
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 2
  %612 = call i8* @v4l2_i2c_new_subdev(i32* %608, i32* %611, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @bttv_init_card2.addrs.9, i64 0, i64 0))
  %613 = icmp ne i8* %612, null
  br i1 %613, label %614, label %615

614:                                              ; preds = %605
  br label %754

615:                                              ; preds = %605
  br label %748

616:                                              ; preds = %579
  %617 = load %struct.bttv*, %struct.bttv** %2, align 8
  %618 = getelementptr inbounds %struct.bttv, %struct.bttv* %617, i32 0, i32 8
  %619 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %618, i32 0, i32 3
  %620 = load %struct.bttv*, %struct.bttv** %2, align 8
  %621 = getelementptr inbounds %struct.bttv, %struct.bttv* %620, i32 0, i32 8
  %622 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %621, i32 0, i32 2
  %623 = call i16* (...) @tvaudio_addrs()
  %624 = call i8* @v4l2_i2c_new_subdev(i32* %619, i32* %622, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0, i16* %623)
  %625 = load %struct.bttv*, %struct.bttv** %2, align 8
  %626 = getelementptr inbounds %struct.bttv, %struct.bttv* %625, i32 0, i32 9
  store i8* %624, i8** %626, align 8
  %627 = load %struct.bttv*, %struct.bttv** %2, align 8
  %628 = getelementptr inbounds %struct.bttv, %struct.bttv* %627, i32 0, i32 9
  %629 = load i8*, i8** %628, align 8
  %630 = icmp ne i8* %629, null
  br i1 %630, label %631, label %632

631:                                              ; preds = %616
  br label %754

632:                                              ; preds = %616
  br label %748

633:                                              ; preds = %579
  %634 = load %struct.bttv*, %struct.bttv** %2, align 8
  %635 = getelementptr inbounds %struct.bttv, %struct.bttv* %634, i32 0, i32 8
  %636 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %635, i32 0, i32 1
  %637 = load i64, i64* %636, align 8
  %638 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 %637)
  br label %754

639:                                              ; preds = %588
  %640 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %641 = load %struct.bttv*, %struct.bttv** %2, align 8
  %642 = getelementptr inbounds %struct.bttv, %struct.bttv* %641, i32 0, i32 8
  %643 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %640, i64 %645
  %647 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %646, i32 0, i32 6
  %648 = load i32, i32* %647, align 8
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %661, label %650

650:                                              ; preds = %639
  %651 = load %struct.bttv*, %struct.bttv** %2, align 8
  %652 = getelementptr inbounds %struct.bttv, %struct.bttv* %651, i32 0, i32 8
  %653 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %652, i32 0, i32 3
  %654 = load %struct.bttv*, %struct.bttv** %2, align 8
  %655 = getelementptr inbounds %struct.bttv, %struct.bttv* %654, i32 0, i32 8
  %656 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %655, i32 0, i32 2
  %657 = call i16* @I2C_ADDRS(i32 65)
  %658 = call i8* @v4l2_i2c_new_subdev(i32* %653, i32* %656, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 0, i16* %657)
  %659 = load %struct.bttv*, %struct.bttv** %2, align 8
  %660 = getelementptr inbounds %struct.bttv, %struct.bttv* %659, i32 0, i32 11
  store i8* %658, i8** %660, align 8
  br label %684

661:                                              ; preds = %639
  %662 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %663 = load %struct.bttv*, %struct.bttv** %2, align 8
  %664 = getelementptr inbounds %struct.bttv, %struct.bttv* %663, i32 0, i32 8
  %665 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %662, i64 %667
  %669 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %668, i32 0, i32 5
  %670 = load i64, i64* %669, align 8
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %672, label %683

672:                                              ; preds = %661
  %673 = load %struct.bttv*, %struct.bttv** %2, align 8
  %674 = getelementptr inbounds %struct.bttv, %struct.bttv* %673, i32 0, i32 8
  %675 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %674, i32 0, i32 3
  %676 = load %struct.bttv*, %struct.bttv** %2, align 8
  %677 = getelementptr inbounds %struct.bttv, %struct.bttv* %676, i32 0, i32 8
  %678 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %677, i32 0, i32 2
  %679 = call i16* @I2C_ADDRS(i32 65)
  %680 = call i8* @v4l2_i2c_new_subdev(i32* %675, i32* %678, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 0, i16* %679)
  %681 = load %struct.bttv*, %struct.bttv** %2, align 8
  %682 = getelementptr inbounds %struct.bttv, %struct.bttv* %681, i32 0, i32 11
  store i8* %680, i8** %682, align 8
  br label %683

683:                                              ; preds = %672, %661
  br label %684

684:                                              ; preds = %683, %650
  %685 = load %struct.bttv*, %struct.bttv** %2, align 8
  %686 = getelementptr inbounds %struct.bttv, %struct.bttv* %685, i32 0, i32 11
  %687 = load i8*, i8** %686, align 8
  %688 = icmp ne i8* %687, null
  br i1 %688, label %689, label %690

689:                                              ; preds = %684
  br label %754

690:                                              ; preds = %684
  %691 = load %struct.bttv*, %struct.bttv** %2, align 8
  %692 = getelementptr inbounds %struct.bttv, %struct.bttv* %691, i32 0, i32 8
  %693 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %692, i32 0, i32 3
  %694 = load %struct.bttv*, %struct.bttv** %2, align 8
  %695 = getelementptr inbounds %struct.bttv, %struct.bttv* %694, i32 0, i32 8
  %696 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %695, i32 0, i32 2
  %697 = call i16* (...) @tvaudio_addrs()
  %698 = call i8* @v4l2_i2c_new_subdev(i32* %693, i32* %696, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0, i16* %697)
  %699 = load %struct.bttv*, %struct.bttv** %2, align 8
  %700 = getelementptr inbounds %struct.bttv, %struct.bttv* %699, i32 0, i32 9
  store i8* %698, i8** %700, align 8
  %701 = load %struct.bttv*, %struct.bttv** %2, align 8
  %702 = getelementptr inbounds %struct.bttv, %struct.bttv* %701, i32 0, i32 9
  %703 = load i8*, i8** %702, align 8
  %704 = icmp ne i8* %703, null
  br i1 %704, label %705, label %714

705:                                              ; preds = %690
  %706 = load %struct.bttv*, %struct.bttv** %2, align 8
  %707 = getelementptr inbounds %struct.bttv, %struct.bttv* %706, i32 0, i32 8
  %708 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %707, i32 0, i32 3
  %709 = load %struct.bttv*, %struct.bttv** %2, align 8
  %710 = getelementptr inbounds %struct.bttv, %struct.bttv* %709, i32 0, i32 8
  %711 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %710, i32 0, i32 2
  %712 = call i16* (...) @tvaudio_addrs()
  %713 = call i8* @v4l2_i2c_new_subdev(i32* %708, i32* %711, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0, i16* %712)
  br label %714

714:                                              ; preds = %705, %690
  %715 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %716 = load %struct.bttv*, %struct.bttv** %2, align 8
  %717 = getelementptr inbounds %struct.bttv, %struct.bttv* %716, i32 0, i32 8
  %718 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 8
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %715, i64 %720
  %722 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %721, i32 0, i32 4
  %723 = load i32, i32* %722, align 8
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %741, label %725

725:                                              ; preds = %714
  %726 = load %struct.bttv*, %struct.bttv** %2, align 8
  %727 = getelementptr inbounds %struct.bttv, %struct.bttv* %726, i32 0, i32 8
  %728 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %727, i32 0, i32 3
  %729 = load %struct.bttv*, %struct.bttv** %2, align 8
  %730 = getelementptr inbounds %struct.bttv, %struct.bttv* %729, i32 0, i32 8
  %731 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %730, i32 0, i32 2
  %732 = call i8* @v4l2_i2c_new_subdev(i32* %728, i32* %731, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @bttv_init_card2.addrs.13, i64 0, i64 0))
  %733 = load %struct.bttv*, %struct.bttv** %2, align 8
  %734 = getelementptr inbounds %struct.bttv, %struct.bttv* %733, i32 0, i32 10
  store i8* %732, i8** %734, align 8
  %735 = load %struct.bttv*, %struct.bttv** %2, align 8
  %736 = getelementptr inbounds %struct.bttv, %struct.bttv* %735, i32 0, i32 10
  %737 = load i8*, i8** %736, align 8
  %738 = icmp ne i8* %737, null
  br i1 %738, label %739, label %740

739:                                              ; preds = %725
  br label %754

740:                                              ; preds = %725
  br label %741

741:                                              ; preds = %740, %714
  %742 = load %struct.bttv*, %struct.bttv** %2, align 8
  %743 = getelementptr inbounds %struct.bttv, %struct.bttv* %742, i32 0, i32 9
  %744 = load i8*, i8** %743, align 8
  %745 = icmp ne i8* %744, null
  br i1 %745, label %746, label %747

746:                                              ; preds = %741
  br label %754

747:                                              ; preds = %741
  br label %748

748:                                              ; preds = %747, %632, %615, %604
  %749 = load %struct.bttv*, %struct.bttv** %2, align 8
  %750 = getelementptr inbounds %struct.bttv, %struct.bttv* %749, i32 0, i32 8
  %751 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %750, i32 0, i32 1
  %752 = load i64, i64* %751, align 8
  %753 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i64 %752)
  br label %754

754:                                              ; preds = %748, %746, %739, %689, %633, %631, %614, %603, %587, %549
  ret void
}

declare dso_local i32 @bttv_readee(%struct.bttv*, i32, i32) #1

declare dso_local i32 @identify_by_eeprom(%struct.bttv*, i32) #1

declare dso_local i32 @miro_pinnacle_gpio(%struct.bttv*) #1

declare dso_local i32 @flyvideo_gpio(%struct.bttv*) #1

declare dso_local i32 @hauppauge_eeprom(%struct.bttv*) #1

declare dso_local i32 @avermedia_eeprom(%struct.bttv*) #1

declare dso_local i32 @init_PXC200(%struct.bttv*) #1

declare dso_local i32 @picolo_tetra_init(%struct.bttv*) #1

declare dso_local i32 @tea575x_init(%struct.bttv*) #1

declare dso_local i32 @terratec_active_radio_upgrade(%struct.bttv*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @osprey_eeprom(%struct.bttv*, i32) #1

declare dso_local i32 @init_ids_eagle(%struct.bttv*) #1

declare dso_local i32 @modtec_eeprom(%struct.bttv*) #1

declare dso_local i32 @init_lmlbt4x(%struct.bttv*) #1

declare dso_local i32 @tibetCS16_init(%struct.bttv*) #1

declare dso_local i32 @kodicom4400r_init(%struct.bttv*) #1

declare dso_local i32 @gv800s_init(%struct.bttv*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i8* @v4l2_i2c_new_subdev(i32*, i32*, i8*, i32, i16*) #1

declare dso_local i16* @tvaudio_addrs(...) #1

declare dso_local i16* @I2C_ADDRS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
