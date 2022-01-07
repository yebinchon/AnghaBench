; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm1105_dev = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i8* }
%struct.TYPE_6__ = type { i32 }

@GPIO15 = common dso_local global i32 0, align 4
@stv0299_attach = common dso_local global i32 0, align 4
@sharp_z0194a_config = common dso_local global i32 0, align 4
@dm1105_set_voltage = common dso_local global i8* null, align 8
@dvb_pll_attach = common dso_local global i32 0, align 4
@DVB_PLL_OPERA1 = common dso_local global i32 0, align 4
@stv0288_attach = common dso_local global i32 0, align 4
@earda_config = common dso_local global i32 0, align 4
@stb6000_attach = common dso_local global i32 0, align 4
@si21xx_attach = common dso_local global i32 0, align 4
@serit_config = common dso_local global i32 0, align 4
@cx24116_attach = common dso_local global i32 0, align 4
@serit_sp2633_config = common dso_local global i32 0, align 4
@ds3000_attach = common dso_local global i32 0, align 4
@dvbworld_ds3000_config = common dso_local global i32 0, align 4
@ts2020_attach = common dso_local global i32 0, align 4
@dvbworld_ts2020_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not attach frontend\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm1105_dev*)* @frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_init(%struct.dm1105_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm1105_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.dm1105_dev* %0, %struct.dm1105_dev** %3, align 8
  %5 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %6 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %144 [
    i32 128, label %8
    i32 129, label %95
    i32 130, label %143
    i32 131, label %143
  ]

8:                                                ; preds = %1
  %9 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %10 = load i32, i32* @GPIO15, align 4
  %11 = call i32 @dm1105_gpio_enable(%struct.dm1105_dev* %9, i32 %10, i32 1)
  %12 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %13 = load i32, i32* @GPIO15, align 4
  %14 = call i32 @dm1105_gpio_clear(%struct.dm1105_dev* %12, i32 %13)
  %15 = call i32 @msleep(i32 100)
  %16 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %17 = load i32, i32* @GPIO15, align 4
  %18 = call i32 @dm1105_gpio_set(%struct.dm1105_dev* %16, i32 %17)
  %19 = call i32 @msleep(i32 200)
  %20 = load i32, i32* @stv0299_attach, align 4
  %21 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %22 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %21, i32 0, i32 5
  %23 = ptrtoint i32* %22 to i32
  %24 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %20, %struct.TYPE_8__* bitcast (i32* @sharp_z0194a_config to %struct.TYPE_8__*), i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_8__*
  %26 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %27 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %26, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %29 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %8
  %33 = load i8*, i8** @dm1105_set_voltage, align 8
  %34 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %35 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i8* %33, i8** %38, align 8
  %39 = load i32, i32* @dvb_pll_attach, align 4
  %40 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %41 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %44 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %43, i32 0, i32 5
  %45 = load i32, i32* @DVB_PLL_OPERA1, align 4
  %46 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %39, %struct.TYPE_8__* %42, i32 96, i32* %44, i32 %45)
  br label %220

47:                                               ; preds = %8
  %48 = load i32, i32* @stv0288_attach, align 4
  %49 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %50 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %49, i32 0, i32 5
  %51 = ptrtoint i32* %50 to i32
  %52 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %48, %struct.TYPE_8__* bitcast (i32* @earda_config to %struct.TYPE_8__*), i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_8__*
  %54 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %55 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %54, i32 0, i32 1
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %57 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %47
  %61 = load i8*, i8** @dm1105_set_voltage, align 8
  %62 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %63 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i8* %61, i8** %66, align 8
  %67 = load i32, i32* @stb6000_attach, align 4
  %68 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %69 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %72 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %71, i32 0, i32 5
  %73 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %67, %struct.TYPE_8__* %70, i32 97, i32* %72)
  br label %220

74:                                               ; preds = %47
  %75 = load i32, i32* @si21xx_attach, align 4
  %76 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %77 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %76, i32 0, i32 5
  %78 = ptrtoint i32* %77 to i32
  %79 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %75, %struct.TYPE_8__* bitcast (i32* @serit_config to %struct.TYPE_8__*), i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_8__*
  %81 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %82 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %81, i32 0, i32 1
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %82, align 8
  %83 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %84 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load i8*, i8** @dm1105_set_voltage, align 8
  %89 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %90 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i8* %88, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %74
  br label %220

95:                                               ; preds = %1
  %96 = load i32, i32* @cx24116_attach, align 4
  %97 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %98 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %97, i32 0, i32 4
  %99 = ptrtoint i32* %98 to i32
  %100 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %96, %struct.TYPE_8__* bitcast (i32* @serit_sp2633_config to %struct.TYPE_8__*), i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_8__*
  %102 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %103 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %102, i32 0, i32 1
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %103, align 8
  %104 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %105 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = icmp ne %struct.TYPE_8__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %95
  %109 = load i8*, i8** @dm1105_set_voltage, align 8
  %110 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %111 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i8* %109, i8** %114, align 8
  br label %220

115:                                              ; preds = %95
  %116 = load i32, i32* @ds3000_attach, align 4
  %117 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %118 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %117, i32 0, i32 4
  %119 = ptrtoint i32* %118 to i32
  %120 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %116, %struct.TYPE_8__* bitcast (i32* @dvbworld_ds3000_config to %struct.TYPE_8__*), i32 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_8__*
  %122 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %123 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %122, i32 0, i32 1
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %123, align 8
  %124 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %125 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = icmp ne %struct.TYPE_8__* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %115
  %129 = load i32, i32* @ts2020_attach, align 4
  %130 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %131 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %134 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %133, i32 0, i32 4
  %135 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %129, %struct.TYPE_8__* %132, i32 ptrtoint (i32* @dvbworld_ts2020_config to i32), i32* %134)
  %136 = load i8*, i8** @dm1105_set_voltage, align 8
  %137 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %138 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i8* %136, i8** %141, align 8
  br label %142

