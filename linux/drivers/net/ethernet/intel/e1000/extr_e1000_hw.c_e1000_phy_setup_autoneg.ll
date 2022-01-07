; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@e1000_phy_8201 = common dso_local global i64 0, align 8
@REG9_SPEED_MASK = common dso_local global i32 0, align 4
@REG4_SPEED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"autoneg_advertised %x\0A\00", align 1
@ADVERTISE_10_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Half duplex\0A\00", align 1
@NWAY_AR_10T_HD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_10_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Full duplex\0A\00", align 1
@NWAY_AR_10T_FD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_100_HALF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Half duplex\0A\00", align 1
@NWAY_AR_100TX_HD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Full duplex\0A\00", align 1
@NWAY_AR_100TX_FD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_1000_HALF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Advertise 1000mb Half duplex requested, request denied!\0A\00", align 1
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Advertise 1000mb Full duplex\0A\00", align 1
@CR_1000T_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Auto-Neg Advertising %x\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %9 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %7, i32 %8, i32* %5)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %180

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = load i32, i32* @PHY_1000T_CTRL, align 4
  %17 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %15, i32 %16, i32* %6)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %180

22:                                               ; preds = %14
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_phy_8201, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @REG9_SPEED_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @REG4_SPEED_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @REG9_SPEED_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %34
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %70
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ADVERTISE_1000_HALF, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %94
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %146 [
    i32 130, label %119
    i32 129, label %126
    i32 128, label %132
    i32 131, label %140
  ]

119:                                              ; preds = %115
  %120 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %121 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %150

126:                                              ; preds = %115
  %127 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %128 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  br label %150

132:                                              ; preds = %115
  %133 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %5, align 4
  br label %150

140:                                              ; preds = %115
  %141 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %142 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %150

146:                                              ; preds = %115
  %147 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %148 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %149 = sub nsw i64 0, %148
  store i64 %149, i64* %2, align 8
  br label %180

150:                                              ; preds = %140, %132, %126, %119
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %151, i32 %152, i32 %153)
  store i64 %154, i64* %4, align 8
  %155 = load i64, i64* %4, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i64, i64* %4, align 8
  store i64 %158, i64* %2, align 8
  br label %180

159:                                              ; preds = %150
  %160 = load i32, i32* %5, align 4
  %161 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %163 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @e1000_phy_8201, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %178

168:                                              ; preds = %159
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %170 = load i32, i32* @PHY_1000T_CTRL, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %169, i32 %170, i32 %171)
  store i64 %172, i64* %4, align 8
  %173 = load i64, i64* %4, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i64, i64* %4, align 8
  store i64 %176, i64* %2, align 8
  br label %180

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %167
  %179 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %179, i64* %2, align 8
  br label %180

180:                                              ; preds = %178, %175, %157, %146, %20, %12
  %181 = load i64, i64* %2, align 8
  ret i64 %181
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
