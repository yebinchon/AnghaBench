; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i32, i32, %struct.atl1e_adapter* }
%struct.atl1e_adapter = type { i32 }

@REG_GPHY_CTRL = common dso_local global i32 0, align 4
@GPHY_CTRL_DEFAULT = common dso_local global i32 0, align 4
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@MII_DBG_ADDR = common dso_local global i32 0, align 4
@MII_DBG_DATA = common dso_local global i32 0, align 4
@MII_INT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error enable PHY linkChange Interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Restarting Auto-Negotiation\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error resetting the phy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_phy_init(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  %7 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %8 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %7, i32 0, i32 2
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  store %struct.atl1e_adapter* %9, %struct.atl1e_adapter** %4, align 8
  %10 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %11 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %16 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %21 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %23 = call i32 @atl1e_restart_autoneg(%struct.atl1e_hw* %22)
  store i32 %23, i32* %2, align 4
  br label %160

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %160

25:                                               ; preds = %1
  %26 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %27 = load i32, i32* @REG_GPHY_CTRL, align 4
  %28 = load i32, i32* @GPHY_CTRL_DEFAULT, align 4
  %29 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %26, i32 %27, i32 %28)
  %30 = call i32 @msleep(i32 2)
  %31 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %32 = load i32, i32* @REG_GPHY_CTRL, align 4
  %33 = load i32, i32* @GPHY_CTRL_DEFAULT, align 4
  %34 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %31, i32 %32, i32 %35)
  %37 = call i32 @msleep(i32 2)
  %38 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %39 = load i32, i32* @MII_DBG_ADDR, align 4
  %40 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %38, i32 %39, i32 11)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %160

45:                                               ; preds = %25
  %46 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %47 = load i32, i32* @MII_DBG_DATA, align 4
  %48 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %46, i32 %47, i32 48128)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %160

53:                                               ; preds = %45
  %54 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %55 = load i32, i32* @MII_DBG_ADDR, align 4
  %56 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %54, i32 %55, i32 0)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %160

61:                                               ; preds = %53
  store i32 751, i32* %6, align 4
  %62 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %63 = load i32, i32* @MII_DBG_DATA, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %160

70:                                               ; preds = %61
  %71 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %72 = load i32, i32* @MII_DBG_ADDR, align 4
  %73 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %71, i32 %72, i32 18)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %160

78:                                               ; preds = %70
  %79 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %80 = load i32, i32* @MII_DBG_DATA, align 4
  %81 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %79, i32 %80, i32 19460)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %160

86:                                               ; preds = %78
  %87 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %88 = load i32, i32* @MII_DBG_ADDR, align 4
  %89 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %87, i32 %88, i32 4)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %160

94:                                               ; preds = %86
  %95 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %96 = load i32, i32* @MII_DBG_DATA, align 4
  %97 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %95, i32 %96, i32 35771)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %160

102:                                              ; preds = %94
  %103 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %104 = load i32, i32* @MII_DBG_ADDR, align 4
  %105 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %103, i32 %104, i32 5)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %160

110:                                              ; preds = %102
  %111 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %112 = load i32, i32* @MII_DBG_DATA, align 4
  %113 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %111, i32 %112, i32 11334)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %160

118:                                              ; preds = %110
  %119 = call i32 @msleep(i32 1)
  %120 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %121 = load i32, i32* @MII_INT_CTRL, align 4
  %122 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %120, i32 %121, i32 3072)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @netdev_err(i32 %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %160

131:                                              ; preds = %118
  %132 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %133 = call i32 @atl1e_phy_setup_autoneg_adv(%struct.atl1e_hw* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @netdev_err(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %160

142:                                              ; preds = %131
  %143 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @netdev_dbg(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %148 = call i32 @atl1e_phy_commit(%struct.atl1e_hw* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %153 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @netdev_err(i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %2, align 4
  br label %160

157:                                              ; preds = %142
  %158 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %159 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %157, %151, %136, %125, %116, %108, %100, %92, %84, %76, %68, %59, %51, %43, %24, %19
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @atl1e_restart_autoneg(%struct.atl1e_hw*) #1

declare dso_local i32 @AT_WRITE_REGW(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1e_write_phy_reg(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @atl1e_phy_setup_autoneg_adv(%struct.atl1e_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @atl1e_phy_commit(%struct.atl1e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
