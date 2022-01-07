; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_get_variants_82571.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_get_variants_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw, %struct.pci_dev* }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@e1000_get_variants_82571.global_quad_port_a = internal global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_1 = common dso_local global i32 0, align 4
@FLAG_IS_QUAD_PORT = common dso_local global i32 0, align 4
@FLAG_IS_QUAD_PORT_A = common dso_local global i32 0, align 4
@E1000_DEV_ID_82571EB_FIBER = common dso_local global i32 0, align 4
@E1000_DEV_ID_82571EB_SERDES = common dso_local global i32 0, align 4
@E1000_DEV_ID_82571EB_COPPER = common dso_local global i32 0, align 4
@FLAG_HAS_WOL = common dso_local global i32 0, align 4
@E1000_DEV_ID_82571EB_SERDES_QUAD = common dso_local global i32 0, align 4
@E1000_DEV_ID_82573L = common dso_local global i32 0, align 4
@FLAG_HAS_JUMBO_FRAMES = common dso_local global i32 0, align 4
@DEFAULT_JUMBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_adapter*)* @e1000_get_variants_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_variants_82571(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 2
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 3
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load i32, i32* @STATUS, align 4
  %14 = call i32 @er32(i32 %13)
  %15 = load i32, i32* @E1000_STATUS_FUNC_1, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = call i64 @e1000_init_mac_params_82571(%struct.e1000_hw* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %2, align 8
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = call i64 @e1000_init_nvm_params_82571(%struct.e1000_hw* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %2, align 8
  br label %150

30:                                               ; preds = %23
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = call i64 @e1000_init_phy_params_82571(%struct.e1000_hw* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %2, align 8
  br label %150

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %62 [
    i32 133, label %41
    i32 131, label %41
    i32 132, label %41
    i32 130, label %41
  ]

41:                                               ; preds = %37, %37, %37, %37
  %42 = load i32, i32* @FLAG_IS_QUAD_PORT, align 4
  %43 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @e1000_get_variants_82571.global_quad_port_a, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @FLAG_IS_QUAD_PORT_A, align 4
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* @e1000_get_variants_82571.global_quad_port_a, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @e1000_get_variants_82571.global_quad_port_a, align 4
  %58 = load i32, i32* @e1000_get_variants_82571.global_quad_port_a, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* @e1000_get_variants_82571.global_quad_port_a, align 4
  br label %61

61:                                               ; preds = %60, %55
  br label %63

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %148 [
    i32 129, label %69
    i32 128, label %132
  ]

69:                                               ; preds = %63
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @E1000_DEV_ID_82571EB_FIBER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @E1000_DEV_ID_82571EB_SERDES, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @E1000_DEV_ID_82571EB_COPPER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81, %75, %69
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @FLAG_HAS_WOL, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %87, %81
  %98 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FLAG_IS_QUAD_PORT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @FLAG_IS_QUAD_PORT_A, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @FLAG_HAS_WOL, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %111, %104, %97
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @E1000_DEV_ID_82571EB_SERDES_QUAD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* @FLAG_HAS_WOL, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %124, %118
  br label %149

132:                                              ; preds = %63
  %133 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @E1000_DEV_ID_82573L, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i32, i32* @FLAG_HAS_JUMBO_FRAMES, align 4
  %140 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @DEFAULT_JUMBO, align 4
  %145 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %138, %132
  br label %149

148:                                              ; preds = %63
  br label %149

149:                                              ; preds = %148, %147, %131
  store i64 0, i64* %2, align 8
  br label %150

150:                                              ; preds = %149, %35, %28, %21
  %151 = load i64, i64* %2, align 8
  ret i64 %151
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_init_mac_params_82571(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_init_nvm_params_82571(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_init_phy_params_82571(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
