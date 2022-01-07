; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_vlan_sync_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_vlan_sync_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data*, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_nic_data = type { i64 }
%struct.efx_ef10_filter_table = type { i32, i64, i64, i32, i64 }
%struct.efx_ef10_filter_vlan = type { i64 }

@EFX_FILTER_VID_UNSPEC = common dso_local global i64 0, align 8
@EFX_ENCAP_TYPE_NONE = common dso_local global i32 0, align 4
@EFX_ENCAP_TYPE_VXLAN = common dso_local global i32 0, align 4
@EFX_ENCAP_FLAG_IPV6 = common dso_local global i32 0, align 4
@EFX_ENCAP_TYPE_NVGRE = common dso_local global i32 0, align 4
@EFX_ENCAP_TYPE_GENEVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_ef10_filter_vlan*)* @efx_ef10_filter_vlan_sync_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_filter_vlan_sync_rx_mode(%struct.efx_nic* %0, %struct.efx_ef10_filter_vlan* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_filter_vlan*, align 8
  %5 = alloca %struct.efx_ef10_filter_table*, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_ef10_filter_vlan* %1, %struct.efx_ef10_filter_vlan** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %8, align 8
  store %struct.efx_ef10_filter_table* %9, %struct.efx_ef10_filter_table** %5, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %11, align 8
  store %struct.efx_ef10_nic_data* %12, %struct.efx_ef10_nic_data** %6, align 8
  %13 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %14 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EFX_FILTER_VID_UNSPEC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %20 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %188

24:                                               ; preds = %2
  %25 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %26 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %32 = load i32, i32* @EFX_ENCAP_TYPE_NONE, align 4
  %33 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %30, %struct.efx_ef10_filter_vlan* %31, i32 %32, i32 0, i32 0)
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %36 = call i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %34, %struct.efx_ef10_filter_vlan* %35, i32 0, i32 0)
  br label %48

37:                                               ; preds = %24
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %40 = call i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %38, %struct.efx_ef10_filter_vlan* %39, i32 0, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %45 = load i32, i32* @EFX_ENCAP_TYPE_NONE, align 4
  %46 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %43, %struct.efx_ef10_filter_vlan* %44, i32 %45, i32 0, i32 0)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %51 = load i32, i32* @EFX_ENCAP_TYPE_VXLAN, align 4
  %52 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %49, %struct.efx_ef10_filter_vlan* %50, i32 %51, i32 0, i32 0)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %55 = load i32, i32* @EFX_ENCAP_TYPE_VXLAN, align 4
  %56 = load i32, i32* @EFX_ENCAP_FLAG_IPV6, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %53, %struct.efx_ef10_filter_vlan* %54, i32 %57, i32 0, i32 0)
  %59 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %60 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %61 = load i32, i32* @EFX_ENCAP_TYPE_NVGRE, align 4
  %62 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %59, %struct.efx_ef10_filter_vlan* %60, i32 %61, i32 0, i32 0)
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %65 = load i32, i32* @EFX_ENCAP_TYPE_NVGRE, align 4
  %66 = load i32, i32* @EFX_ENCAP_FLAG_IPV6, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %63, %struct.efx_ef10_filter_vlan* %64, i32 %67, i32 0, i32 0)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %71 = load i32, i32* @EFX_ENCAP_TYPE_GENEVE, align 4
  %72 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %69, %struct.efx_ef10_filter_vlan* %70, i32 %71, i32 0, i32 0)
  %73 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %74 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %75 = load i32, i32* @EFX_ENCAP_TYPE_GENEVE, align 4
  %76 = load i32, i32* @EFX_ENCAP_FLAG_IPV6, align 4
  %77 = or i32 %75, %76
  %78 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %73, %struct.efx_ef10_filter_vlan* %74, i32 %77, i32 0, i32 0)
  %79 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %80 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %48
  %84 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %85 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %88 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %93 = call i32 @efx_ef10_filter_remove_old(%struct.efx_nic* %92)
  br label %94

