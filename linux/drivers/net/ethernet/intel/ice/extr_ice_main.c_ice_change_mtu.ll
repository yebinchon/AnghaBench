; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"MTU is already %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"new MTU invalid. min_mtu is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"new MTU invalid. max_mtu is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"can't change MTU. Device is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"change MTU if_up err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"changed MTU to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ice_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca %struct.ice_pf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ice_netdev_priv* %12, %struct.ice_netdev_priv** %6, align 8
  %13 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %14, align 8
  store %struct.ice_vsi* %15, %struct.ice_vsi** %7, align 8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 1
  %18 = load %struct.ice_pf*, %struct.ice_pf** %17, align 8
  store %struct.ice_pf* %18, %struct.ice_pf** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_warn(%struct.net_device* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %118

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %118

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %118

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %72, %59
  %61 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %62 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ice_is_reset_in_progress(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %71

70:                                               ; preds = %60
  br label %75

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 100
  br i1 %74, label %60, label %75

75:                                               ; preds = %72, %70
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 100
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %118

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @__ICE_DOWN, align 4
  %88 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %89 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @test_and_set_bit(i32 %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %83
  %94 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %95 = call i32 @ice_down(%struct.ice_vsi* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %118

103:                                              ; preds = %93
  %104 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %105 = call i32 @ice_up(%struct.ice_vsi* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %118

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %83
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @netdev_info(%struct.net_device* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %108, %98, %78, %50, %36, %24
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @ice_is_reset_in_progress(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @ice_down(%struct.ice_vsi*) #1

declare dso_local i32 @ice_up(%struct.ice_vsi*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
