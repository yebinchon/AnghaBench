; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_insert_addr_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_insert_addr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32, i32, %struct.efx_ef10_dev_addr*, %struct.efx_ef10_dev_addr* }
%struct.efx_ef10_dev_addr = type { i32* }
%struct.efx_ef10_filter_vlan = type { i64*, i32, i64*, i64* }
%struct.efx_filter_spec = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@EFX_EF10_FILTER_ID_INVALID = common dso_local global i64 0, align 8
@EFX_FILTER_PRI_AUTO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"efx_ef10_filter_insert failed rc=%d\0A\00", align 1
@EFX_EF10_BCAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Broadcast filter insert failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_ef10_filter_vlan*, i32, i32)* @efx_ef10_filter_insert_addr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_insert_addr_list(%struct.efx_nic* %0, %struct.efx_ef10_filter_vlan* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_ef10_filter_vlan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_ef10_filter_table*, align 8
  %11 = alloca %struct.efx_ef10_dev_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.efx_filter_spec, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store %struct.efx_ef10_filter_vlan* %1, %struct.efx_ef10_filter_vlan** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 2
  %24 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %23, align 8
  store %struct.efx_ef10_filter_table* %24, %struct.efx_ef10_filter_table** %10, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %10, align 8
  %33 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %32, i32 0, i32 3
  %34 = load %struct.efx_ef10_dev_addr*, %struct.efx_ef10_dev_addr** %33, align 8
  store %struct.efx_ef10_dev_addr* %34, %struct.efx_ef10_dev_addr** %11, align 8
  %35 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %10, align 8
  %36 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %18, align 4
  %38 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %39 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %19, align 8
  br label %51

41:                                               ; preds = %4
  %42 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %10, align 8
  %43 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %42, i32 0, i32 2
  %44 = load %struct.efx_ef10_dev_addr*, %struct.efx_ef10_dev_addr** %43, align 8
  store %struct.efx_ef10_dev_addr* %44, %struct.efx_ef10_dev_addr** %11, align 8
  %45 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %10, align 8
  %46 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %18, align 4
  %48 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %49 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %19, align 8
  br label %51

51:                                               ; preds = %41, %31
  %52 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 1
  %54 = call i64 @efx_rss_active(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %136, %59
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %61
  %66 = load i64*, i64** %19, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @EFX_WARN_ON_PARANOID(i32 %73)
  %75 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %13, i32 %75, i32 %76, i32 0)
  %78 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %79 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.efx_ef10_dev_addr*, %struct.efx_ef10_dev_addr** %11, align 8
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.efx_ef10_dev_addr, %struct.efx_ef10_dev_addr* %81, i64 %83
  %85 = getelementptr inbounds %struct.efx_ef10_dev_addr, %struct.efx_ef10_dev_addr* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %13, i32 %80, i32* %86)
  %88 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %89 = call i32 @efx_ef10_filter_insert_locked(%struct.efx_nic* %88, %struct.efx_filter_spec* %13, i32 1)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %65
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %92
  %96 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %97 = load i32, i32* @drv, align 4
  %98 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @netif_info(%struct.efx_nic* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %121, %95
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %109 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %110 = load i64*, i64** %19, align 8
  %111 = load i32, i32* %17, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %108, i32 %109, i64 %114)
  %116 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %117 = load i64*, i64** %19, align 8
  %118 = load i32, i32* %17, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %116, i64* %120, align 8
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %17, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %103

124:                                              ; preds = %103
  %125 = load i32, i32* %20, align 4
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %209

126:                                              ; preds = %92
  br label %127

127:                                              ; preds = %126
  br label %135

128:                                              ; preds = %65
  %129 = load i32, i32* %20, align 4
  %130 = call i64 @efx_ef10_filter_get_unsafe_id(i32 %129)
  %131 = load i64*, i64** %19, align 8
  %132 = load i32, i32* %16, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %130, i64* %134, align 8
  br label %135

135:                                              ; preds = %128, %127
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %16, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %61

139:                                              ; preds = %61
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %208

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %208

145:                                              ; preds = %142
  %146 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %147 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @EFX_EF10_BCAST, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %153 = icmp ne i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @EFX_WARN_ON_PARANOID(i32 %154)
  %156 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %13, i32 %156, i32 %157, i32 0)
  %159 = call i32 @eth_broadcast_addr(i32* %28)
  %160 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %161 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %13, i32 %162, i32* %28)
  %164 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %165 = call i32 @efx_ef10_filter_insert_locked(%struct.efx_nic* %164, %struct.efx_filter_spec* %13, i32 1)
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %145
  %169 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %170 = load i32, i32* @drv, align 4
  %171 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %172 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @netif_warn(%struct.efx_nic* %169, i32 %170, i32 %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  store i32 0, i32* %17, align 4
  br label %176

176:                                              ; preds = %194, %168
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %176
  %181 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %182 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %183 = load i64*, i64** %19, align 8
  %184 = load i32, i32* %17, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %181, i32 %182, i64 %187)
  %189 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %190 = load i64*, i64** %19, align 8
  %191 = load i32, i32* %17, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  store i64 %189, i64* %193, align 8
  br label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %17, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %176

197:                                              ; preds = %176
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %209

199:                                              ; preds = %145
  %200 = load i32, i32* %20, align 4
  %201 = call i64 @efx_ef10_filter_get_unsafe_id(i32 %200)
  %202 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %203 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* @EFX_EF10_BCAST, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  store i64 %201, i64* %206, align 8
  br label %207

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %142, %139
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %209

209:                                              ; preds = %208, %197, %124
  %210 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @efx_rss_active(i32*) #2

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #2

declare dso_local i32 @efx_filter_init_rx(%struct.efx_filter_spec*, i32, i32, i32) #2

declare dso_local i32 @efx_filter_set_eth_local(%struct.efx_filter_spec*, i32, i32*) #2

declare dso_local i32 @efx_ef10_filter_insert_locked(%struct.efx_nic*, %struct.efx_filter_spec*, i32) #2

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32) #2

declare dso_local i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic*, i32, i64) #2

declare dso_local i64 @efx_ef10_filter_get_unsafe_id(i32) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