142:                                              ; preds = %128, %115
  br label %220

143:                                              ; preds = %1, %1
  br label %144

144:                                              ; preds = %1, %143
  %145 = load i32, i32* @stv0299_attach, align 4
  %146 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %147 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %146, i32 0, i32 4
  %148 = ptrtoint i32* %147 to i32
  %149 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %145, %struct.TYPE_8__* bitcast (i32* @sharp_z0194a_config to %struct.TYPE_8__*), i32 %148)
  %150 = bitcast i8* %149 to %struct.TYPE_8__*
  %151 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %152 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %151, i32 0, i32 1
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %152, align 8
  %153 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %154 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = icmp ne %struct.TYPE_8__* %155, null
  br i1 %156, label %157, label %172

157:                                              ; preds = %144
  %158 = load i8*, i8** @dm1105_set_voltage, align 8
  %159 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %160 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i8* %158, i8** %163, align 8
  %164 = load i32, i32* @dvb_pll_attach, align 4
  %165 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %166 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %169 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %168, i32 0, i32 4
  %170 = load i32, i32* @DVB_PLL_OPERA1, align 4
  %171 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %164, %struct.TYPE_8__* %167, i32 96, i32* %169, i32 %170)
  br label %220

172:                                              ; preds = %144
  %173 = load i32, i32* @stv0288_attach, align 4
  %174 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %175 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %174, i32 0, i32 4
  %176 = ptrtoint i32* %175 to i32
  %177 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %173, %struct.TYPE_8__* bitcast (i32* @earda_config to %struct.TYPE_8__*), i32 %176)
  %178 = bitcast i8* %177 to %struct.TYPE_8__*
  %179 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %180 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %179, i32 0, i32 1
  store %struct.TYPE_8__* %178, %struct.TYPE_8__** %180, align 8
  %181 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %182 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %181, i32 0, i32 1
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = icmp ne %struct.TYPE_8__* %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %172
  %186 = load i8*, i8** @dm1105_set_voltage, align 8
  %187 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %188 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  store i8* %186, i8** %191, align 8
  %192 = load i32, i32* @stb6000_attach, align 4
  %193 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %194 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %193, i32 0, i32 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %197 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %196, i32 0, i32 4
  %198 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %192, %struct.TYPE_8__* %195, i32 97, i32* %197)
  br label %220

199:                                              ; preds = %172
  %200 = load i32, i32* @si21xx_attach, align 4
  %201 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %202 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %201, i32 0, i32 4
  %203 = ptrtoint i32* %202 to i32
  %204 = call i8* (i32, %struct.TYPE_8__*, i32, ...) @dvb_attach(i32 %200, %struct.TYPE_8__* bitcast (i32* @serit_config to %struct.TYPE_8__*), i32 %203)
  %205 = bitcast i8* %204 to %struct.TYPE_8__*
  %206 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %207 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %206, i32 0, i32 1
  store %struct.TYPE_8__* %205, %struct.TYPE_8__** %207, align 8
  %208 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %209 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = icmp ne %struct.TYPE_8__* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %199
  %213 = load i8*, i8** @dm1105_set_voltage, align 8
  %214 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %215 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %214, i32 0, i32 1
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  store i8* %213, i8** %218, align 8
  br label %219

219:                                              ; preds = %212, %199
  br label %220

220:                                              ; preds = %219, %185, %157, %142, %108, %94, %60, %32
  %221 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %222 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %221, i32 0, i32 1
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = icmp ne %struct.TYPE_8__* %223, null
  br i1 %224, label %233, label %225

225:                                              ; preds = %220
  %226 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %227 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %226, i32 0, i32 3
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = call i32 @dev_err(i32* %229, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %231 = load i32, i32* @ENODEV, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %2, align 4
  br label %266

233:                                              ; preds = %220
  %234 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %235 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %234, i32 0, i32 2
  %236 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %237 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %236, i32 0, i32 1
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = call i32 @dvb_register_frontend(i32* %235, %struct.TYPE_8__* %238)
  store i32 %239, i32* %4, align 4
  %240 = load i32, i32* %4, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %265

242:                                              ; preds = %233
  %243 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %244 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %243, i32 0, i32 1
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %247, align 8
  %249 = icmp ne i32 (%struct.TYPE_8__*)* %248, null
  br i1 %249, label %250, label %261

250:                                              ; preds = %242
  %251 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %252 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %251, i32 0, i32 1
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %255, align 8
  %257 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %258 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %257, i32 0, i32 1
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = call i32 %256(%struct.TYPE_8__* %259)
  br label %261

261:                                              ; preds = %250, %242
  %262 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %263 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %262, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %263, align 8
  %264 = load i32, i32* %4, align 4
  store i32 %264, i32* %2, align 4
  br label %266

265:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %265, %261, %225
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @dm1105_gpio_enable(%struct.dm1105_dev*, i32, i32) #1

declare dso_local i32 @dm1105_gpio_clear(%struct.dm1105_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dm1105_gpio_set(%struct.dm1105_dev*, i32) #1

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_8__*, i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dvb_register_frontend(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