94:                                               ; preds = %91, %83, %48
  %95 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %96 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %101 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %107 = load i32, i32* @EFX_ENCAP_TYPE_NONE, align 4
  %108 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %105, %struct.efx_ef10_filter_vlan* %106, i32 %107, i32 1, i32 1)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %112 = call i32 @efx_ef10_filter_remove_old(%struct.efx_nic* %111)
  %113 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %114 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %115 = call i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %113, %struct.efx_ef10_filter_vlan* %114, i32 1, i32 0)
  br label %116

116:                                              ; preds = %110, %104
  br label %131

117:                                              ; preds = %99
  %118 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %119 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %120 = load i32, i32* @EFX_ENCAP_TYPE_NONE, align 4
  %121 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %118, %struct.efx_ef10_filter_vlan* %119, i32 %120, i32 1, i32 0)
  %122 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %123 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %128 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %129 = call i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %127, %struct.efx_ef10_filter_vlan* %128, i32 1, i32 0)
  br label %130

130:                                              ; preds = %126, %117
  br label %131

131:                                              ; preds = %130, %116
  br label %157

132:                                              ; preds = %94
  %133 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %134 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %135 = call i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %133, %struct.efx_ef10_filter_vlan* %134, i32 1, i32 1)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %132
  %138 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %139 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %144 = call i32 @efx_ef10_filter_remove_old(%struct.efx_nic* %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %147 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %148 = load i32, i32* @EFX_ENCAP_TYPE_NONE, align 4
  %149 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %146, %struct.efx_ef10_filter_vlan* %147, i32 %148, i32 1, i32 1)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %153 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %154 = call i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %152, %struct.efx_ef10_filter_vlan* %153, i32 1, i32 0)
  br label %155

155:                                              ; preds = %151, %145
  br label %156

156:                                              ; preds = %155, %132
  br label %157

157:                                              ; preds = %156, %131
  %158 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %159 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %160 = load i32, i32* @EFX_ENCAP_TYPE_VXLAN, align 4
  %161 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %158, %struct.efx_ef10_filter_vlan* %159, i32 %160, i32 1, i32 0)
  %162 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %163 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %164 = load i32, i32* @EFX_ENCAP_TYPE_VXLAN, align 4
  %165 = load i32, i32* @EFX_ENCAP_FLAG_IPV6, align 4
  %166 = or i32 %164, %165
  %167 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %162, %struct.efx_ef10_filter_vlan* %163, i32 %166, i32 1, i32 0)
  %168 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %169 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %170 = load i32, i32* @EFX_ENCAP_TYPE_NVGRE, align 4
  %171 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %168, %struct.efx_ef10_filter_vlan* %169, i32 %170, i32 1, i32 0)
  %172 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %173 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %174 = load i32, i32* @EFX_ENCAP_TYPE_NVGRE, align 4
  %175 = load i32, i32* @EFX_ENCAP_FLAG_IPV6, align 4
  %176 = or i32 %174, %175
  %177 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %172, %struct.efx_ef10_filter_vlan* %173, i32 %176, i32 1, i32 0)
  %178 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %179 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %180 = load i32, i32* @EFX_ENCAP_TYPE_GENEVE, align 4
  %181 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %178, %struct.efx_ef10_filter_vlan* %179, i32 %180, i32 1, i32 0)
  %182 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %183 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %184 = load i32, i32* @EFX_ENCAP_TYPE_GENEVE, align 4
  %185 = load i32, i32* @EFX_ENCAP_FLAG_IPV6, align 4
  %186 = or i32 %184, %185
  %187 = call i64 @efx_ef10_filter_insert_def(%struct.efx_nic* %182, %struct.efx_ef10_filter_vlan* %183, i32 %186, i32 1, i32 0)
  br label %188

188:                                              ; preds = %157, %23
  ret void
}

declare dso_local i64 @efx_ef10_filter_insert_def(%struct.efx_nic*, %struct.efx_ef10_filter_vlan*, i32, i32, i32) #1

declare dso_local i64 @efx_ef10_filter_insert_addr_list(%struct.efx_nic*, %struct.efx_ef10_filter_vlan*, i32, i32) #1

declare dso_local i32 @efx_ef10_filter_remove_old(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
