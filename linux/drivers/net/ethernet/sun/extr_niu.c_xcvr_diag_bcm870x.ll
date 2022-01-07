; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_xcvr_diag_bcm870x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_xcvr_diag_bcm870x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32 }

@BCM8704_PMA_PMD_DEV_ADDR = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Port %u PMA_PMD(MII_STAT1000) [%04x]\0A\00", align 1
@BCM8704_USER_DEV3_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Port %u USER_DEV3(0x20) [%04x]\0A\00", align 1
@BCM8704_PHYXS_DEV_ADDR = common dso_local global i32 0, align 4
@MII_NWAYTEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Port %u PHYXS(MII_NWAYTEST) [%04x]\0A\00", align 1
@BCM8704_USER_ANALOG_STATUS0 = common dso_local global i32 0, align 4
@BCM8704_USER_TX_ALARM_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Port %u cable not connected or bad cable\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Port %u optical module is bad or missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @xcvr_diag_bcm870x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcvr_diag_bcm870x(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BCM8704_PMA_PMD_DEV_ADDR, align 4
  %12 = load i32, i32* @MII_STAT1000, align 4
  %13 = call i32 @mdio_read(%struct.niu* %7, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %131

18:                                               ; preds = %1
  %19 = load %struct.niu*, %struct.niu** %3, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.niu*, %struct.niu** %3, align 8
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = getelementptr inbounds %struct.niu, %struct.niu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %29 = call i32 @mdio_read(%struct.niu* %24, i32 %27, i32 %28, i32 32)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %131

34:                                               ; preds = %18
  %35 = load %struct.niu*, %struct.niu** %3, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.niu*, %struct.niu** %3, align 8
  %41 = load %struct.niu*, %struct.niu** %3, align 8
  %42 = getelementptr inbounds %struct.niu, %struct.niu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BCM8704_PHYXS_DEV_ADDR, align 4
  %45 = load i32, i32* @MII_NWAYTEST, align 4
  %46 = call i32 @mdio_read(%struct.niu* %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %131

51:                                               ; preds = %34
  %52 = load %struct.niu*, %struct.niu** %3, align 8
  %53 = getelementptr inbounds %struct.niu, %struct.niu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.niu*, %struct.niu** %3, align 8
  %58 = load %struct.niu*, %struct.niu** %3, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %62 = load i32, i32* @BCM8704_USER_ANALOG_STATUS0, align 4
  %63 = call i32 @mdio_read(%struct.niu* %57, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %131

68:                                               ; preds = %51
  %69 = load %struct.niu*, %struct.niu** %3, align 8
  %70 = load %struct.niu*, %struct.niu** %3, align 8
  %71 = getelementptr inbounds %struct.niu, %struct.niu* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %74 = load i32, i32* @BCM8704_USER_ANALOG_STATUS0, align 4
  %75 = call i32 @mdio_read(%struct.niu* %69, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %131

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %4, align 4
  %82 = load %struct.niu*, %struct.niu** %3, align 8
  %83 = load %struct.niu*, %struct.niu** %3, align 8
  %84 = getelementptr inbounds %struct.niu, %struct.niu* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %87 = load i32, i32* @BCM8704_USER_TX_ALARM_STATUS, align 4
  %88 = call i32 @mdio_read(%struct.niu* %82, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %131

93:                                               ; preds = %80
  %94 = load %struct.niu*, %struct.niu** %3, align 8
  %95 = load %struct.niu*, %struct.niu** %3, align 8
  %96 = getelementptr inbounds %struct.niu, %struct.niu* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %99 = load i32, i32* @BCM8704_USER_TX_ALARM_STATUS, align 4
  %100 = call i32 @mdio_read(%struct.niu* %94, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %131

105:                                              ; preds = %93
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 1020
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 17340
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.niu*, %struct.niu** %3, align 8
  %117 = getelementptr inbounds %struct.niu, %struct.niu* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %129

120:                                              ; preds = %112, %109
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %121, 25500
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.niu*, %struct.niu** %3, align 8
  %125 = getelementptr inbounds %struct.niu, %struct.niu* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %120
  br label %129

129:                                              ; preds = %128, %115
  br label %130

130:                                              ; preds = %129, %105
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %103, %91, %78, %66, %49, %32, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
