; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.slic_shmem }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slic_shmem = type { i32, %struct.slic_shmem_data* }
%struct.slic_shmem_data = type { i32 }
%struct.slic_upr = type { i32 }
%struct.slic_oasis_eeprom = type { i32, i32*, i32* }
%struct.slic_mojave_eeprom = type { i32, i32*, i32* }

@SLIC_EEPROM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLIC_REG_ICR = common dso_local global i32 0, align 4
@SLIC_ICR_INT_OFF = common dso_local global i32 0, align 4
@SLIC_REG_ISP = common dso_local global i32 0, align 4
@SLIC_UPR_CONFIG = common dso_local global i32 0, align 4
@SLIC_ISR_UPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timed out while waiting for eeprom data\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SLIC_REG_ISR = common dso_local global i32 0, align 4
@SLIC_MODEL_OASIS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid checksum in eeprom\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_read_eeprom(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slic_shmem*, align 8
  %6 = alloca %struct.slic_shmem_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.slic_upr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32*], align 16
  %15 = alloca %struct.slic_oasis_eeprom*, align 8
  %16 = alloca %struct.slic_mojave_eeprom*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %17 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %18 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PCI_FUNC(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %24 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %23, i32 0, i32 3
  store %struct.slic_shmem* %24, %struct.slic_shmem** %5, align 8
  %25 = load %struct.slic_shmem*, %struct.slic_shmem** %5, align 8
  %26 = getelementptr inbounds %struct.slic_shmem, %struct.slic_shmem* %25, i32 0, i32 1
  %27 = load %struct.slic_shmem_data*, %struct.slic_shmem_data** %26, align 8
  store %struct.slic_shmem_data* %27, %struct.slic_shmem_data** %6, align 8
  store i32 5000, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %29 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* @SLIC_EEPROM_SIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @dma_alloc_coherent(i32* %31, i32 %32, i32* %12, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %174

40:                                               ; preds = %1
  %41 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %42 = load i32, i32* @SLIC_REG_ICR, align 4
  %43 = load i32, i32* @SLIC_ICR_INT_OFF, align 4
  %44 = call i32 @slic_write(%struct.slic_device* %41, i32 %42, i32 %43)
  %45 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %46 = load i32, i32* @SLIC_REG_ISP, align 4
  %47 = load %struct.slic_shmem*, %struct.slic_shmem** %5, align 8
  %48 = getelementptr inbounds %struct.slic_shmem, %struct.slic_shmem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lower_32_bits(i32 %49)
  %51 = call i32 @slic_write(%struct.slic_device* %45, i32 %46, i32 %50)
  %52 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %53 = load i32, i32* @SLIC_UPR_CONFIG, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @slic_new_upr(%struct.slic_device* %52, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %11, align 4
  %61 = icmp ult i32 %60, 5000
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.slic_shmem_data*, %struct.slic_shmem_data** %6, align 8
  %64 = getelementptr inbounds %struct.slic_shmem_data, %struct.slic_shmem_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load i32, i32* @SLIC_ISR_UPC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  %72 = call i32 @mdelay(i32 1)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %59

76:                                               ; preds = %70, %59
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 5000
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %81 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %79, %76
  %88 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %89 = call %struct.slic_upr* @slic_dequeue_upr(%struct.slic_device* %88)
  store %struct.slic_upr* %89, %struct.slic_upr** %10, align 8
  %90 = load %struct.slic_upr*, %struct.slic_upr** %10, align 8
  %91 = call i32 @kfree(%struct.slic_upr* %90)
  br label %92

92:                                               ; preds = %87, %40
  %93 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %94 = load i32, i32* @SLIC_REG_ISP, align 4
  %95 = call i32 @slic_write(%struct.slic_device* %93, i32 %94, i32 0)
  %96 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %97 = load i32, i32* @SLIC_REG_ISR, align 4
  %98 = call i32 @slic_write(%struct.slic_device* %96, i32 %97, i32 0)
  %99 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %100 = call i32 @slic_flush_write(%struct.slic_device* %99)
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %164

104:                                              ; preds = %92
  %105 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %106 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SLIC_MODEL_OASIS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i8*, i8** %9, align 8
  %112 = bitcast i8* %111 to %struct.slic_oasis_eeprom*
  store %struct.slic_oasis_eeprom* %112, %struct.slic_oasis_eeprom** %15, align 8
  %113 = load %struct.slic_oasis_eeprom*, %struct.slic_oasis_eeprom** %15, align 8
  %114 = getelementptr inbounds %struct.slic_oasis_eeprom, %struct.slic_oasis_eeprom* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 0
  store i32* %115, i32** %116, align 16
  %117 = load %struct.slic_oasis_eeprom*, %struct.slic_oasis_eeprom** %15, align 8
  %118 = getelementptr inbounds %struct.slic_oasis_eeprom, %struct.slic_oasis_eeprom* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 1
  store i32* %119, i32** %120, align 8
  %121 = load %struct.slic_oasis_eeprom*, %struct.slic_oasis_eeprom** %15, align 8
  %122 = getelementptr inbounds %struct.slic_oasis_eeprom, %struct.slic_oasis_eeprom* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @le16_to_cpu(i32 %123)
  store i32 %124, i32* %8, align 4
  br label %140

125:                                              ; preds = %104
  %126 = load i8*, i8** %9, align 8
  %127 = bitcast i8* %126 to %struct.slic_mojave_eeprom*
  store %struct.slic_mojave_eeprom* %127, %struct.slic_mojave_eeprom** %16, align 8
  %128 = load %struct.slic_mojave_eeprom*, %struct.slic_mojave_eeprom** %16, align 8
  %129 = getelementptr inbounds %struct.slic_mojave_eeprom, %struct.slic_mojave_eeprom* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 0
  store i32* %130, i32** %131, align 16
  %132 = load %struct.slic_mojave_eeprom*, %struct.slic_mojave_eeprom** %16, align 8
  %133 = getelementptr inbounds %struct.slic_mojave_eeprom, %struct.slic_mojave_eeprom* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 1
  store i32* %134, i32** %135, align 8
  %136 = load %struct.slic_mojave_eeprom*, %struct.slic_mojave_eeprom** %16, align 8
  %137 = getelementptr inbounds %struct.slic_mojave_eeprom, %struct.slic_mojave_eeprom* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le16_to_cpu(i32 %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %125, %110
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @slic_eeprom_valid(i8* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %140
  %146 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %147 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %13, align 4
  br label %164

153:                                              ; preds = %140
  %154 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %155 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %154, i32 0, i32 2
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %4, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @ether_addr_copy(i32 %158, i32* %162)
  br label %164

164:                                              ; preds = %153, %145, %103
  %165 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %166 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* @SLIC_EEPROM_SIZE, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @dma_free_coherent(i32* %168, i32 %169, i8* %170, i32 %171)
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %164, %37
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @slic_new_upr(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.slic_upr* @slic_dequeue_upr(%struct.slic_device*) #1

declare dso_local i32 @kfree(%struct.slic_upr*) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @slic_eeprom_valid(i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
