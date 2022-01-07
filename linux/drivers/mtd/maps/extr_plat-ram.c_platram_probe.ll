; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_plat-ram.c_platram_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_plat-ram.c_platram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i64 }
%struct.platdata_mtd_ram = type { i8**, i64, i32, i32, i32, i32* }
%struct.platram_info = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.platdata_mtd_ram*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i64 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"probe entered\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to ioremap() region\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"got platform resource %p (0x%llx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"virt %p, %lu bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"initialised map, probing for mtd\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"map_ram\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to probe for map_ram\0A\00", align 1
@PLATRAM_RW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"registered mtd device\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to register the entire device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @platram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platram_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platdata_mtd_ram*, align 8
  %5 = alloca %struct.platram_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.platdata_mtd_ram* @dev_get_platdata(i32* %13)
  %15 = icmp eq %struct.platdata_mtd_ram* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %232

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.platdata_mtd_ram* @dev_get_platdata(i32* %24)
  store %struct.platdata_mtd_ram* %25, %struct.platdata_mtd_ram** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.platram_info* @kzalloc(i32 56, i32 %26)
  store %struct.platram_info* %27, %struct.platram_info** %5, align 8
  %28 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %29 = icmp eq %struct.platram_info* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %232

33:                                               ; preds = %22
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.platram_info* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %40 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %42 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %43 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %42, i32 0, i32 2
  store %struct.platdata_mtd_ram* %41, %struct.platdata_mtd_ram** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %45, i32 0)
  store %struct.resource* %46, %struct.resource** %6, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i32 @devm_ioremap_resource(i32* %48, %struct.resource* %49)
  %51 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %52 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %55 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %33
  %61 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %62 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %229

69:                                               ; preds = %33
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.resource* %72, i64 %75)
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %81 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  store i64 %79, i64* %82, align 8
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = call i32 @resource_size(%struct.resource* %83)
  %85 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %86 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  %88 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %89 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %69
  %93 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %94 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  br label %102

97:                                               ; preds = %69
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i8* [ %96, %92 ], [ %101, %97 ]
  %104 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %105 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %108 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %111 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %116 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %120 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %122)
  %124 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %125 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %124, i32 0, i32 1
  %126 = call i32 @simple_map_init(%struct.TYPE_7__* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %130 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %131 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %162

134:                                              ; preds = %102
  %135 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %136 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  store i8** %137, i8*** %8, align 8
  br label %138

138:                                              ; preds = %158, %134
  %139 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %140 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br label %147

147:                                              ; preds = %143, %138
  %148 = phi i1 [ false, %138 ], [ %146, %143 ]
  br i1 %148, label %149, label %161

149:                                              ; preds = %147
  %150 = load i8**, i8*** %8, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %153 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %152, i32 0, i32 1
  %154 = call i8* @do_map_probe(i8* %151, %struct.TYPE_7__* %153)
  %155 = bitcast i8* %154 to %struct.TYPE_8__*
  %156 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %157 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %156, i32 0, i32 0
  store %struct.TYPE_8__* %155, %struct.TYPE_8__** %157, align 8
  br label %158

158:                                              ; preds = %149
  %159 = load i8**, i8*** %8, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %160, i8*** %8, align 8
  br label %138

161:                                              ; preds = %147
  br label %169

162:                                              ; preds = %102
  %163 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %164 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %163, i32 0, i32 1
  %165 = call i8* @do_map_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_7__* %164)
  %166 = bitcast i8* %165 to %struct.TYPE_8__*
  %167 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %168 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %167, i32 0, i32 0
  store %struct.TYPE_8__* %166, %struct.TYPE_8__** %168, align 8
  br label %169

169:                                              ; preds = %162, %161
  %170 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %171 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %170, i32 0, i32 0
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = icmp eq %struct.TYPE_8__* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @dev_err(i32* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %7, align 4
  br label %229

180:                                              ; preds = %169
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %184 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32* %182, i32** %187, align 8
  %188 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %189 = load i32, i32* @PLATRAM_RW, align 4
  %190 = call i32 @platram_setrw(%struct.platram_info* %188, i32 %189)
  %191 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %192 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %195 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %198 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %201 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @mtd_device_parse_register(%struct.TYPE_8__* %193, i32 %196, i32* null, i32 %199, i64 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %180
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_info(i32* %208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %180
  %211 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %212 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %210
  %216 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %217 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = call i32 @mtd_device_register(%struct.TYPE_8__* %218, i32* null, i32 0)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %226

226:                                              ; preds = %222, %215
  br label %227

227:                                              ; preds = %226, %210
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %2, align 4
  br label %234

229:                                              ; preds = %174, %60
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = call i32 @platram_remove(%struct.platform_device* %230)
  br label %232

232:                                              ; preds = %229, %30, %16
  %233 = load i32, i32* %7, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %227
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.platdata_mtd_ram* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.platram_info* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.platram_info*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @simple_map_init(%struct.TYPE_7__*) #1

declare dso_local i8* @do_map_probe(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @platram_setrw(%struct.platram_info*, i32) #1

declare dso_local i32 @mtd_device_parse_register(%struct.TYPE_8__*, i32, i32*, i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @platram_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
