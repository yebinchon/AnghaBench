; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_get_bus_info_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_get_bus_info_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@FM10K_PCIE_LINK_CAP = common dso_local global i32 0, align 4
@FM10K_PCIE_LINK_WIDTH = common dso_local global i32 0, align 4
@fm10k_bus_width_pcie_x1 = common dso_local global i8* null, align 8
@fm10k_bus_width_pcie_x2 = common dso_local global i8* null, align 8
@fm10k_bus_width_pcie_x4 = common dso_local global i8* null, align 8
@fm10k_bus_width_pcie_x8 = common dso_local global i8* null, align 8
@fm10k_bus_width_unknown = common dso_local global i8* null, align 8
@FM10K_PCIE_LINK_SPEED = common dso_local global i32 0, align 4
@fm10k_bus_speed_2500 = common dso_local global i8* null, align 8
@fm10k_bus_speed_5000 = common dso_local global i8* null, align 8
@fm10k_bus_speed_8000 = common dso_local global i8* null, align 8
@fm10k_bus_speed_unknown = common dso_local global i8* null, align 8
@FM10K_PCIE_DEV_CAP = common dso_local global i32 0, align 4
@FM10K_PCIE_DEV_CAP_PAYLOAD = common dso_local global i32 0, align 4
@fm10k_bus_payload_128 = common dso_local global i8* null, align 8
@fm10k_bus_payload_256 = common dso_local global i8* null, align 8
@fm10k_bus_payload_512 = common dso_local global i8* null, align 8
@fm10k_bus_payload_unknown = common dso_local global i8* null, align 8
@FM10K_PCIE_LINK_STATUS = common dso_local global i32 0, align 4
@FM10K_PCIE_DEV_CTRL = common dso_local global i32 0, align 4
@FM10K_PCIE_DEV_CTRL_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_get_bus_info_generic(%struct.fm10k_hw* %0) #0 {
  %2 = alloca %struct.fm10k_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %2, align 8
  %7 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %8 = load i32, i32* @FM10K_PCIE_LINK_CAP, align 4
  %9 = call i32 @fm10k_read_pci_cfg_word(%struct.fm10k_hw* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FM10K_PCIE_LINK_WIDTH, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %33 [
    i32 131, label %13
    i32 130, label %18
    i32 129, label %23
    i32 128, label %28
  ]

13:                                               ; preds = %1
  %14 = load i8*, i8** @fm10k_bus_width_pcie_x1, align 8
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %16 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i8* %14, i8** %17, align 8
  br label %38

18:                                               ; preds = %1
  %19 = load i8*, i8** @fm10k_bus_width_pcie_x2, align 8
  %20 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  br label %38

23:                                               ; preds = %1
  %24 = load i8*, i8** @fm10k_bus_width_pcie_x4, align 8
  %25 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %26 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  br label %38

28:                                               ; preds = %1
  %29 = load i8*, i8** @fm10k_bus_width_pcie_x8, align 8
  %30 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %31 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  br label %38

33:                                               ; preds = %1
  %34 = load i8*, i8** @fm10k_bus_width_unknown, align 8
  %35 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %36 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  br label %38

38:                                               ; preds = %33, %28, %23, %18, %13
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @FM10K_PCIE_LINK_SPEED, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %57 [
    i32 134, label %42
    i32 133, label %47
    i32 132, label %52
  ]

42:                                               ; preds = %38
  %43 = load i8*, i8** @fm10k_bus_speed_2500, align 8
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %45 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  br label %62

47:                                               ; preds = %38
  %48 = load i8*, i8** @fm10k_bus_speed_5000, align 8
  %49 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %50 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  br label %62

52:                                               ; preds = %38
  %53 = load i8*, i8** @fm10k_bus_speed_8000, align 8
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %55 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  br label %62

57:                                               ; preds = %38
  %58 = load i8*, i8** @fm10k_bus_speed_unknown, align 8
  %59 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %60 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %52, %47, %42
  %63 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %64 = load i32, i32* @FM10K_PCIE_DEV_CAP, align 4
  %65 = call i32 @fm10k_read_pci_cfg_word(%struct.fm10k_hw* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @FM10K_PCIE_DEV_CAP_PAYLOAD, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %84 [
    i32 140, label %69
    i32 139, label %74
    i32 138, label %79
  ]

69:                                               ; preds = %62
  %70 = load i8*, i8** @fm10k_bus_payload_128, align 8
  %71 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %72 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %89

74:                                               ; preds = %62
  %75 = load i8*, i8** @fm10k_bus_payload_256, align 8
  %76 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %77 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %89

79:                                               ; preds = %62
  %80 = load i8*, i8** @fm10k_bus_payload_512, align 8
  %81 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %82 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %89

84:                                               ; preds = %62
  %85 = load i8*, i8** @fm10k_bus_payload_unknown, align 8
  %86 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %87 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %79, %74, %69
  %90 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %91 = load i32, i32* @FM10K_PCIE_LINK_STATUS, align 4
  %92 = call i32 @fm10k_read_pci_cfg_word(%struct.fm10k_hw* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @FM10K_PCIE_LINK_WIDTH, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %116 [
    i32 131, label %96
    i32 130, label %101
    i32 129, label %106
    i32 128, label %111
  ]

96:                                               ; preds = %89
  %97 = load i8*, i8** @fm10k_bus_width_pcie_x1, align 8
  %98 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %99 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  br label %121

101:                                              ; preds = %89
  %102 = load i8*, i8** @fm10k_bus_width_pcie_x2, align 8
  %103 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %104 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i8* %102, i8** %105, align 8
  br label %121

106:                                              ; preds = %89
  %107 = load i8*, i8** @fm10k_bus_width_pcie_x4, align 8
  %108 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %109 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i8* %107, i8** %110, align 8
  br label %121

111:                                              ; preds = %89
  %112 = load i8*, i8** @fm10k_bus_width_pcie_x8, align 8
  %113 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %114 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i8* %112, i8** %115, align 8
  br label %121

116:                                              ; preds = %89
  %117 = load i8*, i8** @fm10k_bus_width_unknown, align 8
  %118 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %119 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %116, %111, %106, %101, %96
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @FM10K_PCIE_LINK_SPEED, align 4
  %124 = and i32 %122, %123
  switch i32 %124, label %140 [
    i32 134, label %125
    i32 133, label %130
    i32 132, label %135
  ]

125:                                              ; preds = %121
  %126 = load i8*, i8** @fm10k_bus_speed_2500, align 8
  %127 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %128 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  br label %145

130:                                              ; preds = %121
  %131 = load i8*, i8** @fm10k_bus_speed_5000, align 8
  %132 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %133 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  br label %145

135:                                              ; preds = %121
  %136 = load i8*, i8** @fm10k_bus_speed_8000, align 8
  %137 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %138 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  br label %145

140:                                              ; preds = %121
  %141 = load i8*, i8** @fm10k_bus_speed_unknown, align 8
  %142 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %143 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %135, %130, %125
  %146 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %147 = load i32, i32* @FM10K_PCIE_DEV_CTRL, align 4
  %148 = call i32 @fm10k_read_pci_cfg_word(%struct.fm10k_hw* %146, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @FM10K_PCIE_DEV_CTRL_PAYLOAD, align 4
  %151 = and i32 %149, %150
  switch i32 %151, label %167 [
    i32 137, label %152
    i32 136, label %157
    i32 135, label %162
  ]

152:                                              ; preds = %145
  %153 = load i8*, i8** @fm10k_bus_payload_128, align 8
  %154 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %155 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  br label %172

157:                                              ; preds = %145
  %158 = load i8*, i8** @fm10k_bus_payload_256, align 8
  %159 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %160 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i8* %158, i8** %161, align 8
  br label %172

162:                                              ; preds = %145
  %163 = load i8*, i8** @fm10k_bus_payload_512, align 8
  %164 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %165 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i8* %163, i8** %166, align 8
  br label %172

167:                                              ; preds = %145
  %168 = load i8*, i8** @fm10k_bus_payload_unknown, align 8
  %169 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %170 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i8* %168, i8** %171, align 8
  br label %172

172:                                              ; preds = %167, %162, %157, %152
  ret i32 0
}

declare dso_local i32 @fm10k_read_pci_cfg_word(%struct.fm10k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
