; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }
%struct.osd_layer_config = type { i32, i32, i32, i32, i32, i32, i32 }

@VPBE_VERSION_1 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_RGB0E = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i32 0, align 4
@VPBE_VERSION_2 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_BMP0MD = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_BMP0MD_SHIFT = common dso_local global i32 0, align 4
@OSDWIN_OSD0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_BMW0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_OFF0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_BMW0_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_OSDWIN0OFST = common dso_local global i32 0, align 4
@OSD_OSDWIN0XP = common dso_local global i32 0, align 4
@OSD_OSDWIN0XL = common dso_local global i32 0, align 4
@OSD_OSDWIN0YP = common dso_local global i32 0, align 4
@OSD_OSDWIN0YL = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VFF0 = common dso_local global i32 0, align 4
@OSD_VIDWINMD = common dso_local global i32 0, align 4
@OSD_VIDWIN0OFST = common dso_local global i32 0, align 4
@OSD_VIDWIN0XP = common dso_local global i32 0, align 4
@OSD_VIDWIN0XL = common dso_local global i32 0, align 4
@PIXFMT_NV12 = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VFF1 = common dso_local global i32 0, align 4
@OSD_MISCCTL_S420D = common dso_local global i32 0, align 4
@OSD_MISCCTL = common dso_local global i32 0, align 4
@OSD_VIDWIN1OFST = common dso_local global i32 0, align 4
@OSD_VIDWIN1XP = common dso_local global i32 0, align 4
@OSD_VIDWIN1XL = common dso_local global i32 0, align 4
@OSD_VIDWIN0YP = common dso_local global i32 0, align 4
@OSD_VIDWIN0YL = common dso_local global i32 0, align 4
@OSD_VIDWIN1YP = common dso_local global i32 0, align 4
@OSD_VIDWIN1YL = common dso_local global i32 0, align 4
@PIXFMT_OSD_ATTR = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_ATN1E = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_RGB1E = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_CLUTS1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BLND1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_TE1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BMP1MD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BMP1MD_SHIFT = common dso_local global i32 0, align 4
@OSDWIN_OSD1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BMW1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BMW1_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OFF1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@OSD_OSDWIN1OFST = common dso_local global i32 0, align 4
@OSD_OSDWIN1XP = common dso_local global i32 0, align 4
@OSD_OSDWIN1XL = common dso_local global i32 0, align 4
@OSD_OSDWIN1YP = common dso_local global i32 0, align 4
@OSD_OSDWIN1YL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, %struct.osd_layer_config*)* @_osd_set_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_set_layer_config(%struct.osd_state* %0, i32 %1, %struct.osd_layer_config* %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.osd_layer_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.osd_layer_config* %2, %struct.osd_layer_config** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %11 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %12 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_osd_set_cbcr_order(%struct.osd_state* %10, i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %746 [
    i32 131, label %16
    i32 129, label %161
    i32 130, label %380
    i32 128, label %562
  ]

16:                                               ; preds = %3
  %17 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %18 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VPBE_VERSION_1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* @OSD_OSDWIN0MD_RGB0E, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %27 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 135
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @OSD_OSDWIN0MD_RGB0E, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %22
  br label %75

35:                                               ; preds = %16
  %36 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %37 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VPBE_VERSION_3, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %43 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VPBE_VERSION_2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @OSD_OSDWIN0MD_BMP0MD, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %52 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %72 [
    i32 135, label %54
    i32 134, label %59
    i32 133, label %67
    i32 132, label %67
  ]

54:                                               ; preds = %47
  %55 = load i32, i32* @OSD_OSDWIN0MD_BMP0MD_SHIFT, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %73

59:                                               ; preds = %47
  %60 = load i32, i32* @OSD_OSDWIN0MD_BMP0MD_SHIFT, align 4
  %61 = shl i32 2, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %65 = load i32, i32* @OSDWIN_OSD0, align 4
  %66 = call i32 @_osd_enable_rgb888_pixblend(%struct.osd_state* %64, i32 %65)
  br label %73

67:                                               ; preds = %47, %47
  %68 = load i32, i32* @OSD_OSDWIN0MD_BMP0MD_SHIFT, align 4
  %69 = shl i32 3, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %73

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %67, %59, %54
  br label %74

74:                                               ; preds = %73, %41
  br label %75

75:                                               ; preds = %74, %34
  %76 = load i32, i32* @OSD_OSDWIN0MD_BMW0, align 4
  %77 = load i32, i32* @OSD_OSDWIN0MD_OFF0, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %82 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %88 [
    i32 139, label %84
    i32 138, label %85
    i32 137, label %86
    i32 136, label %87
  ]

84:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %89

85:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  br label %89

86:                                               ; preds = %75
  store i32 2, i32* %9, align 4
  br label %89

87:                                               ; preds = %75
  store i32 3, i32* %9, align 4
  br label %89

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %87, %86, %85, %84
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @OSD_OSDWIN0MD_BMW0_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %96 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @OSD_OSDWIN0MD_OFF0, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %89
  %104 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %108 = call i32 @osd_modify(%struct.osd_state* %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %110 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %111 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 5
  %114 = load i32, i32* @OSD_OSDWIN0OFST, align 4
  %115 = call i32 @osd_write(%struct.osd_state* %109, i32 %113, i32 %114)
  %116 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %117 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %118 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @OSD_OSDWIN0XP, align 4
  %121 = call i32 @osd_write(%struct.osd_state* %116, i32 %119, i32 %120)
  %122 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %123 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %124 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @OSD_OSDWIN0XL, align 4
  %127 = call i32 @osd_write(%struct.osd_state* %122, i32 %125, i32 %126)
  %128 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %129 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %103
  %133 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %134 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %135 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 1
  %138 = load i32, i32* @OSD_OSDWIN0YP, align 4
  %139 = call i32 @osd_write(%struct.osd_state* %133, i32 %137, i32 %138)
  %140 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %141 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %142 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 1
  %145 = load i32, i32* @OSD_OSDWIN0YL, align 4
  %146 = call i32 @osd_write(%struct.osd_state* %140, i32 %144, i32 %145)
  br label %160

147:                                              ; preds = %103
  %148 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %149 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %150 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @OSD_OSDWIN0YP, align 4
  %153 = call i32 @osd_write(%struct.osd_state* %148, i32 %151, i32 %152)
  %154 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %155 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %156 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @OSD_OSDWIN0YL, align 4
  %159 = call i32 @osd_write(%struct.osd_state* %154, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %147, %132
  br label %746

161:                                              ; preds = %3
  %162 = load i32, i32* @OSD_VIDWINMD_VFF0, align 4
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %166 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load i32, i32* @OSD_VIDWINMD_VFF0, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %161
  %174 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @OSD_VIDWINMD, align 4
  %178 = call i32 @osd_modify(%struct.osd_state* %174, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %180 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %181 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 5
  %184 = load i32, i32* @OSD_VIDWIN0OFST, align 4
  %185 = call i32 @osd_write(%struct.osd_state* %179, i32 %183, i32 %184)
  %186 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %187 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %188 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @OSD_VIDWIN0XP, align 4
  %191 = call i32 @osd_write(%struct.osd_state* %186, i32 %189, i32 %190)
  %192 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %193 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %194 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @OSD_VIDWIN0XL, align 4
  %197 = call i32 @osd_write(%struct.osd_state* %192, i32 %195, i32 %196)
  %198 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %199 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @VPBE_VERSION_2, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %274

203:                                              ; preds = %173
  %204 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %205 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PIXFMT_NV12, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %274

209:                                              ; preds = %203
  %210 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %211 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %209
  %215 = load i32, i32* @OSD_VIDWINMD_VFF1, align 4
  %216 = load i32, i32* %8, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* @OSD_VIDWINMD_VFF1, align 4
  %219 = load i32, i32* %7, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %7, align 4
  %221 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @OSD_VIDWINMD, align 4
  %225 = call i32 @osd_modify(%struct.osd_state* %221, i32 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %214, %209
  %227 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %228 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %229 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %230 = load i32, i32* @OSD_MISCCTL, align 4
  %231 = call i32 @osd_modify(%struct.osd_state* %227, i32 %228, i32 %229, i32 %230)
  %232 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %233 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %234 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 5
  %237 = load i32, i32* @OSD_VIDWIN1OFST, align 4
  %238 = call i32 @osd_write(%struct.osd_state* %232, i32 %236, i32 %237)
  %239 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %240 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %241 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @OSD_VIDWIN1XP, align 4
  %244 = call i32 @osd_write(%struct.osd_state* %239, i32 %242, i32 %243)
  %245 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %246 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %247 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @OSD_VIDWIN1XL, align 4
  %250 = call i32 @osd_write(%struct.osd_state* %245, i32 %248, i32 %249)
  %251 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %252 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = srem i32 %253, 32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %226
  %257 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %258 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %259 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 31
  %262 = and i32 %261, -32
  %263 = load i32, i32* @OSD_VIDWIN1XL, align 4
  %264 = call i32 @osd_write(%struct.osd_state* %257, i32 %262, i32 %263)
  %265 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %266 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %267 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 31
  %270 = and i32 %269, -32
  %271 = load i32, i32* @OSD_VIDWIN0XL, align 4
  %272 = call i32 @osd_write(%struct.osd_state* %265, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %256, %226
  br label %294

274:                                              ; preds = %203, %173
  %275 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %276 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @VPBE_VERSION_2, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %293

280:                                              ; preds = %274
  %281 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %282 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @PIXFMT_NV12, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %280
  %287 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %288 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %289 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %290 = xor i32 %289, -1
  %291 = load i32, i32* @OSD_MISCCTL, align 4
  %292 = call i32 @osd_modify(%struct.osd_state* %287, i32 %288, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %286, %280, %274
  br label %294

294:                                              ; preds = %293, %273
  %295 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %296 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %341

299:                                              ; preds = %294
  %300 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %301 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %302 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = ashr i32 %303, 1
  %305 = load i32, i32* @OSD_VIDWIN0YP, align 4
  %306 = call i32 @osd_write(%struct.osd_state* %300, i32 %304, i32 %305)
  %307 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %308 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %309 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = ashr i32 %310, 1
  %312 = load i32, i32* @OSD_VIDWIN0YL, align 4
  %313 = call i32 @osd_write(%struct.osd_state* %307, i32 %311, i32 %312)
  %314 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %315 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @VPBE_VERSION_2, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %340

319:                                              ; preds = %299
  %320 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %321 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @PIXFMT_NV12, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %319
  %326 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %327 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %328 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = ashr i32 %329, 1
  %331 = load i32, i32* @OSD_VIDWIN1YP, align 4
  %332 = call i32 @osd_write(%struct.osd_state* %326, i32 %330, i32 %331)
  %333 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %334 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %335 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = ashr i32 %336, 1
  %338 = load i32, i32* @OSD_VIDWIN1YL, align 4
  %339 = call i32 @osd_write(%struct.osd_state* %333, i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %325, %319, %299
  br label %379

341:                                              ; preds = %294
  %342 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %343 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %344 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @OSD_VIDWIN0YP, align 4
  %347 = call i32 @osd_write(%struct.osd_state* %342, i32 %345, i32 %346)
  %348 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %349 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %350 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @OSD_VIDWIN0YL, align 4
  %353 = call i32 @osd_write(%struct.osd_state* %348, i32 %351, i32 %352)
  %354 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %355 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @VPBE_VERSION_2, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %378

359:                                              ; preds = %341
  %360 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %361 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @PIXFMT_NV12, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %378

365:                                              ; preds = %359
  %366 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %367 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %368 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @OSD_VIDWIN1YP, align 4
  %371 = call i32 @osd_write(%struct.osd_state* %366, i32 %369, i32 %370)
  %372 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %373 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %374 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @OSD_VIDWIN1YL, align 4
  %377 = call i32 @osd_write(%struct.osd_state* %372, i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %365, %359, %341
  br label %379

379:                                              ; preds = %378, %340
  br label %746

380:                                              ; preds = %3
  %381 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %382 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @PIXFMT_OSD_ATTR, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %415

386:                                              ; preds = %380
  %387 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %388 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @VPBE_VERSION_1, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %404

392:                                              ; preds = %386
  %393 = load i32, i32* @OSD_OSDWIN1MD_ATN1E, align 4
  %394 = load i32, i32* @OSD_OSDWIN1MD_RGB1E, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @OSD_OSDWIN1MD_CLUTS1, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @OSD_OSDWIN1MD_BLND1, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @OSD_OSDWIN1MD_TE1, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* %8, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %8, align 4
  br label %414

404:                                              ; preds = %386
  %405 = load i32, i32* @OSD_OSDWIN1MD_BMP1MD, align 4
  %406 = load i32, i32* @OSD_OSDWIN1MD_CLUTS1, align 4
  %407 = or i32 %405, %406
  %408 = load i32, i32* @OSD_OSDWIN1MD_BLND1, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* @OSD_OSDWIN1MD_TE1, align 4
  %411 = or i32 %409, %410
  %412 = load i32, i32* %8, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %8, align 4
  br label %414

414:                                              ; preds = %404, %392
  br label %492

415:                                              ; preds = %380
  %416 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %417 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @VPBE_VERSION_1, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %434

421:                                              ; preds = %415
  %422 = load i32, i32* @OSD_OSDWIN1MD_RGB1E, align 4
  %423 = load i32, i32* %8, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %8, align 4
  %425 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %426 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 135
  br i1 %428, label %429, label %433

429:                                              ; preds = %421
  %430 = load i32, i32* @OSD_OSDWIN1MD_RGB1E, align 4
  %431 = load i32, i32* %7, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %7, align 4
  br label %433

433:                                              ; preds = %429, %421
  br label %474

434:                                              ; preds = %415
  %435 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %436 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @VPBE_VERSION_3, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %446, label %440

440:                                              ; preds = %434
  %441 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %442 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @VPBE_VERSION_2, align 4
  %445 = icmp eq i32 %443, %444
  br i1 %445, label %446, label %473

446:                                              ; preds = %440, %434
  %447 = load i32, i32* @OSD_OSDWIN1MD_BMP1MD, align 4
  %448 = load i32, i32* %8, align 4
  %449 = or i32 %448, %447
  store i32 %449, i32* %8, align 4
  %450 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %451 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  switch i32 %452, label %471 [
    i32 135, label %453
    i32 134, label %458
    i32 133, label %466
    i32 132, label %466
  ]

453:                                              ; preds = %446
  %454 = load i32, i32* @OSD_OSDWIN1MD_BMP1MD_SHIFT, align 4
  %455 = shl i32 1, %454
  %456 = load i32, i32* %7, align 4
  %457 = or i32 %456, %455
  store i32 %457, i32* %7, align 4
  br label %472

458:                                              ; preds = %446
  %459 = load i32, i32* @OSD_OSDWIN1MD_BMP1MD_SHIFT, align 4
  %460 = shl i32 2, %459
  %461 = load i32, i32* %7, align 4
  %462 = or i32 %461, %460
  store i32 %462, i32* %7, align 4
  %463 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %464 = load i32, i32* @OSDWIN_OSD1, align 4
  %465 = call i32 @_osd_enable_rgb888_pixblend(%struct.osd_state* %463, i32 %464)
  br label %472

466:                                              ; preds = %446, %446
  %467 = load i32, i32* @OSD_OSDWIN1MD_BMP1MD_SHIFT, align 4
  %468 = shl i32 3, %467
  %469 = load i32, i32* %7, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %7, align 4
  br label %472

471:                                              ; preds = %446
  br label %472

472:                                              ; preds = %471, %466, %458, %453
  br label %473

473:                                              ; preds = %472, %440
  br label %474

474:                                              ; preds = %473, %433
  %475 = load i32, i32* @OSD_OSDWIN1MD_BMW1, align 4
  %476 = load i32, i32* %8, align 4
  %477 = or i32 %476, %475
  store i32 %477, i32* %8, align 4
  %478 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %479 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  switch i32 %480, label %485 [
    i32 139, label %481
    i32 138, label %482
    i32 137, label %483
    i32 136, label %484
  ]

481:                                              ; preds = %474
  store i32 0, i32* %9, align 4
  br label %486

482:                                              ; preds = %474
  store i32 1, i32* %9, align 4
  br label %486

483:                                              ; preds = %474
  store i32 2, i32* %9, align 4
  br label %486

484:                                              ; preds = %474
  store i32 3, i32* %9, align 4
  br label %486

485:                                              ; preds = %474
  br label %486

486:                                              ; preds = %485, %484, %483, %482, %481
  %487 = load i32, i32* %9, align 4
  %488 = load i32, i32* @OSD_OSDWIN1MD_BMW1_SHIFT, align 4
  %489 = shl i32 %487, %488
  %490 = load i32, i32* %7, align 4
  %491 = or i32 %490, %489
  store i32 %491, i32* %7, align 4
  br label %492

492:                                              ; preds = %486, %414
  %493 = load i32, i32* @OSD_OSDWIN1MD_OFF1, align 4
  %494 = load i32, i32* %8, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %8, align 4
  %496 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %497 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %496, i32 0, i32 6
  %498 = load i32, i32* %497, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %492
  %501 = load i32, i32* @OSD_OSDWIN1MD_OFF1, align 4
  %502 = load i32, i32* %7, align 4
  %503 = or i32 %502, %501
  store i32 %503, i32* %7, align 4
  br label %504

504:                                              ; preds = %500, %492
  %505 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %506 = load i32, i32* %8, align 4
  %507 = load i32, i32* %7, align 4
  %508 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %509 = call i32 @osd_modify(%struct.osd_state* %505, i32 %506, i32 %507, i32 %508)
  %510 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %511 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %512 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = ashr i32 %513, 5
  %515 = load i32, i32* @OSD_OSDWIN1OFST, align 4
  %516 = call i32 @osd_write(%struct.osd_state* %510, i32 %514, i32 %515)
  %517 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %518 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %519 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @OSD_OSDWIN1XP, align 4
  %522 = call i32 @osd_write(%struct.osd_state* %517, i32 %520, i32 %521)
  %523 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %524 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %525 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %524, i32 0, i32 3
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @OSD_OSDWIN1XL, align 4
  %528 = call i32 @osd_write(%struct.osd_state* %523, i32 %526, i32 %527)
  %529 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %530 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %529, i32 0, i32 6
  %531 = load i32, i32* %530, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %548

533:                                              ; preds = %504
  %534 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %535 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %536 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %535, i32 0, i32 4
  %537 = load i32, i32* %536, align 4
  %538 = ashr i32 %537, 1
  %539 = load i32, i32* @OSD_OSDWIN1YP, align 4
  %540 = call i32 @osd_write(%struct.osd_state* %534, i32 %538, i32 %539)
  %541 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %542 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %543 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %542, i32 0, i32 5
  %544 = load i32, i32* %543, align 4
  %545 = ashr i32 %544, 1
  %546 = load i32, i32* @OSD_OSDWIN1YL, align 4
  %547 = call i32 @osd_write(%struct.osd_state* %541, i32 %545, i32 %546)
  br label %561

548:                                              ; preds = %504
  %549 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %550 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %551 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %550, i32 0, i32 4
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @OSD_OSDWIN1YP, align 4
  %554 = call i32 @osd_write(%struct.osd_state* %549, i32 %552, i32 %553)
  %555 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %556 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %557 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %556, i32 0, i32 5
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* @OSD_OSDWIN1YL, align 4
  %560 = call i32 @osd_write(%struct.osd_state* %555, i32 %558, i32 %559)
  br label %561

561:                                              ; preds = %548, %533
  br label %746

562:                                              ; preds = %3
  %563 = load i32, i32* @OSD_VIDWINMD_VFF1, align 4
  %564 = load i32, i32* %8, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %8, align 4
  %566 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %567 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %566, i32 0, i32 6
  %568 = load i32, i32* %567, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %562
  %571 = load i32, i32* @OSD_VIDWINMD_VFF1, align 4
  %572 = load i32, i32* %7, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %7, align 4
  br label %574

574:                                              ; preds = %570, %562
  %575 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %576 = load i32, i32* %8, align 4
  %577 = load i32, i32* %7, align 4
  %578 = load i32, i32* @OSD_VIDWINMD, align 4
  %579 = call i32 @osd_modify(%struct.osd_state* %575, i32 %576, i32 %577, i32 %578)
  %580 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %581 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %582 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = ashr i32 %583, 5
  %585 = load i32, i32* @OSD_VIDWIN1OFST, align 4
  %586 = call i32 @osd_write(%struct.osd_state* %580, i32 %584, i32 %585)
  %587 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %588 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %589 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* @OSD_VIDWIN1XP, align 4
  %592 = call i32 @osd_write(%struct.osd_state* %587, i32 %590, i32 %591)
  %593 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %594 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %595 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %594, i32 0, i32 3
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @OSD_VIDWIN1XL, align 4
  %598 = call i32 @osd_write(%struct.osd_state* %593, i32 %596, i32 %597)
  %599 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %600 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* @VPBE_VERSION_2, align 4
  %603 = icmp eq i32 %601, %602
  br i1 %603, label %604, label %660

604:                                              ; preds = %574
  %605 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %606 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* @PIXFMT_NV12, align 4
  %609 = icmp eq i32 %607, %608
  br i1 %609, label %610, label %652

610:                                              ; preds = %604
  %611 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %612 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %611, i32 0, i32 6
  %613 = load i32, i32* %612, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %627

615:                                              ; preds = %610
  %616 = load i32, i32* @OSD_VIDWINMD_VFF0, align 4
  %617 = load i32, i32* %8, align 4
  %618 = or i32 %617, %616
  store i32 %618, i32* %8, align 4
  %619 = load i32, i32* @OSD_VIDWINMD_VFF0, align 4
  %620 = load i32, i32* %7, align 4
  %621 = or i32 %620, %619
  store i32 %621, i32* %7, align 4
  %622 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %623 = load i32, i32* %8, align 4
  %624 = load i32, i32* %7, align 4
  %625 = load i32, i32* @OSD_VIDWINMD, align 4
  %626 = call i32 @osd_modify(%struct.osd_state* %622, i32 %623, i32 %624, i32 %625)
  br label %627

627:                                              ; preds = %615, %610
  %628 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %629 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %630 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %631 = load i32, i32* @OSD_MISCCTL, align 4
  %632 = call i32 @osd_modify(%struct.osd_state* %628, i32 %629, i32 %630, i32 %631)
  %633 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %634 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %635 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = ashr i32 %636, 5
  %638 = load i32, i32* @OSD_VIDWIN0OFST, align 4
  %639 = call i32 @osd_write(%struct.osd_state* %633, i32 %637, i32 %638)
  %640 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %641 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %642 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %641, i32 0, i32 2
  %643 = load i32, i32* %642, align 4
  %644 = load i32, i32* @OSD_VIDWIN0XP, align 4
  %645 = call i32 @osd_write(%struct.osd_state* %640, i32 %643, i32 %644)
  %646 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %647 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %648 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %647, i32 0, i32 3
  %649 = load i32, i32* %648, align 4
  %650 = load i32, i32* @OSD_VIDWIN0XL, align 4
  %651 = call i32 @osd_write(%struct.osd_state* %646, i32 %649, i32 %650)
  br label %659

652:                                              ; preds = %604
  %653 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %654 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %655 = load i32, i32* @OSD_MISCCTL_S420D, align 4
  %656 = xor i32 %655, -1
  %657 = load i32, i32* @OSD_MISCCTL, align 4
  %658 = call i32 @osd_modify(%struct.osd_state* %653, i32 %654, i32 %656, i32 %657)
  br label %659

659:                                              ; preds = %652, %627
  br label %660

660:                                              ; preds = %659, %574
  %661 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %662 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %661, i32 0, i32 6
  %663 = load i32, i32* %662, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %707

665:                                              ; preds = %660
  %666 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %667 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %668 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %667, i32 0, i32 4
  %669 = load i32, i32* %668, align 4
  %670 = ashr i32 %669, 1
  %671 = load i32, i32* @OSD_VIDWIN1YP, align 4
  %672 = call i32 @osd_write(%struct.osd_state* %666, i32 %670, i32 %671)
  %673 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %674 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %675 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %674, i32 0, i32 5
  %676 = load i32, i32* %675, align 4
  %677 = ashr i32 %676, 1
  %678 = load i32, i32* @OSD_VIDWIN1YL, align 4
  %679 = call i32 @osd_write(%struct.osd_state* %673, i32 %677, i32 %678)
  %680 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %681 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* @VPBE_VERSION_2, align 4
  %684 = icmp eq i32 %682, %683
  br i1 %684, label %685, label %706

685:                                              ; preds = %665
  %686 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %687 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 4
  %689 = load i32, i32* @PIXFMT_NV12, align 4
  %690 = icmp eq i32 %688, %689
  br i1 %690, label %691, label %706

691:                                              ; preds = %685
  %692 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %693 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %694 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %693, i32 0, i32 4
  %695 = load i32, i32* %694, align 4
  %696 = ashr i32 %695, 1
  %697 = load i32, i32* @OSD_VIDWIN0YP, align 4
  %698 = call i32 @osd_write(%struct.osd_state* %692, i32 %696, i32 %697)
  %699 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %700 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %701 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %700, i32 0, i32 5
  %702 = load i32, i32* %701, align 4
  %703 = ashr i32 %702, 1
  %704 = load i32, i32* @OSD_VIDWIN0YL, align 4
  %705 = call i32 @osd_write(%struct.osd_state* %699, i32 %703, i32 %704)
  br label %706

706:                                              ; preds = %691, %685, %665
  br label %745

707:                                              ; preds = %660
  %708 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %709 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %710 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %709, i32 0, i32 4
  %711 = load i32, i32* %710, align 4
  %712 = load i32, i32* @OSD_VIDWIN1YP, align 4
  %713 = call i32 @osd_write(%struct.osd_state* %708, i32 %711, i32 %712)
  %714 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %715 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %716 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %715, i32 0, i32 5
  %717 = load i32, i32* %716, align 4
  %718 = load i32, i32* @OSD_VIDWIN1YL, align 4
  %719 = call i32 @osd_write(%struct.osd_state* %714, i32 %717, i32 %718)
  %720 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %721 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 4
  %723 = load i32, i32* @VPBE_VERSION_2, align 4
  %724 = icmp eq i32 %722, %723
  br i1 %724, label %725, label %744

725:                                              ; preds = %707
  %726 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %727 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %726, i32 0, i32 0
  %728 = load i32, i32* %727, align 4
  %729 = load i32, i32* @PIXFMT_NV12, align 4
  %730 = icmp eq i32 %728, %729
  br i1 %730, label %731, label %744

731:                                              ; preds = %725
  %732 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %733 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %734 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %733, i32 0, i32 4
  %735 = load i32, i32* %734, align 4
  %736 = load i32, i32* @OSD_VIDWIN0YP, align 4
  %737 = call i32 @osd_write(%struct.osd_state* %732, i32 %735, i32 %736)
  %738 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %739 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %740 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %739, i32 0, i32 5
  %741 = load i32, i32* %740, align 4
  %742 = load i32, i32* @OSD_VIDWIN0YL, align 4
  %743 = call i32 @osd_write(%struct.osd_state* %738, i32 %741, i32 %742)
  br label %744

744:                                              ; preds = %731, %725, %707
  br label %745

745:                                              ; preds = %744, %706
  br label %746

746:                                              ; preds = %3, %745, %561, %379, %160
  ret void
}

declare dso_local i32 @_osd_set_cbcr_order(%struct.osd_state*, i32) #1

declare dso_local i32 @_osd_enable_rgb888_pixblend(%struct.osd_state*, i32) #1

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

declare dso_local i32 @osd_write(%struct.osd_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
