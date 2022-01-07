; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_hwtstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_hwtstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@SJA1105_HWTS_RX_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to change RX timestamping: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ifreq*)* @sja1105_hwtstamp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_hwtstamp_set(%struct.dsa_switch* %0, i32 %1, %struct.ifreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.sja1105_private*, align 8
  %9 = alloca %struct.hwtstamp_config, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifreq* %2, %struct.ifreq** %7, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 1
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  store %struct.sja1105_private* %14, %struct.sja1105_private** %8, align 8
  %15 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @copy_from_user(%struct.hwtstamp_config* %9, i32 %17, i32 8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %96

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 129, label %26
    i32 128, label %34
  ]

26:                                               ; preds = %23
  %27 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %28 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %36 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %45

42:                                               ; preds = %23
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %96

45:                                               ; preds = %34, %26
  %46 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %49 [
    i32 130, label %48
  ]

48:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %50

49:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %53 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %54 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @test_bit(i32 %52, i32* %55)
  %57 = icmp ne i32 %51, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %60 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %61 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %59, i32* %62)
  %64 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @sja1105_change_rxtstamping(%struct.sja1105_private* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %71 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %96

76:                                               ; preds = %58
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %81 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %82 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %80, i32* %83)
  br label %85

85:                                               ; preds = %79, %76
  br label %86

86:                                               ; preds = %85, %50
  %87 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %88 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @copy_to_user(i32 %89, %struct.hwtstamp_config* %9, i32 8)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92, %69, %42, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sja1105_change_rxtstamping(%struct.sja1105_private*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
