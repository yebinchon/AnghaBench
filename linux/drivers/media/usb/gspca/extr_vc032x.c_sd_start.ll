; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sd = type { i32, i64, i32, i32 }

@sd_start.mi1320_soc_init = internal global [3 x [4 x i32]*] [[4 x i32]* inttoptr (i64 129 to [4 x i32]*), [4 x i32]* inttoptr (i64 128 to [4 x i32]*), [4 x i32]* inttoptr (i64 130 to [4 x i32]*)], align 16
@FL_SAMSUNG = common dso_local global i32 0, align 4
@BRIDGE_VC0321 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@hv7131r_gamma = common dso_local global i32* null, align 8
@hv7131r_matrix = common dso_local global i32* null, align 8
@hv7131r_initQVGA_data = common dso_local global i32** null, align 8
@hv7131r_initVGA_data = common dso_local global i32** null, align 8
@ov7660_gamma = common dso_local global i32* null, align 8
@ov7660_matrix = common dso_local global i32* null, align 8
@ov7660_initQVGA_data = common dso_local global i32** null, align 8
@ov7660_initVGA_data = common dso_local global i32** null, align 8
@mi1320_gamma = common dso_local global i32* null, align 8
@mi0360_matrix = common dso_local global i32* null, align 8
@mi0360_initQVGA_JPG = common dso_local global i32** null, align 8
@mi0360_initVGA_JPG = common dso_local global i32** null, align 8
@mi1320_matrix = common dso_local global i32* null, align 8
@mi1310_socinitQVGA_JPG = common dso_local global i32** null, align 8
@mi1310_socinitVGA_JPG = common dso_local global i32** null, align 8
@mi1310_soc_InitSXGA_JPG = common dso_local global i32** null, align 8
@mi1320_initQVGA_data = common dso_local global i32** null, align 8
@mi1320_initVGA_data = common dso_local global i32** null, align 8
@ov7670_InitVGA = common dso_local global i32** null, align 8
@ov7670_InitQVGA = common dso_local global i32** null, align 8
@po3130_gamma = common dso_local global i32* null, align 8
@po3130_matrix = common dso_local global i32* null, align 8
@po3130_initQVGA_data = common dso_local global i32** null, align 8
@po3130_initVGA_data = common dso_local global i32** null, align 8
@po3130_rundata = common dso_local global i32** null, align 8
@po1200_gamma = common dso_local global i32* null, align 8
@po1200_matrix = common dso_local global i32* null, align 8
@po1200_initVGA_data = common dso_local global i32** null, align 8
@poxxxx_init_common = common dso_local global i32** null, align 8
@poxxxx_init_start_3 = common dso_local global i32** null, align 8
@poxxxx_initQVGA = common dso_local global i32** null, align 8
@poxxxx_initVGA = common dso_local global i32** null, align 8
@poxxxx_init_end_1 = common dso_local global i32** null, align 8
@poxxxx_init_end_2 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [4 x i32]*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FL_SAMSUNG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @reg_w(%struct.gspca_dev* %17, i32 137, i32 61695, i32 65535)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @reg_w(%struct.gspca_dev* %19, i32 169, i32 33608, i32 14)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @reg_w(%struct.gspca_dev* %21, i32 169, i32 0, i32 26)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BRIDGE_VC0321, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @reg_w(%struct.gspca_dev* %30, i32 160, i32 255, i32 49132)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w(%struct.gspca_dev* %32, i32 160, i32 255, i32 49133)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_w(%struct.gspca_dev* %34, i32 160, i32 255, i32 49134)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @reg_w(%struct.gspca_dev* %36, i32 160, i32 255, i32 49135)
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 2
  store i32 46, i32* %39, align 8
  br label %60

40:                                               ; preds = %23
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load %struct.sd*, %struct.sd** %3, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %59

