; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_config_pinmux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_config_pinmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Configuring pinmux\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to configure digital audio pins(err = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to configure ZIF pins(err = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed to configure IC-Link/GPO pins(err = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to configure analog audio pins(err = %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Failed to configure interrupt pins(err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*)* @si476x_core_config_pinmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_config_pinmux(%struct.si476x_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si476x_core*, align 8
  %4 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %3, align 8
  %5 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %6 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %11 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %12 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %16 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %20 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %24 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @si476x_core_cmd_dig_audio_pin_cfg(%struct.si476x_core* %10, i32 %14, i32 %18, i32 %22, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %32 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %135

38:                                               ; preds = %1
  %39 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %40 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %41 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %45 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %49 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %53 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @si476x_core_cmd_zif_pin_cfg(%struct.si476x_core* %39, i32 %43, i32 %47, i32 %51, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %38
  %60 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %61 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %135

67:                                               ; preds = %38
  %68 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %69 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %70 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %74 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %78 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %82 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @si476x_core_cmd_ic_link_gpo_ctl_pin_cfg(%struct.si476x_core* %68, i32 %72, i32 %76, i32 %80, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %67
  %89 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %90 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %135

96:                                               ; preds = %67
  %97 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %98 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %99 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @si476x_core_cmd_ana_audio_pin_cfg(%struct.si476x_core* %97, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %96
  %106 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %107 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %135

113:                                              ; preds = %96
  %114 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %115 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %116 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %120 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @si476x_core_cmd_intb_pin_cfg(%struct.si476x_core* %114, i32 %118, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %113
  %127 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %128 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %126, %105, %88, %59, %30
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @si476x_core_cmd_dig_audio_pin_cfg(%struct.si476x_core*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @si476x_core_cmd_zif_pin_cfg(%struct.si476x_core*, i32, i32, i32, i32) #1

declare dso_local i32 @si476x_core_cmd_ic_link_gpo_ctl_pin_cfg(%struct.si476x_core*, i32, i32, i32, i32) #1

declare dso_local i32 @si476x_core_cmd_ana_audio_pin_cfg(%struct.si476x_core*, i32) #1

declare dso_local i32 @si476x_core_cmd_intb_pin_cfg(%struct.si476x_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
