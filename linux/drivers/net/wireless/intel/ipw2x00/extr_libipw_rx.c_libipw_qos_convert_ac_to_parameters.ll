; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_qos_convert_ac_to_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_qos_convert_ac_to_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_qos_parameter_info = type { %struct.libipw_qos_ac_parameter* }
%struct.libipw_qos_ac_parameter = type { i32, i32, i32 }
%struct.libipw_qos_parameters = type { i32*, i32*, i8**, i8**, i8** }

@QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_qos_parameter_info*, %struct.libipw_qos_parameters*)* @libipw_qos_convert_ac_to_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_qos_convert_ac_to_parameters(%struct.libipw_qos_parameter_info* %0, %struct.libipw_qos_parameters* %1) #0 {
  %3 = alloca %struct.libipw_qos_parameter_info*, align 8
  %4 = alloca %struct.libipw_qos_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.libipw_qos_ac_parameter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.libipw_qos_parameter_info* %0, %struct.libipw_qos_parameter_info** %3, align 8
  store %struct.libipw_qos_parameters* %1, %struct.libipw_qos_parameters** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %105, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @QOS_QUEUE_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %108

15:                                               ; preds = %11
  %16 = load %struct.libipw_qos_parameter_info*, %struct.libipw_qos_parameter_info** %3, align 8
  %17 = getelementptr inbounds %struct.libipw_qos_parameter_info, %struct.libipw_qos_parameter_info* %16, i32 0, i32 0
  %18 = load %struct.libipw_qos_ac_parameter*, %struct.libipw_qos_ac_parameter** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.libipw_qos_ac_parameter, %struct.libipw_qos_ac_parameter* %18, i64 %20
  store %struct.libipw_qos_ac_parameter* %21, %struct.libipw_qos_ac_parameter** %7, align 8
  %22 = load %struct.libipw_qos_ac_parameter*, %struct.libipw_qos_ac_parameter** %7, align 8
  %23 = getelementptr inbounds %struct.libipw_qos_ac_parameter, %struct.libipw_qos_ac_parameter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %27 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %33 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 2
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 2
  %42 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, %41
  store i32 %49, i32* %47, align 4
  %50 = load %struct.libipw_qos_ac_parameter*, %struct.libipw_qos_ac_parameter** %7, align 8
  %51 = getelementptr inbounds %struct.libipw_qos_ac_parameter, %struct.libipw_qos_ac_parameter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %59 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %58, i32 0, i32 4
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load %struct.libipw_qos_ac_parameter*, %struct.libipw_qos_ac_parameter** %7, align 8
  %65 = getelementptr inbounds %struct.libipw_qos_ac_parameter, %struct.libipw_qos_ac_parameter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 240
  %68 = ashr i32 %67, 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %74 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %73, i32 0, i32 3
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %72, i8** %78, align 8
  %79 = load %struct.libipw_qos_ac_parameter*, %struct.libipw_qos_ac_parameter** %7, align 8
  %80 = getelementptr inbounds %struct.libipw_qos_ac_parameter, %struct.libipw_qos_ac_parameter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 16
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %87 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load %struct.libipw_qos_ac_parameter*, %struct.libipw_qos_ac_parameter** %7, align 8
  %93 = getelementptr inbounds %struct.libipw_qos_ac_parameter, %struct.libipw_qos_ac_parameter* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = mul nsw i32 %95, 32
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.libipw_qos_parameters*, %struct.libipw_qos_parameters** %4, align 8
  %100 = getelementptr inbounds %struct.libipw_qos_parameters, %struct.libipw_qos_parameters* %99, i32 0, i32 2
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8* %98, i8** %104, align 8
  br label %105

105:                                              ; preds = %15
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %11

108:                                              ; preds = %11
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
