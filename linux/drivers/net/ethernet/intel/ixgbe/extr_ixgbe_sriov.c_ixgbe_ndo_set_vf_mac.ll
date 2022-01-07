; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"setting MAC %pM on VF %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Reload the VF driver to make this change effective.\00", align 1
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"The VF MAC address has been set, but the PF device is not up.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Bring the PF device up before attempting to use the VF device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"The VF MAC address was NOT set due to invalid or duplicate MAC address.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"removing MAC on VF %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Could NOT remove the VF MAC address.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ndo_set_vf_mac(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %131

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @is_valid_ether_addr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %21
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_info(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @ixgbe_set_vf_mac(%struct.ixgbe_adapter* %38, i32 %39, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %25
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @__IXGBE_DOWN, align 4
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 3
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(i32* %61, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @dev_warn(i32* %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %57, %44
  br label %75

69:                                               ; preds = %25
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @dev_warn(i32* %73, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %68
  br label %129

76:                                               ; preds = %21
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @is_zero_ether_addr(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %76
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %82 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @is_zero_ether_addr(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %131

93:                                               ; preds = %80
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_info(i32* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter* %100, i8* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %93
  %107 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %108 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @ETH_ALEN, align 4
  %117 = call i32 @memcpy(i8* %114, i8* %115, i32 %116)
  br label %124

118:                                              ; preds = %93
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i32 @dev_warn(i32* %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %118, %106
  br label %128

125:                                              ; preds = %76
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128, %75
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %92, %18
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @ixgbe_set_vf_mac(%struct.ixgbe_adapter*, i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @is_zero_ether_addr(i8*) #1

declare dso_local i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
