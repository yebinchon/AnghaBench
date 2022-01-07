; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_init_mac_params_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_init_mac_params_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_mac_info = type { i32, i32, i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@e1000_82575 = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES_82576 = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES_82580 = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES_I350 = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES_82575 = common dso_local global i32 0, align 4
@igb_reset_hw_82580 = common dso_local global i32 0, align 4
@igb_reset_hw_82575 = common dso_local global i32 0, align 4
@e1000_i210 = common dso_local global i32 0, align 4
@igb_acquire_swfw_sync_i210 = common dso_local global i32 0, align 4
@igb_release_swfw_sync_i210 = common dso_local global i32 0, align 4
@igb_acquire_swfw_sync_82575 = common dso_local global i32 0, align 4
@igb_release_swfw_sync_82575 = common dso_local global i32 0, align 4
@igb_write_vfta_i350 = common dso_local global i32 0, align 4
@igb_write_vfta = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@igb_setup_copper_link_82575 = common dso_local global i32 0, align 4
@igb_setup_serdes_link_82575 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @igb_init_mac_params_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_init_mac_params_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82575*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 3
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %9, %struct.e1000_dev_spec_82575** %4, align 8
  %10 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %10, i32 0, i32 0
  store i32 128, i32* %11, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_82575, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 128
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  switch i64 %24, label %37 [
    i64 131, label %25
    i64 130, label %29
    i64 129, label %33
    i64 128, label %33
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* @E1000_RAR_ENTRIES_82576, align 4
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  br label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @E1000_RAR_ENTRIES_82580, align 4
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %1, %1
  %34 = load i32, i32* @E1000_RAR_ENTRIES_I350, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @E1000_RAR_ENTRIES_82575, align 4
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %29, %25
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 130
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @igb_reset_hw_82580, align 4
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  br label %56

51:                                               ; preds = %41
  %52 = load i32, i32* @igb_reset_hw_82575, align 4
  %53 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @e1000_i210, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp sge i64 %59, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* @igb_acquire_swfw_sync_i210, align 4
  %65 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @igb_release_swfw_sync_i210, align 4
  %69 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  br label %81

72:                                               ; preds = %56
  %73 = load i32, i32* @igb_acquire_swfw_sync_82575, align 4
  %74 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @igb_release_swfw_sync_82575, align 4
  %78 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %72, %63
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 129
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 128
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %81
  %94 = load i32, i32* @igb_write_vfta_i350, align 4
  %95 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %103

98:                                               ; preds = %87
  %99 = load i32, i32* @igb_write_vfta, align 4
  %100 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %104, i32 0, i32 3
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @E1000_FWSM, align 4
  %107 = call i32 @rd32(i32 %106)
  %108 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %114 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 129
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  br label %125

122:                                              ; preds = %103
  %123 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %124 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @e1000_i210, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp sge i64 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %134 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %137 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @e1000_media_type_copper, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @igb_setup_copper_link_82575, align 4
  br label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @igb_setup_serdes_link_82575, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %149 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 130
  br i1 %154, label %160, label %155

155:                                              ; preds = %146
  %156 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %157 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 129
  br i1 %159, label %160, label %171

160:                                              ; preds = %155, %146
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %162 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %165 [
    i32 132, label %164
    i32 134, label %164
    i32 135, label %164
    i32 133, label %164
  ]

164:                                              ; preds = %160, %160, %160, %160
  br label %170

165:                                              ; preds = %160
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %167 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %168, i32 0, i32 2
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %164
  br label %171

171:                                              ; preds = %170, %155
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
