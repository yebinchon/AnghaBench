; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"already using mac address %pM\0A\00", align 1
@__I40E_DOWN = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"returning to hw mac address %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set new mac address %pM\0A\00", align 1
@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_AQC_WRITE_TYPE_LAA_WOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Ignoring error from firmware on LAA update, status %s, AQ ret %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @i40e_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.i40e_netdev_priv* %13, %struct.i40e_netdev_priv** %6, align 8
  %14 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %15, align 8
  store %struct.i40e_vsi* %16, %struct.i40e_vsi** %7, align 8
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 2
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  store %struct.i40e_pf* %19, %struct.i40e_pf** %8, align 8
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 1
  store %struct.i40e_hw* %21, %struct.i40e_hw** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.sockaddr*
  store %struct.sockaddr* %23, %struct.sockaddr** %10, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_valid_ether_addr(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EADDRNOTAVAIL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %141

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ether_addr_equal(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %141

47:                                               ; preds = %32
  %48 = load i32, i32* @__I40E_DOWN, align 4
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @test_bit(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54, %47
  %62 = load i32, i32* @EADDRNOTAVAIL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %141

64:                                               ; preds = %54
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %70 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ether_addr_equal(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %77 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %87

81:                                               ; preds = %64
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %84 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %89 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %88, i32 0, i32 1
  %90 = call i32 @spin_lock_bh(i32* %89)
  %91 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @i40e_del_mac_filter(%struct.i40e_vsi* %91, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ether_addr_copy(i32 %98, i32 %101)
  %103 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @i40e_add_mac_filter(%struct.i40e_vsi* %103, i32 %106)
  %108 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %109 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock_bh(i32* %109)
  %111 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %112 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @I40E_VSI_MAIN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %87
  %117 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %118 = load i32, i32* @I40E_AQC_WRITE_TYPE_LAA_WOL, align 4
  %119 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %120 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @i40e_aq_mac_address_write(%struct.i40e_hw* %117, i32 %118, i32 %121, i32* null)
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %116
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @i40e_stat_str(%struct.i40e_hw* %127, i64 %128)
  %130 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %132 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @i40e_aq_str(%struct.i40e_hw* %130, i32 %134)
  %136 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %126, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %135)
  br label %137

137:                                              ; preds = %125, %116
  br label %138

138:                                              ; preds = %137, %87
  %139 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %140 = call i32 @i40e_service_event_schedule(%struct.i40e_pf* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %61, %41, %29
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @i40e_del_mac_filter(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @i40e_add_mac_filter(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @i40e_aq_mac_address_write(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_service_event_schedule(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