56:                                               ; preds = %40
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 2
  store i32 32, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %178 [
    i32 140, label %76
    i32 135, label %88
    i32 139, label %100
    i32 138, label %112
    i32 137, label %126
    i32 136, label %138
    i32 134, label %145
    i32 132, label %155
    i32 133, label %173
  ]

76:                                               ; preds = %60
  %77 = load i32*, i32** @hv7131r_gamma, align 8
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** @hv7131r_matrix, align 8
  store i32* %78, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32**, i32*** @hv7131r_initQVGA_data, align 8
  %83 = bitcast i32** %82 to [4 x i32]*
  store [4 x i32]* %83, [4 x i32]** %4, align 8
  br label %87

84:                                               ; preds = %76
  %85 = load i32**, i32*** @hv7131r_initVGA_data, align 8
  %86 = bitcast i32** %85 to [4 x i32]*
  store [4 x i32]* %86, [4 x i32]** %4, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %216

88:                                               ; preds = %60
  %89 = load i32*, i32** @ov7660_gamma, align 8
  store i32* %89, i32** %5, align 8
  %90 = load i32*, i32** @ov7660_matrix, align 8
  store i32* %90, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32**, i32*** @ov7660_initQVGA_data, align 8
  %95 = bitcast i32** %94 to [4 x i32]*
  store [4 x i32]* %95, [4 x i32]** %4, align 8
  br label %99

96:                                               ; preds = %88
  %97 = load i32**, i32*** @ov7660_initVGA_data, align 8
  %98 = bitcast i32** %97 to [4 x i32]*
  store [4 x i32]* %98, [4 x i32]** %4, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %216

100:                                              ; preds = %60
  %101 = load i32*, i32** @mi1320_gamma, align 8
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** @mi0360_matrix, align 8
  store i32* %102, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32**, i32*** @mi0360_initQVGA_JPG, align 8
  %107 = bitcast i32** %106 to [4 x i32]*
  store [4 x i32]* %107, [4 x i32]** %4, align 8
  br label %111

108:                                              ; preds = %100
  %109 = load i32**, i32*** @mi0360_initVGA_JPG, align 8
  %110 = bitcast i32** %109 to [4 x i32]*
  store [4 x i32]* %110, [4 x i32]** %4, align 8
  br label %111

111:                                              ; preds = %108, %105
  br label %216

112:                                              ; preds = %60
  %113 = load i32*, i32** @mi1320_gamma, align 8
  store i32* %113, i32** %5, align 8
  %114 = load i32*, i32** @mi1320_matrix, align 8
  store i32* %114, i32** %6, align 8
  %115 = load i32, i32* %7, align 4
  switch i32 %115, label %122 [
    i32 1, label %116
    i32 0, label %119
  ]

116:                                              ; preds = %112
  %117 = load i32**, i32*** @mi1310_socinitQVGA_JPG, align 8
  %118 = bitcast i32** %117 to [4 x i32]*
  store [4 x i32]* %118, [4 x i32]** %4, align 8
  br label %125

119:                                              ; preds = %112
  %120 = load i32**, i32*** @mi1310_socinitVGA_JPG, align 8
  %121 = bitcast i32** %120 to [4 x i32]*
  store [4 x i32]* %121, [4 x i32]** %4, align 8
  br label %125

122:                                              ; preds = %112
  %123 = load i32**, i32*** @mi1310_soc_InitSXGA_JPG, align 8
  %124 = bitcast i32** %123 to [4 x i32]*
  store [4 x i32]* %124, [4 x i32]** %4, align 8
  br label %125

125:                                              ; preds = %122, %119, %116
  br label %216

126:                                              ; preds = %60
  %127 = load i32*, i32** @mi1320_gamma, align 8
  store i32* %127, i32** %5, align 8
  %128 = load i32*, i32** @mi1320_matrix, align 8
  store i32* %128, i32** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32**, i32*** @mi1320_initQVGA_data, align 8
  %133 = bitcast i32** %132 to [4 x i32]*
  store [4 x i32]* %133, [4 x i32]** %4, align 8
  br label %137

