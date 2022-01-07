; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-bcm-iproc.c_mdio_mux_iproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-bcm-iproc.c_mdio_mux_iproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.iproc_mdiomux_desc = type { i32*, %struct.TYPE_10__*, %struct.mii_bus*, i32, i32* }
%struct.mii_bus = type { i8*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_10__*, i32, %struct.iproc_mdiomux_desc* }
%struct.TYPE_9__ = type { i32 }
%struct.resource = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fix base address in dt-blob\0A\00", align 1
@MDIO_REG_ADDR_SPACE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to ioremap register\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"mdiomux bus alloc failed\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to enable core clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"iProc MDIO mux bus\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@iproc_mdiomux_read = common dso_local global i32 0, align 4
@iproc_mdiomux_write = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"mdiomux registration failed\0A\00", align 1
@mdio_mux_iproc_switch_fn = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"mdiomux initialization failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"iProc mdiomux registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mdio_mux_iproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_mux_iproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iproc_mdiomux_desc*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.iproc_mdiomux_desc* @devm_kzalloc(%struct.TYPE_10__* %9, i32 40, i32 %10)
  store %struct.iproc_mdiomux_desc* %11, %struct.iproc_mdiomux_desc** %4, align 8
  %12 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %13 = icmp ne %struct.iproc_mdiomux_desc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %221

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 2
  %20 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %21 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %20, i32 0, i32 1
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 4095
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 2
  %33 = call i32 @dev_info(%struct.TYPE_10__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, -4096
  store i32 %37, i32* %35, align 8
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @MDIO_REG_ADDR_SPACE_SIZE, align 8
  %43 = add nsw i64 %41, %42
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %30, %17
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 2
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = call i32* @devm_ioremap_resource(%struct.TYPE_10__* %49, %struct.resource* %50)
  %52 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %53 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %55 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 2
  %62 = call i32 @dev_err(%struct.TYPE_10__* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %64 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %2, align 4
  br label %221

67:                                               ; preds = %47
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 2
  %70 = call %struct.mii_bus* @devm_mdiobus_alloc(%struct.TYPE_10__* %69)
  %71 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %72 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %71, i32 0, i32 2
  store %struct.mii_bus* %70, %struct.mii_bus** %72, align 8
  %73 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %74 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %73, i32 0, i32 2
  %75 = load %struct.mii_bus*, %struct.mii_bus** %74, align 8
  %76 = icmp ne %struct.mii_bus* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 2
  %80 = call i32 @dev_err(%struct.TYPE_10__* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %221

83:                                               ; preds = %67
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 2
  %86 = call i32* @devm_clk_get(%struct.TYPE_10__* %85, i32* null)
  %87 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %88 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %90 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32* @ERR_PTR(i32 %93)
  %95 = icmp eq i32* %91, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %83
  %97 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %98 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32* @ERR_PTR(i32 %101)
  %103 = icmp eq i32* %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96, %83
  %105 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %106 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %119

107:                                              ; preds = %96
  %108 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %109 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @IS_ERR(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %115 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @PTR_ERR(i32* %116)
  store i32 %117, i32* %2, align 4
  br label %221

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %121 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @clk_prepare_enable(i32* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 2
  %129 = call i32 @dev_err(%struct.TYPE_10__* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %221

131:                                              ; preds = %119
  %132 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %133 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %132, i32 0, i32 2
  %134 = load %struct.mii_bus*, %struct.mii_bus** %133, align 8
  store %struct.mii_bus* %134, %struct.mii_bus** %5, align 8
  %135 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %136 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %137 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %136, i32 0, i32 7
  store %struct.iproc_mdiomux_desc* %135, %struct.iproc_mdiomux_desc** %137, align 8
  %138 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %139 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %139, align 8
  %140 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %141 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @snprintf(i32 %142, i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %146, i32 %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 2
  %153 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %154 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %153, i32 0, i32 5
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %154, align 8
  %155 = load i32, i32* @iproc_mdiomux_read, align 4
  %156 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %157 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @iproc_mdiomux_write, align 4
  %159 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %160 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %162 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %161, i32 0, i32 2
  store i32 -1, i32* %162, align 4
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %168 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %171 = call i32 @mdiobus_register(%struct.mii_bus* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %131
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 2
  %177 = call i32 @dev_err(%struct.TYPE_10__* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %215

178:                                              ; preds = %131
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %181 = call i32 @platform_set_drvdata(%struct.platform_device* %179, %struct.iproc_mdiomux_desc* %180)
  %182 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %183 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %186 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %185, i32 0, i32 1
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @mdio_mux_iproc_switch_fn, align 4
  %191 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %192 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %191, i32 0, i32 3
  %193 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %194 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %195 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %194, i32 0, i32 2
  %196 = load %struct.mii_bus*, %struct.mii_bus** %195, align 8
  %197 = call i32 @mdio_mux_init(%struct.TYPE_10__* %184, i32 %189, i32 %190, i32* %192, %struct.iproc_mdiomux_desc* %193, %struct.mii_bus* %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %178
  %201 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %202 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %201, i32 0, i32 1
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = call i32 @dev_info(%struct.TYPE_10__* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %212

205:                                              ; preds = %178
  %206 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %207 = call i32 @mdio_mux_iproc_config(%struct.iproc_mdiomux_desc* %206)
  %208 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %209 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = call i32 @dev_info(%struct.TYPE_10__* %210, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %221

212:                                              ; preds = %200
  %213 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %214 = call i32 @mdiobus_unregister(%struct.mii_bus* %213)
  br label %215

215:                                              ; preds = %212, %174
  %216 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %4, align 8
  %217 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @clk_disable_unprepare(i32* %218)
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %215, %205, %126, %113, %77, %59, %14
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.iproc_mdiomux_desc* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(%struct.TYPE_10__*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iproc_mdiomux_desc*) #1

declare dso_local i32 @mdio_mux_init(%struct.TYPE_10__*, i32, i32, i32*, %struct.iproc_mdiomux_desc*, %struct.mii_bus*) #1

declare dso_local i32 @mdio_mux_iproc_config(%struct.iproc_mdiomux_desc*) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
