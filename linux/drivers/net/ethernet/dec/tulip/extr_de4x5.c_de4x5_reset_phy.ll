; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_reset_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i64, i64, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@PHY_HARD_RESET = common dso_local global i32 0, align 4
@MII_CR_RST = common dso_local global i32 0, align 4
@MII_CR = common dso_local global i32 0, align 4
@DE4X5_MII = common dso_local global i32 0, align 4
@DC21140 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_reset_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_reset_phy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %12 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %17 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %20 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %121

26:                                               ; preds = %15, %1
  %27 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %28 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %26
  %32 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %33 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %31
  %37 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %38 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %41 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %36
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %50 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %53 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @srom_exec(%struct.net_device* %48, i64 %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %61 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @srom_exec(%struct.net_device* %59, i64 %68)
  br label %87

70:                                               ; preds = %36
  %71 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %72 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %78 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @srom_exec(%struct.net_device* %76, i64 %79)
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %83 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @srom_exec(%struct.net_device* %81, i64 %84)
  br label %86

86:                                               ; preds = %75, %70
  br label %87

87:                                               ; preds = %86, %47
  br label %90

88:                                               ; preds = %31
  %89 = load i32, i32* @PHY_HARD_RESET, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %92 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i32, i32* @MII_CR_RST, align 4
  %97 = load i32, i32* @MII_CR, align 4
  %98 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %99 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %102 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DE4X5_MII, align 4
  %108 = call i32 @mii_wr(i32 %96, i32 %97, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %95, %90
  br label %110

110:                                              ; preds = %109, %26
  %111 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %112 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* @MII_CR, align 4
  %118 = load i32, i32* @MII_CR_RST, align 4
  %119 = call i32 @test_mii_reg(%struct.net_device* %116, i32 %117, i32 %118, i32 0, i32 500)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %115, %110
  br label %130

121:                                              ; preds = %15
  %122 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %123 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DC21140, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @PHY_HARD_RESET, align 4
  br label %129

129:                                              ; preds = %127, %121
  br label %130

130:                                              ; preds = %129, %120
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @srom_exec(%struct.net_device*, i64) #1

declare dso_local i32 @mii_wr(i32, i32, i32, i32) #1

declare dso_local i32 @test_mii_reg(%struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
