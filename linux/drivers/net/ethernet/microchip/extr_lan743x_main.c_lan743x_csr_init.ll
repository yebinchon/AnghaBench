; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_csr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_csr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.TYPE_3__*, %struct.lan743x_csr }
%struct.TYPE_3__ = type { i32 }
%struct.lan743x_csr = type { i32, i32, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ID_REV = common dso_local global i32 0, align 4
@FPGA_REV = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ID_REV = 0x%08X, FPGA_REV = %d.%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR = common dso_local global i32 0, align 4
@ID_REV_CHIP_REV_MASK_ = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_IS_A0 = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_IS_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_csr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_csr_init(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca %struct.lan743x_csr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %8, i32 0, i32 2
  store %struct.lan743x_csr* %9, %struct.lan743x_csr** %4, align 8
  %10 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = call i32 @pci_resource_start(%struct.TYPE_3__* %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @pci_resource_len(%struct.TYPE_3__* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @devm_ioremap(i32* %21, i32 %22, i32 %23)
  %25 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %26 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %28 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %105

34:                                               ; preds = %1
  %35 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %36 = load i32, i32* @ID_REV, align 4
  %37 = call i8* @lan743x_csr_read(%struct.lan743x_adapter* %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %40 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %42 = load i32, i32* @FPGA_REV, align 4
  %43 = call i8* @lan743x_csr_read(%struct.lan743x_adapter* %41, i32 %42)
  %44 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %45 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %47 = load i32, i32* @probe, align 4
  %48 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %52 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %55 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @FPGA_REV_GET_MAJOR_(i8* %56)
  %58 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %59 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @FPGA_REV_GET_MINOR_(i8* %60)
  %62 = call i32 @netif_info(%struct.lan743x_adapter* %46, i32 %47, i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %61)
  %63 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %64 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ID_REV_IS_VALID_CHIP_ID_(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %34
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %105

71:                                               ; preds = %34
  %72 = load i32, i32* @LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR, align 4
  %73 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %74 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %76 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ID_REV_CHIP_REV_MASK_, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %98 [
    i32 129, label %80
    i32 128, label %92
  ]

80:                                               ; preds = %71
  %81 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %82 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %83 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %89 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %98

92:                                               ; preds = %71
  %93 = load i32, i32* @LAN743X_CSR_FLAG_IS_B0, align 4
  %94 = load %struct.lan743x_csr*, %struct.lan743x_csr** %4, align 8
  %95 = getelementptr inbounds %struct.lan743x_csr, %struct.lan743x_csr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %71, %92, %80
  %99 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %100 = call i32 @lan743x_csr_light_reset(%struct.lan743x_adapter* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %107

105:                                              ; preds = %103, %68, %31
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @pci_resource_start(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i8* @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @netif_info(%struct.lan743x_adapter*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @FPGA_REV_GET_MAJOR_(i8*) #1

declare dso_local i32 @FPGA_REV_GET_MINOR_(i8*) #1

declare dso_local i32 @ID_REV_IS_VALID_CHIP_ID_(i32) #1

declare dso_local i32 @lan743x_csr_light_reset(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
