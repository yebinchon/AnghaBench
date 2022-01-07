; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_hpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_hpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@SFP_OPTIONS_POWER_DECL = common dso_local global i32 0, align 4
@SFP_OPTIONS_HIGH_POWER_LEVEL = common dso_local global i32 0, align 4
@SFP_SFF8472_COMPLIANCE_NONE = common dso_local global i64 0, align 8
@SFP_DIAGMON_DDM = common dso_local global i32 0, align 4
@SFP_DIAGMON_ADDRMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Host does not support %u.%uW modules\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Host does not support %u.%uW modules, module left in power mode 1\0A\00", align 1
@SFP_EXT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to read EEPROM: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to write EEPROM: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Module switched to %u.%uW power level\0A\00", align 1
@T_HPOWER_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*)* @sfp_sm_mod_hpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_sm_mod_hpower(%struct.sfp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  store i32 1000, i32* %4, align 4
  %7 = load %struct.sfp*, %struct.sfp** %3, align 8
  %8 = getelementptr inbounds %struct.sfp, %struct.sfp* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SFP_OPTIONS_POWER_DECL, align 4
  %13 = call i32 @cpu_to_be16(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1500, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.sfp*, %struct.sfp** %3, align 8
  %19 = getelementptr inbounds %struct.sfp, %struct.sfp* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SFP_OPTIONS_HIGH_POWER_LEVEL, align 4
  %24 = call i32 @cpu_to_be16(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 2000, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.sfp*, %struct.sfp** %3, align 8
  %30 = getelementptr inbounds %struct.sfp, %struct.sfp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SFP_SFF8472_COMPLIANCE_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %28
  %37 = load %struct.sfp*, %struct.sfp** %3, align 8
  %38 = getelementptr inbounds %struct.sfp, %struct.sfp* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SFP_DIAGMON_DDM, align 4
  %43 = load i32, i32* @SFP_DIAGMON_ADDRMODE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* @SFP_DIAGMON_DDM, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %36
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.sfp*, %struct.sfp** %3, align 8
  %51 = getelementptr inbounds %struct.sfp, %struct.sfp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.sfp*, %struct.sfp** %3, align 8
  %56 = getelementptr inbounds %struct.sfp, %struct.sfp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sdiv i32 %58, 1000
  %60 = load i32, i32* %4, align 4
  %61 = sdiv i32 %60, 100
  %62 = srem i32 %61, 10
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %133

66:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %133

67:                                               ; preds = %36, %28
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.sfp*, %struct.sfp** %3, align 8
  %70 = getelementptr inbounds %struct.sfp, %struct.sfp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.sfp*, %struct.sfp** %3, align 8
  %75 = getelementptr inbounds %struct.sfp, %struct.sfp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sdiv i32 %77, 1000
  %79 = load i32, i32* %4, align 4
  %80 = sdiv i32 %79, 100
  %81 = srem i32 %80, 10
  %82 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  store i32 0, i32* %2, align 4
  br label %133

83:                                               ; preds = %67
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %84, 1000
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %133

87:                                               ; preds = %83
  %88 = load %struct.sfp*, %struct.sfp** %3, align 8
  %89 = load i32, i32* @SFP_EXT_STATUS, align 4
  %90 = call i32 @sfp_read(%struct.sfp* %88, i32 1, i32 %89, i32* %5, i32 4)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, 4
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.sfp*, %struct.sfp** %3, align 8
  %96 = getelementptr inbounds %struct.sfp, %struct.sfp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %131

102:                                              ; preds = %87
  %103 = call i32 @BIT(i32 0)
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.sfp*, %struct.sfp** %3, align 8
  %107 = load i32, i32* @SFP_EXT_STATUS, align 4
  %108 = call i32 @sfp_write(%struct.sfp* %106, i32 1, i32 %107, i32* %5, i32 4)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %120

112:                                              ; preds = %102
  %113 = load %struct.sfp*, %struct.sfp** %3, align 8
  %114 = getelementptr inbounds %struct.sfp, %struct.sfp* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %131

120:                                              ; preds = %102
  %121 = load %struct.sfp*, %struct.sfp** %3, align 8
  %122 = getelementptr inbounds %struct.sfp, %struct.sfp* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %4, align 4
  %125 = sdiv i32 %124, 1000
  %126 = load i32, i32* %4, align 4
  %127 = sdiv i32 %126, 100
  %128 = srem i32 %127, 10
  %129 = call i32 @dev_info(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %128)
  %130 = load i32, i32* @T_HPOWER_LEVEL, align 4
  store i32 %130, i32* %2, align 4
  br label %133

131:                                              ; preds = %112, %94
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %120, %86, %73, %66, %54
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @sfp_read(%struct.sfp*, i32, i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sfp_write(%struct.sfp*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
