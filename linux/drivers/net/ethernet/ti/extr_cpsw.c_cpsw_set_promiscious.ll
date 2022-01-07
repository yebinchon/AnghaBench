; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_promiscious.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_promiscious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.cpsw_common = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.cpsw_ale* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cpsw_ale = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"promiscuity not disabled as the other interface is still in promiscuity mode\0A\00", align 1
@ALE_BYPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"promiscuity enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"promiscuity disabled\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ALE_PORT_NOLEARN = common dso_local global i32 0, align 4
@ALE_PORT_NO_SA_UPDATE = common dso_local global i32 0, align 4
@ALE_AGEOUT = common dso_local global i32 0, align 4
@ALE_ALL_PORTS = common dso_local global i32 0, align 4
@ALE_P0_UNI_FLOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @cpsw_set_promiscious to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_set_promiscious(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_common*, align 8
  %6 = alloca %struct.cpsw_ale*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %10)
  store %struct.cpsw_common* %11, %struct.cpsw_common** %5, align 8
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %13 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %12, i32 0, i32 2
  %14 = load %struct.cpsw_ale*, %struct.cpsw_ale** %13, align 8
  store %struct.cpsw_ale* %14, %struct.cpsw_ale** %6, align 8
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %24 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %30 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_PROMISC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %50, %47
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %62 = load i32, i32* @ALE_BYPASS, align 4
  %63 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %61, i32 0, i32 %62, i32 1)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %74

67:                                               ; preds = %57
  %68 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %69 = load i32, i32* @ALE_BYPASS, align 4
  %70 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %68, i32 0, i32 %69, i32 0)
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %67, %60
  br label %163

75:                                               ; preds = %2
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %75
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i64, i64* @HZ, align 8
  %81 = add i64 %79, %80
  store i64 %81, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %98, %78
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %85 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %83, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ALE_PORT_NOLEARN, align 4
  %93 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %90, i32 %91, i32 %92, i32 1)
  %94 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @ALE_PORT_NO_SA_UPDATE, align 4
  %97 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %94, i32 %95, i32 %96, i32 1)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %103 = load i32, i32* @ALE_AGEOUT, align 4
  %104 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %102, i32 0, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %113, %101
  %106 = call i32 (...) @cpu_relax()
  %107 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %108 = load i32, i32* @ALE_AGEOUT, align 4
  %109 = call i64 @cpsw_ale_control_get(%struct.cpsw_ale* %107, i32 0, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %118

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @jiffies, align 8
  %116 = call i64 @time_after(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %105, label %118

118:                                              ; preds = %113, %111
  %119 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %120 = load i32, i32* @ALE_AGEOUT, align 4
  %121 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %119, i32 0, i32 %120, i32 1)
  %122 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %123 = load i32, i32* @ALE_ALL_PORTS, align 4
  %124 = call i32 @cpsw_ale_flush_multicast(%struct.cpsw_ale* %122, i32 %123, i32 -1)
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @__hw_addr_ref_unsync_dev(i32* %126, %struct.net_device* %127, i32* null)
  %129 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %130 = load i32, i32* @ALE_P0_UNI_FLOOD, align 4
  %131 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %129, i32 0, i32 %130, i32 1)
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = call i32 @dev_dbg(i32* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %162

135:                                              ; preds = %75
  %136 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %137 = load i32, i32* @ALE_P0_UNI_FLOOD, align 4
  %138 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %136, i32 0, i32 %137, i32 0)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %155, %135
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %142 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %140, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %139
  %147 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @ALE_PORT_NOLEARN, align 4
  %150 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %147, i32 %148, i32 %149, i32 0)
  %151 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @ALE_PORT_NO_SA_UPDATE, align 4
  %154 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %151, i32 %152, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %139

158:                                              ; preds = %139
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = call i32 @dev_dbg(i32* %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %118
  br label %163

163:                                              ; preds = %162, %74
  ret void
}

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpsw_ale_control_set(%struct.cpsw_ale*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @cpsw_ale_control_get(%struct.cpsw_ale*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpsw_ale_flush_multicast(%struct.cpsw_ale*, i32, i32) #1

declare dso_local i32 @__hw_addr_ref_unsync_dev(i32*, %struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
