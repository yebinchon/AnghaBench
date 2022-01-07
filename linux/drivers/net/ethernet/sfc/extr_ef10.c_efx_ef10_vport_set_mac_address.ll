; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_vport_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_vport_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_4__*, i32, %struct.efx_ef10_nic_data* }
%struct.TYPE_4__ = type { i32* }
%struct.efx_ef10_nic_data = type { i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failed to restore when changing MAC address - scheduling reset\0A\00", align 1
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ef10_vport_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_vport_set_mac_address(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 2
  %12 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %11, align 8
  store %struct.efx_ef10_nic_data* %12, %struct.efx_ef10_nic_data** %4, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %18 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @is_zero_ether_addr(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %152

23:                                               ; preds = %1
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = call i32 @efx_device_detach_sync(%struct.efx_nic* %24)
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @efx_net_stop(%struct.TYPE_4__* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 1
  %32 = call i32 @down_write(i32* %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = call i32 @efx_ef10_filter_table_remove(%struct.efx_nic* %33)
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = call i32 @up_write(i32* %36)
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %40 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @efx_ef10_vadaptor_free(%struct.efx_nic* %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  br label %110

46:                                               ; preds = %23
  %47 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %48 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @ether_addr_copy(i32* %16, i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %52 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %53 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %56 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @efx_ef10_vport_del_mac(%struct.efx_nic* %51, i32 %54, i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %100

62:                                               ; preds = %46
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %65 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @efx_ef10_vport_add_mac(%struct.efx_nic* %63, i32 %66, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %62
  %76 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %77 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @ether_addr_copy(i32* %78, i32* %83)
  br label %99

85:                                               ; preds = %62
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %88 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @efx_ef10_vport_add_mac(%struct.efx_nic* %86, i32 %89, i32* %16)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %95 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @eth_zero_addr(i32* %96)
  br label %134

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %75
  br label %100

100:                                              ; preds = %99, %61
  %101 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %102 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %103 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @efx_ef10_vadaptor_alloc(%struct.efx_nic* %101, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %134

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %45
  %111 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %112 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %111, i32 0, i32 1
  %113 = call i32 @down_write(i32* %112)
  %114 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %115 = call i32 @efx_ef10_filter_table_probe(%struct.efx_nic* %114)
  store i32 %115, i32* %8, align 4
  %116 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %117 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %116, i32 0, i32 1
  %118 = call i32 @up_write(i32* %117)
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %134

122:                                              ; preds = %110
  %123 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %124 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = call i32 @efx_net_open(%struct.TYPE_4__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %134

130:                                              ; preds = %122
  %131 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %132 = call i32 @efx_device_attach_if_not_resetting(%struct.efx_nic* %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %152

134:                                              ; preds = %129, %121, %108, %93
  %135 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %136 = load i32, i32* @drv, align 4
  %137 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %138 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = call i32 @netif_err(%struct.efx_nic* %135, i32 %136, %struct.TYPE_4__* %139, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %142 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %143 = call i32 @efx_schedule_reset(%struct.efx_nic* %141, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load i32, i32* %7, align 4
  br label %150

148:                                              ; preds = %134
  %149 = load i32, i32* %8, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  store i32 %151, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %152

152:                                              ; preds = %150, %130, %22
  %153 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_zero_ether_addr(i32*) #2

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #2

declare dso_local i32 @efx_net_stop(%struct.TYPE_4__*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @efx_ef10_filter_table_remove(%struct.efx_nic*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @efx_ef10_vadaptor_free(%struct.efx_nic*, i32) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @efx_ef10_vport_del_mac(%struct.efx_nic*, i32, i32*) #2

declare dso_local i32 @efx_ef10_vport_add_mac(%struct.efx_nic*, i32, i32*) #2

declare dso_local i32 @eth_zero_addr(i32*) #2

declare dso_local i32 @efx_ef10_vadaptor_alloc(%struct.efx_nic*, i32) #2

declare dso_local i32 @efx_ef10_filter_table_probe(%struct.efx_nic*) #2

declare dso_local i32 @efx_net_open(%struct.TYPE_4__*) #2

declare dso_local i32 @efx_device_attach_if_not_resetting(%struct.efx_nic*) #2

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, %struct.TYPE_4__*, i8*) #2

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
