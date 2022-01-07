; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32, i32, %struct.ixgbe_hw, i32, %struct.net_device*, %struct.pci_dev* }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.3 = type opaque
%struct.net_device = type { i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32, i32 }

@ixgbe_mac_X550_vf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"PF still in reset state.  Is the PF interface up?\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"init_shared_code failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error reading MAC address\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"MAC address not assigned by administrator.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assigning random MAC address\0A\00", align 1
@IXGBEVF_DEFAULT_TXD = common dso_local global i32 0, align 4
@IXGBEVF_DEFAULT_RXD = common dso_local global i32 0, align 4
@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_sw_init(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 5
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %4, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 7
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.3*
  %48 = call i32 %45(%struct.ixgbe_hw.3* %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ixgbe_mac_X550_vf, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %1
  %56 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %57 = call i32 @ixgbevf_init_rss_key(%struct.ixgbevf_adapter* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %186

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 2, i32* %65, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 2, i32* %68, align 4
  %69 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %69, i32 0, i32 6
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.0*
  %79 = call i32 %76(%struct.ixgbe_hw.0* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %62
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %143

86:                                               ; preds = %62
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %90, align 8
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %93 = bitcast %struct.ixgbe_hw* %92 to %struct.ixgbe_hw.1*
  %94 = call i32 %91(%struct.ixgbe_hw.1* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %186

100:                                              ; preds = %86
  %101 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %102 = call i32 @ixgbevf_negotiate_api(%struct.ixgbevf_adapter* %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %106, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = bitcast %struct.ixgbe_hw* %108 to %struct.ixgbe_hw.2*
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %107(%struct.ixgbe_hw.2* %109, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %100
  %118 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = call i32 @dev_info(i32* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %134

121:                                              ; preds = %100
  %122 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @is_zero_ether_addr(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = call i32 @dev_info(i32* %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %121
  br label %134

134:                                              ; preds = %133, %117
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %139 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ether_addr_copy(i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %134, %82
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @is_valid_ether_addr(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %171, label %149

149:                                              ; preds = %143
  %150 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = call i32 @dev_info(i32* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = call i32 @eth_hw_addr_random(%struct.net_device* %153)
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.net_device*, %struct.net_device** %6, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ether_addr_copy(i32 %158, i32 %161)
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %164 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ether_addr_copy(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %149, %143
  %172 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = load i32, i32* @IXGBEVF_DEFAULT_TXD, align 4
  %177 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %178 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @IXGBEVF_DEFAULT_RXD, align 4
  %180 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %183 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %184 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %183, i32 0, i32 2
  %185 = call i32 @set_bit(i32 %182, i32* %184)
  store i32 0, i32* %2, align 4
  br label %188

186:                                              ; preds = %97, %60
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %171
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @ixgbevf_init_rss_key(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ixgbevf_negotiate_api(%struct.ixgbevf_adapter*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
