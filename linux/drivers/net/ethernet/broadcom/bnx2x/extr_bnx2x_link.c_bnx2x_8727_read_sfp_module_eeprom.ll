; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@SFP_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reading from eeprom is limited to 0xf\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Got bad status 0x%x when reading from SFP+ EEPROM\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i32, i32, i32*, i32)* @bnx2x_8727_read_sfp_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8727_read_sfp_module_eeprom(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_phy*, align 8
  %10 = alloca %struct.link_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bnx2x*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %9, align 8
  store %struct.link_params* %1, %struct.link_params** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.link_params*, %struct.link_params** %10, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load %struct.bnx2x*, %struct.bnx2x** %20, align 8
  store %struct.bnx2x* %21, %struct.bnx2x** %16, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @SFP_EEPROM_PAGE_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %7
  %26 = load i32, i32* @NETIF_MSG_LINK, align 4
  %27 = call i32 (i32, i8*, ...) @DP(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %154

30:                                               ; preds = %7
  %31 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %33 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %34 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR, align 4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %36, 1
  %38 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %31, %struct.bnx2x_phy* %32, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %41 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %42 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %43 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %39, %struct.bnx2x_phy* %40, i32 %41, i32 %42, i32* %17)
  %44 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %46 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %47 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %53

51:                                               ; preds = %30
  %52 = load i32, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 2, %50 ], [ %52, %51 ]
  %55 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %44, %struct.bnx2x_phy* %45, i32 %46, i32 %47, i32 %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %57 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %58 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %59 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %56, %struct.bnx2x_phy* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %63 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %64 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %65 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF, align 4
  %66 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %62, %struct.bnx2x_phy* %63, i32 %64, i32 32772, i32 %65)
  %67 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %69 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %70 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %71 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %67, %struct.bnx2x_phy* %68, i32 %69, i32 %70, i32 32770)
  %72 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %18, align 4
  br label %73

73:                                               ; preds = %90, %53
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 100
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %78 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %79 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %80 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %81 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %77, %struct.bnx2x_phy* %78, i32 %79, i32 %80, i32* %17)
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %93

88:                                               ; preds = %76
  %89 = call i32 @udelay(i32 5)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %73

93:                                               ; preds = %87, %73
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i32, i32* @NETIF_MSG_LINK, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %103 = and i32 %101, %102
  %104 = call i32 (i32, i8*, ...) @DP(i32 %100, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %154

107:                                              ; preds = %93
  store i32 0, i32* %18, align 4
  br label %108

108:                                              ; preds = %127, %107
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %114 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %115 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %116 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF, align 4
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %113, %struct.bnx2x_phy* %114, i32 %115, i32 %118, i32* %17)
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK, align 4
  %122 = and i32 %120, %121
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %108

130:                                              ; preds = %108
  store i32 0, i32* %18, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %132, 100
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %136 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %137 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %138 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %139 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %135, %struct.bnx2x_phy* %136, i32 %137, i32 %138, i32* %17)
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %154

146:                                              ; preds = %134
  %147 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  br label %131

151:                                              ; preds = %131
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %151, %145, %99, %25
  %155 = load i32, i32* %8, align 4
  ret i32 %155
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
