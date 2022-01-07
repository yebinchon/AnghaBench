; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_snps_gmac5_default_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_snps_gmac5_default_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i64 }

@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@JUMBO_LEN = common dso_local global i32 0, align 4
@MTL_TX_ALGORITHM_WRR = common dso_local global i32 0, align 4
@MTL_QUEUE_DCB = common dso_local global i8* null, align 8
@MTL_RX_ALGORITHM_SP = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.plat_stmmacenet_data*)* @snps_gmac5_default_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snps_gmac5_default_data(%struct.pci_dev* %0, %struct.plat_stmmacenet_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %5, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 0
  store i32 5, i32* %8, align 8
  %9 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %15, i32 0, i32 4
  store i32 1, i32* %16, align 8
  %17 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %18 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %17, i32 0, i32 19
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %22 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %22, i32 0, i32 18
  store i32 %21, i32* %23, align 8
  %24 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %24, i32 0, i32 5
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @JUMBO_LEN, align 4
  %27 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %28 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %27, i32 0, i32 17
  store i32 %26, i32* %28, align 4
  %29 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %29, i32 0, i32 6
  store i32 4, i32* %30, align 8
  %31 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %32 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %31, i32 0, i32 7
  store i32 4, i32* %32, align 4
  %33 = load i32, i32* @MTL_TX_ALGORITHM_WRR, align 4
  %34 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %34, i32 0, i32 16
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %65, %2
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %39 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %44 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %43, i32 0, i32 15
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i8*, i8** @MTL_QUEUE_DCB, align 8
  %51 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %52 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %51, i32 0, i32 15
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i8* %50, i8** %57, align 8
  %58 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %59 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %58, i32 0, i32 15
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 25, i32* %64, align 4
  br label %65

65:                                               ; preds = %42
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load i32, i32* @MTL_RX_ALGORITHM_SP, align 4
  %70 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %71 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %70, i32 0, i32 14
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %109, %68
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %75 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %72
  %79 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %80 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %79, i32 0, i32 13
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load i8*, i8** @MTL_QUEUE_DCB, align 8
  %87 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %87, i32 0, i32 13
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  store i8* %86, i8** %93, align 8
  %94 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %95 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %94, i32 0, i32 13
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %103 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %102, i32 0, i32 13
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i32 %101, i32* %108, align 8
  br label %109

109:                                              ; preds = %78
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %72

112:                                              ; preds = %72
  %113 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %114 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %113, i32 0, i32 8
  store i32 1, i32* %114, align 8
  %115 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %116 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %115, i32 0, i32 9
  store i32 -1, i32* %116, align 4
  %117 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %118 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %119 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %118, i32 0, i32 12
  store i32 %117, i32* %119, align 8
  %120 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %121 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %120, i32 0, i32 11
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 32, i32* %123, align 4
  %124 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %125 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %124, i32 0, i32 11
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call %struct.TYPE_10__* @devm_kzalloc(i32* %129, i32 24, i32 %130)
  %132 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %133 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %132, i32 0, i32 10
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %133, align 8
  %134 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %135 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %134, i32 0, i32 10
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = icmp ne %struct.TYPE_10__* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %112
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %178

141:                                              ; preds = %112
  %142 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %143 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %142, i32 0, i32 10
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 31, i32* %145, align 8
  %146 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %147 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %146, i32 0, i32 10
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  store i32 31, i32* %149, align 4
  %150 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %151 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %150, i32 0, i32 10
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %155 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %154, i32 0, i32 10
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 4, i32* %159, align 4
  %160 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %161 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %160, i32 0, i32 10
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 8, i32* %165, align 4
  %166 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %167 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %166, i32 0, i32 10
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32 16, i32* %171, align 4
  %172 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %173 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %172, i32 0, i32 10
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  store i32 32, i32* %177, align 4
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %141, %138
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_10__* @devm_kzalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
