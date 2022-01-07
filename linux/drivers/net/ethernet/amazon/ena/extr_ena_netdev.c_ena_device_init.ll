; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ena_com_dev_get_features_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to init mmio read less\0A\00", align 1
@ENA_MMIO_DISABLE_REG_READ = common dso_local global i32 0, align 4
@ENA_REGS_RESET_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can not reset device\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"device version is too low\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid dma width value %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"pci_set_dma_mask failed 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"err_pci_set_consistent_dma_mask failed 0x%x\0A\00", align 1
@aenq_handlers = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Can not initialize ena admin queue with device\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Cannot get attribute for ena device rc=%d\0A\00", align 1
@ENA_ADMIN_LINK_CHANGE = common dso_local global i32 0, align 4
@ENA_ADMIN_FATAL_ERROR = common dso_local global i32 0, align 4
@ENA_ADMIN_WARNING = common dso_local global i32 0, align 4
@ENA_ADMIN_NOTIFICATION = common dso_local global i32 0, align 4
@ENA_ADMIN_KEEP_ALIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Cannot configure aenq groups rc= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.pci_dev*, %struct.ena_com_dev_get_features_ctx*, i32*)* @ena_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_device_init(%struct.ena_com_dev* %0, %struct.pci_dev* %1, %struct.ena_com_dev_get_features_ctx* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store %struct.ena_com_dev_get_features_ctx* %2, %struct.ena_com_dev_get_features_ctx** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %18 = call i32 @ena_com_mmio_reg_read_request_init(%struct.ena_com_dev* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %157

25:                                               ; preds = %4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ENA_MMIO_DISABLE_REG_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ena_com_set_mmio_read_mode(%struct.ena_com_dev* %34, i32 %35)
  %37 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %38 = load i32, i32* @ENA_REGS_RESET_NORMAL, align 4
  %39 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %153

45:                                               ; preds = %25
  %46 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %47 = call i32 @ena_com_validate_version(%struct.ena_com_dev* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %153

53:                                               ; preds = %45
  %54 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %55 = call i32 @ena_com_get_dma_width(%struct.ena_com_dev* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %14, align 4
  br label %153

63:                                               ; preds = %53
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @DMA_BIT_MASK(i32 %65)
  %67 = call i32 @pci_set_dma_mask(%struct.pci_dev* %64, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %10, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %153

74:                                               ; preds = %63
  %75 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @DMA_BIT_MASK(i32 %76)
  %78 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %75, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.device*, %struct.device** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %153

85:                                               ; preds = %74
  %86 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %87 = call i32 @ena_com_admin_init(%struct.ena_com_dev* %86, i32* @aenq_handlers)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.device*, %struct.device** %10, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %153

93:                                               ; preds = %85
  %94 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %95 = call i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev* %94, i32 1)
  %96 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %98 = call i32 @ena_config_host_info(%struct.ena_com_dev* %96, %struct.pci_dev* %97)
  %99 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %100 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %8, align 8
  %101 = call i32 @ena_com_get_dev_attr_feat(%struct.ena_com_dev* %99, %struct.ena_com_dev_get_features_ctx* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load %struct.device*, %struct.device** %10, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %148

108:                                              ; preds = %93
  %109 = load i32, i32* @ENA_ADMIN_LINK_CHANGE, align 4
  %110 = call i32 @BIT(i32 %109)
  %111 = load i32, i32* @ENA_ADMIN_FATAL_ERROR, align 4
  %112 = call i32 @BIT(i32 %111)
  %113 = or i32 %110, %112
  %114 = load i32, i32* @ENA_ADMIN_WARNING, align 4
  %115 = call i32 @BIT(i32 %114)
  %116 = or i32 %113, %115
  %117 = load i32, i32* @ENA_ADMIN_NOTIFICATION, align 4
  %118 = call i32 @BIT(i32 %117)
  %119 = or i32 %116, %118
  %120 = load i32, i32* @ENA_ADMIN_KEEP_ALIVE, align 4
  %121 = call i32 @BIT(i32 %120)
  %122 = or i32 %119, %121
  store i32 %122, i32* %12, align 4
  %123 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @ena_com_set_aenq_config(%struct.ena_com_dev* %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %108
  %135 = load %struct.device*, %struct.device** %10, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  br label %148

138:                                              ; preds = %108
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @ENA_ADMIN_KEEP_ALIVE, align 4
  %141 = call i32 @BIT(i32 %140)
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = load i32*, i32** %9, align 8
  store i32 %146, i32* %147, align 4
  store i32 0, i32* %5, align 4
  br label %157

148:                                              ; preds = %134, %104
  %149 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %150 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %149)
  %151 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %152 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %151)
  br label %153

153:                                              ; preds = %148, %90, %81, %70, %58, %50, %42
  %154 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %155 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %154)
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %138, %21
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @ena_com_mmio_reg_read_request_init(%struct.ena_com_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ena_com_set_mmio_read_mode(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_validate_version(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_dma_width(%struct.ena_com_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @ena_com_admin_init(%struct.ena_com_dev*, i32*) #1

declare dso_local i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_config_host_info(%struct.ena_com_dev*, %struct.pci_dev*) #1

declare dso_local i32 @ena_com_get_dev_attr_feat(%struct.ena_com_dev*, %struct.ena_com_dev_get_features_ctx*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ena_com_set_aenq_config(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
