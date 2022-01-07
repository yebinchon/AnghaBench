; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_clocking_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_clocking_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sja1105_xmii_params_entry* }
%struct.sja1105_xmii_params_entry = type { i32*, i32* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@BLK_IDX_XMII_PARAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Invalid interface mode specified: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Clocking setup for port %d failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_clocking_setup_port(%struct.sja1105_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_xmii_params_entry*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %12 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %17 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i64, i64* @BLK_IDX_XMII_PARAMS, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %22, align 8
  store %struct.sja1105_xmii_params_entry* %23, %struct.sja1105_xmii_params_entry** %6, align 8
  %24 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %6, align 8
  %25 = getelementptr inbounds %struct.sja1105_xmii_params_entry, %struct.sja1105_xmii_params_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %6, align 8
  %32 = getelementptr inbounds %struct.sja1105_xmii_params_entry, %struct.sja1105_xmii_params_entry* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %54 [
    i32 130, label %39
    i32 128, label %44
    i32 129, label %49
  ]

39:                                               ; preds = %2
  %40 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sja1105_mii_clocking_setup(%struct.sja1105_private* %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %60

44:                                               ; preds = %2
  %45 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @sja1105_rmii_clocking_setup(%struct.sja1105_private* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %60

49:                                               ; preds = %2
  %50 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @sja1105_rgmii_clocking_setup(%struct.sja1105_private* %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %60

54:                                               ; preds = %2
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %49, %44, %39
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %54
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @sja1105_mii_clocking_setup(%struct.sja1105_private*, i32, i32) #1

declare dso_local i32 @sja1105_rmii_clocking_setup(%struct.sja1105_private*, i32, i32) #1

declare dso_local i32 @sja1105_rgmii_clocking_setup(%struct.sja1105_private*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
