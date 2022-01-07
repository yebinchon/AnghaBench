; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-ebi.c_atmel_ebi_xslate_smc_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-ebi.c_atmel_ebi_xslate_smc_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_smc_timing_xlate = type { i8*, i32 (%struct.atmel_smc_cs_conf.0*, i32, i32)*, i32 }
%struct.atmel_smc_cs_conf.0 = type opaque
%struct.atmel_ebi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.atmel_smc_cs_conf = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"atmel,smc-tdf-ns\00", align 1
@ATMEL_SMC_MODE_TDF_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_TDF_MIN = common dso_local global i32 0, align 4
@timings_xlate_table = common dso_local global %struct.atmel_smc_timing_xlate* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"missing or invalid timings definition in %pOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_ebi_dev*, %struct.device_node*, %struct.atmel_smc_cs_conf*)* @atmel_ebi_xslate_smc_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ebi_xslate_smc_timings(%struct.atmel_ebi_dev* %0, %struct.device_node* %1, %struct.atmel_smc_cs_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_ebi_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.atmel_smc_cs_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.atmel_smc_timing_xlate*, align 8
  store %struct.atmel_ebi_dev* %0, %struct.atmel_ebi_dev** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.atmel_smc_cs_conf* %2, %struct.atmel_smc_cs_conf** %7, align 8
  %16 = load %struct.atmel_ebi_dev*, %struct.atmel_ebi_dev** %5, align 8
  %17 = getelementptr inbounds %struct.atmel_ebi_dev, %struct.atmel_ebi_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_get_rate(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = load i32, i32* %8, align 4
  %24 = udiv i32 %22, %23
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @DIV_ROUND_UP(i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ATMEL_SMC_MODE_TDF_MAX, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %103

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ATMEL_SMC_MODE_TDF_MIN, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ATMEL_SMC_MODE_TDF_MIN, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ATMEL_SMC_MODE_TDF(i32 %46)
  %48 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %49 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %3
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %99, %52
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.atmel_smc_timing_xlate*, %struct.atmel_smc_timing_xlate** @timings_xlate_table, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.atmel_smc_timing_xlate* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %53
  %59 = load %struct.atmel_smc_timing_xlate*, %struct.atmel_smc_timing_xlate** @timings_xlate_table, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.atmel_smc_timing_xlate, %struct.atmel_smc_timing_xlate* %59, i64 %61
  store %struct.atmel_smc_timing_xlate* %62, %struct.atmel_smc_timing_xlate** %15, align 8
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = load %struct.atmel_smc_timing_xlate*, %struct.atmel_smc_timing_xlate** %15, align 8
  %65 = getelementptr inbounds %struct.atmel_smc_timing_xlate, %struct.atmel_smc_timing_xlate* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* %66, i32* %14)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %99

74:                                               ; preds = %70
  br label %102

75:                                               ; preds = %58
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %102

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @DIV_ROUND_UP(i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.atmel_smc_timing_xlate*, %struct.atmel_smc_timing_xlate** %15, align 8
  %86 = getelementptr inbounds %struct.atmel_smc_timing_xlate, %struct.atmel_smc_timing_xlate* %85, i32 0, i32 1
  %87 = load i32 (%struct.atmel_smc_cs_conf.0*, i32, i32)*, i32 (%struct.atmel_smc_cs_conf.0*, i32, i32)** %86, align 8
  %88 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %89 = bitcast %struct.atmel_smc_cs_conf* %88 to %struct.atmel_smc_cs_conf.0*
  %90 = load %struct.atmel_smc_timing_xlate*, %struct.atmel_smc_timing_xlate** %15, align 8
  %91 = getelementptr inbounds %struct.atmel_smc_timing_xlate, %struct.atmel_smc_timing_xlate* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 %87(%struct.atmel_smc_cs_conf.0* %89, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %103

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %53

102:                                              ; preds = %78, %74, %53
  br label %103

103:                                              ; preds = %102, %97, %36
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.atmel_ebi_dev*, %struct.atmel_ebi_dev** %5, align 8
  %108 = getelementptr inbounds %struct.atmel_ebi_dev, %struct.atmel_ebi_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.device_node*, %struct.device_node** %6, align 8
  %113 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %106
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ATMEL_SMC_MODE_TDF(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.atmel_smc_timing_xlate*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
