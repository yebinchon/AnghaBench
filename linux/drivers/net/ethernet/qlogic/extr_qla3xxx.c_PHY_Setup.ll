; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_PHY_Setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_PHY_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64, i32, i32 }

@PHY_ID_0_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not read from reg PHY_ID_0_REG\0A\00", align 1
@PHY_ID_1_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not read from reg PHY_ID_1_REG\0A\00", align 1
@MII_AGERE_ADDR_1 = common dso_local global i32 0, align 4
@MII_AGERE_ADDR_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Could not read from reg PHY_ID_0_REG after Agere detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Could not read from reg PHY_ID_1_REG after Agere detected\0A\00", align 1
@PHY_AGERE_ET1011C = common dso_local global i32 0, align 4
@PHY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"PHY is unknown\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @PHY_Setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PHY_Setup(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %10 = load i32, i32* @PHY_ID_0_REG, align 4
  %11 = call i32 @ql_mii_read_reg(%struct.ql3_adapter* %9, i32 %10, i32* %4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = load i32, i32* @PHY_ID_1_REG, align 4
  %23 = call i32 @ql_mii_read_reg(%struct.ql3_adapter* %21, i32 %22, i32* %5)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %108

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 65535
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %74

38:                                               ; preds = %35, %32
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @MII_AGERE_ADDR_1, align 4
  store i32 %44, i32* %7, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @MII_AGERE_ADDR_2, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %49 = load i32, i32* @PHY_ID_0_REG, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ql_mii_read_reg_ex(%struct.ql3_adapter* %48, i32 %49, i32* %4, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netdev_err(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %108

60:                                               ; preds = %47
  %61 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %62 = load i32, i32* @PHY_ID_1_REG, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ql_mii_read_reg_ex(%struct.ql3_adapter* %61, i32 %62, i32* %5, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @netdev_err(i32 %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %108

73:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %35
  %75 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @getPhyType(%struct.ql3_adapter* %75, i32 %76, i32 %77)
  %79 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PHY_AGERE_ET1011C, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @phyAgereSpecificInit(%struct.ql3_adapter* %90, i32 %91)
  br label %107

93:                                               ; preds = %86, %74
  %94 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PHY_TYPE_UNKNOWN, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @netdev_err(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %108

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %89
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %99, %67, %54, %26, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @ql_mii_read_reg(%struct.ql3_adapter*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ql_mii_read_reg_ex(%struct.ql3_adapter*, i32, i32*, i32) #1

declare dso_local i32 @getPhyType(%struct.ql3_adapter*, i32, i32) #1

declare dso_local i32 @phyAgereSpecificInit(%struct.ql3_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
