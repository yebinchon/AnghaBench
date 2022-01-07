; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali_pci.c_denali_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali_pci.c_denali_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.denali_controller = type { i32, i32, i32, i8*, i8*, i32*, i32*, i32 }
%struct.denali_chip = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Spectra: pci_enable_device failed.\0A\00", align 1
@INTEL_CE4100 = common dso_local global i64 0, align 8
@denali_pci_ecc_caps = common dso_local global i32 0, align 4
@DENALI_NAND_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Spectra: Unable to request memory regions\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Spectra: Unable to remap memory region\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Spectra: ioremap_nocache failed!\00", align 1
@sels = common dso_local global i32 0, align 4
@NAND_ECC_MAXIMIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @denali_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.denali_controller*, align 8
  %11 = alloca %struct.denali_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(i32* %16, i32 56, i32 %17)
  %19 = bitcast i8* %18 to %struct.denali_controller*
  store %struct.denali_controller* %19, %struct.denali_controller** %10, align 8
  %20 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %21 = icmp ne %struct.denali_controller* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %204

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pcim_enable_device(%struct.pci_dev* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %3, align 4
  br label %204

35:                                               ; preds = %25
  %36 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INTEL_CE4100, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i64 @pci_resource_start(%struct.pci_dev* %42, i32 0)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i64 @pci_resource_len(%struct.pci_dev* %44, i32 1)
  store i64 %45, i64* %9, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i64 @pci_resource_start(%struct.pci_dev* %46, i32 1)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i64 @pci_resource_len(%struct.pci_dev* %48, i32 1)
  store i64 %49, i64* %8, align 8
  br label %67

50:                                               ; preds = %35
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i64 @pci_resource_start(%struct.pci_dev* %51, i32 0)
  store i64 %52, i64* %6, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i64 @pci_resource_len(%struct.pci_dev* %53, i32 0)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i64 @pci_resource_start(%struct.pci_dev* %55, i32 1)
  store i64 %56, i64* %7, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i64 @pci_resource_len(%struct.pci_dev* %57, i32 1)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %50
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %61, %50
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_set_master(%struct.pci_dev* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %73 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %78 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %80 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %79, i32 0, i32 6
  store i32* @denali_pci_ecc_caps, i32** %80, align 8
  %81 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %82 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %81, i32 0, i32 0
  store i32 50000000, i32* %82, align 8
  %83 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %84 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %83, i32 0, i32 1
  store i32 200000000, i32* %84, align 4
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = load i32, i32* @DENALI_NAND_NAME, align 4
  %87 = call i32 @pci_request_regions(%struct.pci_dev* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %67
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %3, align 4
  br label %204

95:                                               ; preds = %67
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i8* @ioremap_nocache(i64 %96, i64 %97)
  %99 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %100 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %102 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %95
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %204

111:                                              ; preds = %95
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i8* @ioremap_nocache(i64 %112, i64 %113)
  %115 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %116 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %118 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %111
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %13, align 4
  br label %198

127:                                              ; preds = %111
  %128 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %129 = call i32 @denali_init(%struct.denali_controller* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %193

133:                                              ; preds = %127
  %134 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %135 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %12, align 4
  %137 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %138 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.denali_chip*, %struct.denali_chip** %11, align 8
  %141 = load i32, i32* @sels, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @struct_size(%struct.denali_chip* %140, i32 %141, i32 %142)
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @devm_kzalloc(i32* %139, i32 %143, i32 %144)
  %146 = bitcast i8* %145 to %struct.denali_chip*
  store %struct.denali_chip* %146, %struct.denali_chip** %11, align 8
  %147 = load %struct.denali_chip*, %struct.denali_chip** %11, align 8
  %148 = icmp ne %struct.denali_chip* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %133
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %13, align 4
  br label %190

152:                                              ; preds = %133
  %153 = load i32, i32* @NAND_ECC_MAXIMIZE, align 4
  %154 = load %struct.denali_chip*, %struct.denali_chip** %11, align 8
  %155 = getelementptr inbounds %struct.denali_chip, %struct.denali_chip* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %153
  store i32 %159, i32* %157, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.denali_chip*, %struct.denali_chip** %11, align 8
  %162 = getelementptr inbounds %struct.denali_chip, %struct.denali_chip* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %176, %152
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.denali_chip*, %struct.denali_chip** %11, align 8
  %170 = getelementptr inbounds %struct.denali_chip, %struct.denali_chip* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %168, i32* %175, align 4
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %163

179:                                              ; preds = %163
  %180 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %181 = load %struct.denali_chip*, %struct.denali_chip** %11, align 8
  %182 = call i32 @denali_chip_init(%struct.denali_controller* %180, %struct.denali_chip* %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %190

186:                                              ; preds = %179
  %187 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %188 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %189 = call i32 @pci_set_drvdata(%struct.pci_dev* %187, %struct.denali_controller* %188)
  store i32 0, i32* %3, align 4
  br label %204

190:                                              ; preds = %185, %149
  %191 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %192 = call i32 @denali_remove(%struct.denali_controller* %191)
  br label %193

193:                                              ; preds = %190, %132
  %194 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %195 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %194, i32 0, i32 4
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @iounmap(i8* %196)
  br label %198

198:                                              ; preds = %193, %121
  %199 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %200 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @iounmap(i8* %201)
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %198, %186, %105, %90, %30, %22
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap_nocache(i64, i64) #1

declare dso_local i32 @denali_init(%struct.denali_controller*) #1

declare dso_local i32 @struct_size(%struct.denali_chip*, i32, i32) #1

declare dso_local i32 @denali_chip_init(%struct.denali_controller*, %struct.denali_chip*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.denali_controller*) #1

declare dso_local i32 @denali_remove(%struct.denali_controller*) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
