; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_d3_lplu_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_d3_lplu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64, i64 }

@e1000_phy_igp = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_82541_rev_2 = common dso_local global i64 0, align 8
@e1000_82547_rev_2 = common dso_local global i64 0, align 8
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@IGP01E1000_GMII_FLEX_SPD = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_10_ALL = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_10_100_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d3_lplu_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d3_lplu_state(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_phy_igp, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %3, align 8
  br label %190

15:                                               ; preds = %2
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_82541_rev_2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_82547_rev_2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21, %15
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %30 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %28, i32 %29, i32* %7)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %190

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %122, label %39

39:                                               ; preds = %36
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @e1000_82541_rev_2, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @e1000_82547_rev_2, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @IGP01E1000_GMII_FLEX_SPD, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %56, i32 %57, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %190

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_smart_speed_on, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %73 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %74 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %72, i32 %73, i32* %7)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %190

79:                                               ; preds = %71
  %80 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %84 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %83, i32 %84, i32 %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i64, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  br label %190

91:                                               ; preds = %79
  br label %121

92:                                               ; preds = %65
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @e1000_smart_speed_off, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %100 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %101 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %99, i32 %100, i32* %7)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* %6, align 8
  store i64 %105, i64* %3, align 8
  br label %190

106:                                              ; preds = %98
  %107 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %112 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %111, i32 %112, i32 %113)
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i64, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  br label %190

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %92
  br label %121

121:                                              ; preds = %120, %91
  br label %188

122:                                              ; preds = %36
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AUTONEG_ADVERTISE_10_ALL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AUTONEG_ADVERTISE_10_100_ALL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %187

140:                                              ; preds = %134, %128, %122
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @e1000_82541_rev_2, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %148 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @e1000_82547_rev_2, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %146, %140
  %153 = load i32, i32* @IGP01E1000_GMII_FLEX_SPD, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %157 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %156, i32 %157, i32 %158)
  store i64 %159, i64* %6, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i64, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  br label %190

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %146
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %167 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %168 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %166, i32 %167, i32* %7)
  store i64 %168, i64* %6, align 8
  %169 = load i64, i64* %6, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i64, i64* %6, align 8
  store i64 %172, i64* %3, align 8
  br label %190

173:                                              ; preds = %165
  %174 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %7, align 4
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %179 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %178, i32 %179, i32 %180)
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = load i64, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  br label %190

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %134
  br label %188

188:                                              ; preds = %187, %121
  %189 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %189, i64* %3, align 8
  br label %190

190:                                              ; preds = %188, %184, %171, %162, %117, %104, %89, %77, %62, %33, %13
  %191 = load i64, i64* %3, align 8
  ret i64 %191
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
