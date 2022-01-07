; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_setEA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_setEA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_PRIV_SHARE_NICCTRL = common dso_local global i32 0, align 4
@JME_FLAG_PHYEA_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@JM_PHY_EXT_COMM_0_REG = common dso_local global i32 0, align 4
@JM_PHY_EXT_COMM_1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_phy_setEA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_phy_setEA(%struct.jme_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @PCI_PRIV_SHARE_NICCTRL, align 4
  %11 = call i32 @pci_read_config_byte(%struct.TYPE_2__* %9, i32 %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 3
  %14 = load i32, i32* @JME_FLAG_PHYEA_ENABLE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

17:                                               ; preds = %1
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %131 [
    i32 129, label %23
    i32 128, label %66
  ]

23:                                               ; preds = %17
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 6
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38, %33, %28
  store i32 138, i32* %4, align 4
  store i32 16649, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 57480, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %59, %49
  br label %134

66:                                               ; preds = %17
  %67 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 5
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %91, label %86

86:                                               ; preds = %81, %66
  %87 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 6
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %81, %76, %71
  store i32 138, i32* %4, align 4
  store i32 16649, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %97
  store i32 57480, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %102, %92
  %109 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 24714, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %113, %108
  %120 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 16522, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %124, %119
  br label %134

131:                                              ; preds = %17
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %151

134:                                              ; preds = %130, %65
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %139 = load i32, i32* @JM_PHY_EXT_COMM_0_REG, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @jme_phy_specreg_write(%struct.jme_adapter* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %147 = load i32, i32* @JM_PHY_EXT_COMM_1_REG, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @jme_phy_specreg_write(%struct.jme_adapter* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %142
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %131, %16
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @jme_phy_specreg_write(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