134:                                              ; preds = %126
  %135 = load i32**, i32*** @mi1320_initVGA_data, align 8
  %136 = bitcast i32** %135 to [4 x i32]*
  store [4 x i32]* %136, [4 x i32]** %4, align 8
  br label %137

137:                                              ; preds = %134, %131
  br label %216

138:                                              ; preds = %60
  %139 = load i32*, i32** @mi1320_gamma, align 8
  store i32* %139, i32** %5, align 8
  %140 = load i32*, i32** @mi1320_matrix, align 8
  store i32* %140, i32** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x [4 x i32]*], [3 x [4 x i32]*]* @sd_start.mi1320_soc_init, i64 0, i64 %142
  %144 = load [4 x i32]*, [4 x i32]** %143, align 8
  store [4 x i32]* %144, [4 x i32]** %4, align 8
  br label %216

145:                                              ; preds = %60
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32**, i32*** @ov7670_InitVGA, align 8
  br label %152

150:                                              ; preds = %145
  %151 = load i32**, i32*** @ov7670_InitQVGA, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32** [ %149, %148 ], [ %151, %150 ]
  %154 = bitcast i32** %153 to [4 x i32]*
  store [4 x i32]* %154, [4 x i32]** %4, align 8
  br label %216

155:                                              ; preds = %60
  %156 = load i32*, i32** @po3130_gamma, align 8
  store i32* %156, i32** %5, align 8
  %157 = load i32*, i32** @po3130_matrix, align 8
  store i32* %157, i32** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32**, i32*** @po3130_initQVGA_data, align 8
  %162 = bitcast i32** %161 to [4 x i32]*
  store [4 x i32]* %162, [4 x i32]** %4, align 8
  br label %166

163:                                              ; preds = %155
  %164 = load i32**, i32*** @po3130_initVGA_data, align 8
  %165 = bitcast i32** %164 to [4 x i32]*
  store [4 x i32]* %165, [4 x i32]** %4, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = load [4 x i32]*, [4 x i32]** %4, align 8
  %169 = bitcast [4 x i32]* %168 to i32**
  %170 = call i32 @usb_exchange(%struct.gspca_dev* %167, i32** %169)
  %171 = load i32**, i32*** @po3130_rundata, align 8
  %172 = bitcast i32** %171 to [4 x i32]*
  store [4 x i32]* %172, [4 x i32]** %4, align 8
  br label %216

173:                                              ; preds = %60
  %174 = load i32*, i32** @po1200_gamma, align 8
  store i32* %174, i32** %5, align 8
  %175 = load i32*, i32** @po1200_matrix, align 8
  store i32* %175, i32** %6, align 8
  %176 = load i32**, i32*** @po1200_initVGA_data, align 8
  %177 = bitcast i32** %176 to [4 x i32]*
  store [4 x i32]* %177, [4 x i32]** %4, align 8
  br label %216

178:                                              ; preds = %60
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = load i32**, i32*** @poxxxx_init_common, align 8
  %181 = call i32 @usb_exchange(%struct.gspca_dev* %179, i32** %180)
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %183 = call i32 @setgamma(%struct.gspca_dev* %182)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = load i32**, i32*** @poxxxx_init_start_3, align 8
  %186 = call i32 @usb_exchange(%struct.gspca_dev* %184, i32** %185)
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load i32**, i32*** @poxxxx_initQVGA, align 8
  %191 = bitcast i32** %190 to [4 x i32]*
  store [4 x i32]* %191, [4 x i32]** %4, align 8
  br label %195

