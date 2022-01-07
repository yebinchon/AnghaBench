; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }

@QLCNIC_TEST_LEN = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@QLCNIC_ILB_MODE = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB = common dso_local global i32 0, align 4
@QLCNIC_ELB_MODE = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i64*)* @qlcnic_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i64*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %6, align 8
  %8 = load i32, i32* @QLCNIC_TEST_LEN, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @memset(i64* %7, i32 0, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @qlcnic_reg_test(%struct.net_device* %13)
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %23 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @qlcnic_test_link(%struct.net_device* %28)
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %30, i64* %32, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %39 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %27
  %44 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i64 @qlcnic_irq_test(%struct.net_device* %51)
  %53 = load i64*, i64** %6, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  store i64 %52, i64* %54, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %61 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %50
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load i32, i32* @QLCNIC_ILB_MODE, align 4
  %68 = call i64 @qlcnic_loopback_test(%struct.net_device* %66, i32 %67)
  %69 = load i64*, i64** %6, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  store i64 %68, i64* %70, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %77 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %65
  %82 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %81
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = load i32, i32* @QLCNIC_ELB_MODE, align 4
  %91 = call i64 @qlcnic_loopback_test(%struct.net_device* %89, i32 %90)
  %92 = load i64*, i64** %6, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 4
  store i64 %91, i64* %93, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %100 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %88
  %105 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB_DONE, align 4
  %106 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %81
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = call i64 @qlcnic_eeprom_test(%struct.net_device* %111)
  %113 = load i64*, i64** %6, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 5
  store i64 %112, i64* %114, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %121 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %110
  br label %126

126:                                              ; preds = %125, %43
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @qlcnic_reg_test(%struct.net_device*) #1

declare dso_local i32 @qlcnic_test_link(%struct.net_device*) #1

declare dso_local i64 @qlcnic_irq_test(%struct.net_device*) #1

declare dso_local i64 @qlcnic_loopback_test(%struct.net_device*, i32) #1

declare dso_local i64 @qlcnic_eeprom_test(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
