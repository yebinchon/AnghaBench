; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_xsurf100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_xsurf100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.zorro_device_id = type { i32 }
%struct.platform_device = type { i32 }
%struct.xsurf100_ax_plat_data = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_SHAREABLE = common dso_local global i32 0, align 4
@XS100_8390_BASE = common dso_local global i64 0, align 8
@xsurf100_probe.reg_offsets = internal global [32 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [45 x i8] c"cannot reserve X-Surf 100 control registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@XS100_8390_DATA32_BASE = common dso_local global i64 0, align 8
@XS100_8390_DATA32_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"X-Surf 100 32-bit data access\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot reserve 32-bit area\0A\00", align 1
@AXFLG_HAS_EEPROM = common dso_local global i32 0, align 4
@is_xsurf100_network_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot ioremap area %pR (registers)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Cannot ioremap area %pR offset %x (32-bit access)\0A\00", align 1
@xs100_block_output = common dso_local global i32 0, align 4
@xs100_block_input = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ax88796\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot register platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @xsurf100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsurf100_probe(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.xsurf100_ax_plat_data, align 8
  %8 = alloca [2 x %struct.resource], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %11 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %12 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %13 = load i32, i32* @IORESOURCE_IRQ, align 4
  %14 = load i32, i32* @IORESOURCE_IRQ_SHAREABLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @DEFINE_RES_NAMED(i32 %12, i32 1, i32* null, i32 %15)
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %11, i64 1
  %19 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %20 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XS100_8390_BASE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @DEFINE_RES_MEM(i64 %24, i32 128)
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %28 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %32 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @request_mem_region(i64 %30, i32 256, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %38 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %37, i32 0, i32 2
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %181

42:                                               ; preds = %2
  %43 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %44 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XS100_8390_DATA32_BASE, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @XS100_8390_DATA32_SIZE, align 4
  %50 = call i32 @request_mem_region(i64 %48, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %54 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %53, i32 0, i32 2
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %174

58:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 4, %63
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* @xsurf100_probe.reg_offsets, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %59

71:                                               ; preds = %59
  %72 = call i32 @memset(%struct.xsurf100_ax_plat_data* %7, i32 0, i32 56)
  %73 = load i32, i32* @AXFLG_HAS_EEPROM, align 4
  %74 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 2, i32* %77, align 8
  %78 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 72, i32* %79, align 4
  %80 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 64, i32* %81, align 8
  %82 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32* getelementptr inbounds ([32 x i32], [32 x i32]* @xsurf100_probe.reg_offsets, i64 0, i64 0), i32** %83, align 8
  %84 = load i32, i32* @is_xsurf100_network_irq, align 4
  %85 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %88 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @ioremap(i64 %90, i32 256)
  %92 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %71
  %97 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %98 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %97, i32 0, i32 2
  %99 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %100 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %99, i32 0, i32 1
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %100)
  %102 = load i32, i32* @ENXIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %165

104:                                              ; preds = %71
  %105 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %106 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @XS100_8390_DATA32_BASE, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* @XS100_8390_DATA32_SIZE, align 4
  %112 = call i8* @ioremap(i64 %110, i32 %111)
  %113 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %104
  %118 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %119 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %118, i32 0, i32 2
  %120 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %121 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %120, i32 0, i32 1
  %122 = load i64, i64* @XS100_8390_DATA32_BASE, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %121, i64 %122)
  %124 = load i32, i32* @ENXIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %161

126:                                              ; preds = %104
  %127 = load i32, i32* @xs100_block_output, align 4
  %128 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @xs100_block_input, align 4
  %131 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %134 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %133, i32 0, i32 2
  %135 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %136 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %139 = call %struct.platform_device* @platform_device_register_resndata(i32* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %137, %struct.resource* %138, i32 2, %struct.xsurf100_ax_plat_data* %7, i32 56)
  store %struct.platform_device* %139, %struct.platform_device** %6, align 8
  %140 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %141 = call i64 @IS_ERR(%struct.platform_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %126
  %144 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %145 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %144, i32 0, i32 2
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* @ENXIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %10, align 4
  br label %157

149:                                              ; preds = %126
  %150 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %152 = call i32 @zorro_set_drvdata(%struct.zorro_dev* %150, %struct.platform_device* %151)
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %181

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %143
  %158 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @iounmap(i8* %159)
  br label %161

161:                                              ; preds = %157, %117
  %162 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @iounmap(i8* %163)
  br label %165

165:                                              ; preds = %161, %96
  %166 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %167 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @XS100_8390_DATA32_BASE, align 8
  %171 = add nsw i64 %169, %170
  %172 = load i32, i32* @XS100_8390_DATA32_SIZE, align 4
  %173 = call i32 @release_mem_region(i64 %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %52
  %175 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %176 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @release_mem_region(i64 %178, i32 256)
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %174, %155, %36
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @DEFINE_RES_NAMED(i32, i32, i32*, i32) #1

declare dso_local i32 @DEFINE_RES_MEM(i64, i32) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.xsurf100_ax_plat_data*, i32, i32) #1

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local %struct.platform_device* @platform_device_register_resndata(i32*, i8*, i32, %struct.resource*, i32, %struct.xsurf100_ax_plat_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @zorro_set_drvdata(%struct.zorro_dev*, %struct.platform_device*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