192:                                              ; preds = %178
  %193 = load i32**, i32*** @poxxxx_initVGA, align 8
  %194 = bitcast i32** %193 to [4 x i32]*
  store [4 x i32]* %194, [4 x i32]** %4, align 8
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %197 = load [4 x i32]*, [4 x i32]** %4, align 8
  %198 = bitcast [4 x i32]* %197 to i32**
  %199 = call i32 @usb_exchange(%struct.gspca_dev* %196, i32** %198)
  %200 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %201 = call i32 @reg_r(%struct.gspca_dev* %200, i32 140, i32 0, i32 3)
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %204 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 0, i32 1
  %212 = call i32 @reg_w(%struct.gspca_dev* %202, i32 160, i32 %211, i32 45916)
  %213 = call i32 @msleep(i32 300)
  %214 = load i32**, i32*** @poxxxx_init_end_1, align 8
  %215 = bitcast i32** %214 to [4 x i32]*
  store [4 x i32]* %215, [4 x i32]** %4, align 8
  br label %216

216:                                              ; preds = %195, %173, %166, %152, %138, %137, %125, %111, %99, %87
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = load [4 x i32]*, [4 x i32]** %4, align 8
  %219 = bitcast [4 x i32]* %218 to i32**
  %220 = call i32 @usb_exchange(%struct.gspca_dev* %217, i32** %219)
  %221 = load i32*, i32** %5, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %250

223:                                              ; preds = %216
  %224 = load i32*, i32** %6, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %250

226:                                              ; preds = %223
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @put_tab_to_reg(%struct.gspca_dev* %227, i32* %228, i32 17, i32 47178)
  %230 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @put_tab_to_reg(%struct.gspca_dev* %230, i32* %231, i32 17, i32 47195)
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @put_tab_to_reg(%struct.gspca_dev* %233, i32* %234, i32 17, i32 47212)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @put_tab_to_reg(%struct.gspca_dev* %236, i32* %237, i32 9, i32 47148)
  %239 = load %struct.sd*, %struct.sd** %3, align 8
  %240 = getelementptr inbounds %struct.sd, %struct.sd* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  switch i32 %241, label %248 [
    i32 133, label %242
    i32 140, label %242
    i32 138, label %245
  ]

242:                                              ; preds = %226, %226
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %244 = call i32 @reg_w(%struct.gspca_dev* %243, i32 137, i32 1024, i32 5141)
  br label %248

245:                                              ; preds = %226
  %246 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %247 = call i32 @reg_w(%struct.gspca_dev* %246, i32 137, i32 1420, i32 0)
  br label %248

248:                                              ; preds = %226, %245, %242
  %249 = call i32 @msleep(i32 100)
  br label %250

250:                                              ; preds = %248, %223, %216
  %251 = load %struct.sd*, %struct.sd** %3, align 8
  %252 = getelementptr inbounds %struct.sd, %struct.sd* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  switch i32 %253, label %270 [
    i32 134, label %254
    i32 131, label %261
  ]

254:                                              ; preds = %250
  %255 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %256 = call i32 @reg_w(%struct.gspca_dev* %255, i32 135, i32 65535, i32 65535)
  %257 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %258 = call i32 @reg_w(%struct.gspca_dev* %257, i32 136, i32 65280, i32 61681)
  %259 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %260 = call i32 @reg_w(%struct.gspca_dev* %259, i32 160, i32 0, i32 49151)
  br label %270

261:                                              ; preds = %250
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %263 = load i32**, i32*** @poxxxx_init_end_2, align 8
  %264 = call i32 @usb_exchange(%struct.gspca_dev* %262, i32** %263)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = call i32 @setwb(%struct.gspca_dev* %265)
  %267 = call i32 @msleep(i32 80)
  %268 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %269 = call i32 @reg_w(%struct.gspca_dev* %268, i32 137, i32 65535, i32 65023)
  br label %270

270:                                              ; preds = %250, %261, %254
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %272 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  ret i32 %273
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @usb_exchange(%struct.gspca_dev*, i32**) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @put_tab_to_reg(%struct.gspca_dev*, i32*, i32, i32) #1

declare dso_local i32 @setwb(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
