; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32, i32, %struct.sja1105_private* }
%struct.sja1105_private = type { i32 }
%struct.sja1105_dt_port = type { i32 }

@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to parse DT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"RGMII delay not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to register PTP clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to load static config: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to configure MII clocking: %d\0A\00", align 1
@SJA1105_NUM_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @sja1105_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sja1105_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %9 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca %struct.sja1105_dt_port, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 3
  %15 = load %struct.sja1105_private*, %struct.sja1105_private** %14, align 8
  store %struct.sja1105_private* %15, %struct.sja1105_private** %6, align 8
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %17 = call i32 @sja1105_parse_dt(%struct.sja1105_private* %16, %struct.sja1105_dt_port* %12)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %22 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %29 = call i32 @sja1105_parse_rgmii_delays(%struct.sja1105_private* %28, %struct.sja1105_dt_port* %12)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %34 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

38:                                               ; preds = %27
  %39 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %40 = call i32 @sja1105_ptp_clock_register(%struct.sja1105_private* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %45 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

50:                                               ; preds = %38
  %51 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %52 = call i32 @sja1105_static_config_load(%struct.sja1105_private* %51, %struct.sja1105_dt_port* %12)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %57 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

62:                                               ; preds = %50
  %63 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %64 = call i32 @sja1105_clocking_setup(%struct.sja1105_private* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %69 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

74:                                               ; preds = %62
  %75 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %76 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @SJA1105_NUM_TC, align 4
  %78 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %79 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %81 = call i32 @sja1105_setup_8021q_tagging(%struct.dsa_switch* %80, i32 1)
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %74, %67, %55, %43, %32, %20
  %83 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sja1105_parse_dt(%struct.sja1105_private*, %struct.sja1105_dt_port*) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @sja1105_parse_rgmii_delays(%struct.sja1105_private*, %struct.sja1105_dt_port*) #2

declare dso_local i32 @sja1105_ptp_clock_register(%struct.sja1105_private*) #2

declare dso_local i32 @sja1105_static_config_load(%struct.sja1105_private*, %struct.sja1105_dt_port*) #2

declare dso_local i32 @sja1105_clocking_setup(%struct.sja1105_private*) #2

declare dso_local i32 @sja1105_setup_8021q_tagging(%struct.dsa_switch*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
