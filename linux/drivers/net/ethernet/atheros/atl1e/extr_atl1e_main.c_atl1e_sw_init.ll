; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i64, %struct.pci_dev*, %struct.atl1e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.atl1e_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@SPEED_0 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@REG_PHY_STATUS = common dso_local global i32 0, align 4
@athr_l2e_revB = common dso_local global i32 0, align 4
@PHY_STATUS_100M = common dso_local global i32 0, align 4
@athr_l1e = common dso_local global i32 0, align 4
@athr_l2e_revA = common dso_local global i32 0, align 4
@PHY_STATUS_EMI_CA = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@atl1e_rrs_disable = common dso_local global i32 0, align 4
@atl1e_dma_req_1024 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@__AT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_adapter*)* @atl1e_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_sw_init(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.atl1e_hw*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %7, i32 0, i32 10
  store %struct.atl1e_hw* %8, %struct.atl1e_hw** %4, align 8
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 9
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @SPEED_0, align 4
  %15 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @FULL_DUPLEX, align 4
  %18 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %26 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %25, i32 0, i32 26
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %31 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %30, i32 0, i32 25
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %36 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %35, i32 0, i32 24
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %41 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %40, i32 0, i32 23
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %46 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = load i32, i32* @PCI_COMMAND, align 4
  %49 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %50 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %49, i32 0, i32 22
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %47, i32 %48, i32* %50)
  %52 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %53 = load i32, i32* @REG_PHY_STATUS, align 4
  %54 = call i32 @AT_READ_REG(%struct.atl1e_hw* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %56 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 240
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = load i32, i32* @athr_l2e_revB, align 4
  %61 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %62 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %61, i32 0, i32 21
  store i32 %60, i32* %62, align 4
  br label %77

63:                                               ; preds = %1
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PHY_STATUS_100M, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @athr_l1e, align 4
  %70 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %71 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %70, i32 0, i32 21
  store i32 %69, i32* %71, align 4
  br label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @athr_l2e_revA, align 4
  %74 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %75 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %74, i32 0, i32 21
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %79 = load i32, i32* @REG_PHY_STATUS, align 4
  %80 = call i32 @AT_READ_REG(%struct.atl1e_hw* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @PHY_STATUS_EMI_CA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %87 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %90 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %93 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %95 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %94, i32 0, i32 3
  store i32 7, i32* %95, align 4
  %96 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %102 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %104 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ETH_HLEN, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @VLAN_HLEN, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @ETH_FCS_LEN, align 4
  %111 = add nsw i32 %109, %110
  %112 = add nsw i32 %111, 7
  %113 = ashr i32 %112, 3
  %114 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %115 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @atl1e_rrs_disable, align 4
  %117 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %118 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %117, i32 0, i32 20
  store i32 %116, i32* %118, align 8
  %119 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %120 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %119, i32 0, i32 19
  store i64 0, i64* %120, align 8
  %121 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %122 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %121, i32 0, i32 18
  store i64 0, i64* %122, align 8
  %123 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %124 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %123, i32 0, i32 6
  store i32 50000, i32* %124, align 8
  %125 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %126 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %125, i32 0, i32 7
  store i32 200000, i32* %126, align 4
  %127 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %128 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %127, i32 0, i32 8
  store i32 5, i32* %128, align 8
  %129 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %130 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %129, i32 0, i32 9
  store i32 1, i32* %130, align 4
  %131 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %134, 2
  %136 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %137 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %136, i32 0, i32 10
  store i32 %135, i32* %137, align 8
  %138 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %139 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %138, i32 0, i32 11
  store i32 4, i32* %139, align 4
  %140 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %141 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %140, i32 0, i32 13
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sdiv i32 %143, 3
  %145 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %146 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %145, i32 0, i32 12
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** @atl1e_dma_req_1024, align 8
  %148 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %149 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %148, i32 0, i32 17
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @atl1e_dma_req_1024, align 8
  %151 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %152 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %151, i32 0, i32 16
  store i8* %150, i8** %152, align 8
  %153 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %154 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %153, i32 0, i32 14
  store i32 15, i32* %154, align 8
  %155 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %156 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %155, i32 0, i32 15
  store i32 4, i32* %156, align 4
  %157 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %158 = call i64 @atl1e_alloc_queues(%struct.atl1e_adapter* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %91
  %161 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %161, i32 0, i32 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = call i32 @netdev_err(%struct.TYPE_4__* %163, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %178

167:                                              ; preds = %91
  %168 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %168, i32 0, i32 3
  %170 = call i32 @atomic_set(i32* %169, i32 1)
  %171 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %172 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %171, i32 0, i32 2
  %173 = call i32 @spin_lock_init(i32* %172)
  %174 = load i32, i32* @__AT_DOWN, align 4
  %175 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %176 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %175, i32 0, i32 1
  %177 = call i32 @set_bit(i32 %174, i32* %176)
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %167, %160
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i64 @atl1e_alloc_queues(%struct.atl1e_adapter*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
