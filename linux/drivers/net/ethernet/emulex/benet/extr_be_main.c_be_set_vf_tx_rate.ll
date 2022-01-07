; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TX-rate setting not allowed when link is down\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"TX-rate must be between 100 and %d Mbps\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"TX-rate must be a multiple of %d Mbps\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"TX-rate setting of %dMbps on VF%d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @be_set_vf_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_tx_rate(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_adapter*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.be_adapter* %17, %struct.be_adapter** %10, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %23 = call i32 @sriov_enabled(%struct.be_adapter* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %118

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %118

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %118

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %92

47:                                               ; preds = %43
  %48 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %49 = call i32 @be_cmd_link_status_query(%struct.be_adapter* %48, i32* %14, i32* %15, i32 0)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %111

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %11, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENETDOWN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %111

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 100
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %61
  %69 = load %struct.device*, %struct.device** %11, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %111

74:                                               ; preds = %64
  %75 = load i32, i32* %14, align 4
  %76 = sdiv i32 %75, 100
  store i32 %76, i32* %12, align 4
  %77 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %78 = call i64 @skyhawk_chip(%struct.be_adapter* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = srem i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %111

91:                                               ; preds = %80, %74
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 @be_cmd_config_qos(%struct.be_adapter* %93, i32 %94, i32 %95, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %111

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  %105 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 4
  store i32 0, i32* %5, align 4
  br label %118

111:                                              ; preds = %101, %85, %68, %56, %52
  %112 = load %struct.device*, %struct.device** %11, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @be_cmd_status(i32 %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %111, %102, %40, %34, %25
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_link_status_query(%struct.be_adapter*, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_config_qos(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
