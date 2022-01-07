; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.vsc73xx* }
%struct.vsc73xx = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"set up the switch\0A\00", align 1
@VSC73XX_BLOCK_SYSTEM = common dso_local global i32 0, align 4
@VSC73XX_GLORESET = common dso_local global i32 0, align 4
@VSC73XX_GLORESET_MASTER_RESET = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_MEMINIT = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_ANALYZER = common dso_local global i32 0, align 4
@VSC73XX_MACACCESS = common dso_local global i32 0, align 4
@VSC73XX_MACACCESS_CMD_CLEAR_TABLE = common dso_local global i32 0, align 4
@VSC73XX_VLANACCESS = common dso_local global i32 0, align 4
@VSC73XX_VLANACCESS_VLAN_TBL_CMD_CLEAR_TABLE = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_MAC = common dso_local global i32 0, align 4
@VSC73XX_Q_MISC_CONF = common dso_local global i32 0, align 4
@VSC73XX_Q_MISC_CONF_EXTENT_MEM = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_RESET = common dso_local global i32 0, align 4
@VSC73XX_GMIIDELAY = common dso_local global i32 0, align 4
@VSC73XX_GMIIDELAY_GMII0_GTXDELAY_2_0_NS = common dso_local global i32 0, align 4
@VSC73XX_GMIIDELAY_GMII0_RXDELAY_2_0_NS = common dso_local global i32 0, align 4
@VSC73XX_RECVMASK = common dso_local global i32 0, align 4
@VSC73XX_IFLODMSK = common dso_local global i32 0, align 4
@VSC73XX_GLORESET_PHY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @vsc73xx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.vsc73xx*, align 8
  %4 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %5 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %6 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %5, i32 0, i32 0
  %7 = load %struct.vsc73xx*, %struct.vsc73xx** %6, align 8
  store %struct.vsc73xx* %7, %struct.vsc73xx** %3, align 8
  %8 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %9 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_info(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %13 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %14 = load i32, i32* @VSC73XX_GLORESET, align 4
  %15 = load i32, i32* @VSC73XX_GLORESET_MASTER_RESET, align 4
  %16 = call i32 @vsc73xx_write(%struct.vsc73xx* %12, i32 %13, i32 0, i32 %14, i32 %15)
  %17 = call i32 @usleep_range(i32 125, i32 200)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 15
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 6
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 7
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %29 = load i32, i32* @VSC73XX_BLOCK_MEMINIT, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 16843776, %30
  %32 = call i32 @vsc73xx_write(%struct.vsc73xx* %28, i32 %29, i32 2, i32 0, i32 %31)
  %33 = call i32 @mdelay(i32 1)
  br label %34

34:                                               ; preds = %27, %24, %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %18

38:                                               ; preds = %18
  %39 = call i32 @mdelay(i32 30)
  %40 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %41 = load i32, i32* @VSC73XX_BLOCK_ANALYZER, align 4
  %42 = load i32, i32* @VSC73XX_MACACCESS, align 4
  %43 = load i32, i32* @VSC73XX_MACACCESS_CMD_CLEAR_TABLE, align 4
  %44 = call i32 @vsc73xx_write(%struct.vsc73xx* %40, i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %46 = load i32, i32* @VSC73XX_BLOCK_ANALYZER, align 4
  %47 = load i32, i32* @VSC73XX_VLANACCESS, align 4
  %48 = load i32, i32* @VSC73XX_VLANACCESS_VLAN_TBL_CMD_CLEAR_TABLE, align 4
  %49 = call i32 @vsc73xx_write(%struct.vsc73xx* %45, i32 %46, i32 0, i32 %47, i32 %48)
  %50 = call i32 @msleep(i32 40)
  %51 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %52 = call i64 @IS_739X(%struct.vsc73xx* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %56 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %57 = load i32, i32* @VSC73XX_Q_MISC_CONF, align 4
  %58 = load i32, i32* @VSC73XX_Q_MISC_CONF_EXTENT_MEM, align 4
  %59 = call i32 @vsc73xx_write(%struct.vsc73xx* %55, i32 %56, i32 31, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %38
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 7
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 5
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %74

68:                                               ; preds = %64
  %69 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %70 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %71 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %72 = load i32, i32* @VSC73XX_MAC_CFG_RESET, align 4
  %73 = call i32 @vsc73xx_write(%struct.vsc73xx* %69, i32 %70, i32 4, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %79 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %80 = load i32, i32* @VSC73XX_GMIIDELAY, align 4
  %81 = load i32, i32* @VSC73XX_GMIIDELAY_GMII0_GTXDELAY_2_0_NS, align 4
  %82 = load i32, i32* @VSC73XX_GMIIDELAY_GMII0_RXDELAY_2_0_NS, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @vsc73xx_write(%struct.vsc73xx* %78, i32 %79, i32 0, i32 %80, i32 %83)
  %85 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %86 = load i32, i32* @VSC73XX_BLOCK_ANALYZER, align 4
  %87 = load i32, i32* @VSC73XX_RECVMASK, align 4
  %88 = call i32 @vsc73xx_write(%struct.vsc73xx* %85, i32 %86, i32 0, i32 %87, i32 95)
  %89 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %90 = load i32, i32* @VSC73XX_BLOCK_ANALYZER, align 4
  %91 = load i32, i32* @VSC73XX_IFLODMSK, align 4
  %92 = call i32 @vsc73xx_write(%struct.vsc73xx* %89, i32 %90, i32 0, i32 %91, i32 255)
  %93 = call i32 @mdelay(i32 50)
  %94 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %95 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %96 = load i32, i32* @VSC73XX_GLORESET, align 4
  %97 = load i32, i32* @VSC73XX_GLORESET_PHY_RESET, align 4
  %98 = call i32 @vsc73xx_write(%struct.vsc73xx* %94, i32 %95, i32 0, i32 %96, i32 %97)
  %99 = call i32 @udelay(i32 4)
  ret i32 0
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @vsc73xx_write(%struct.vsc73xx*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @IS_739X(%struct.vsc73xx*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
