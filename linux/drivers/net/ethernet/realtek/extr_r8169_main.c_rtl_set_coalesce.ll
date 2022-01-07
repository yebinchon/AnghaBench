; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.rtl8169_private = type { i32 }
%struct.rtl_coalesce_scale = type { i32* }
%struct.anon = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RTL_COALESCE_FRAME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL_COALESCE_SHIFT = common dso_local global i32 0, align 4
@IntrMitigate = common dso_local global i32 0, align 4
@INTT_MASK = common dso_local global i32 0, align 4
@CPlusCmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @rtl_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca %struct.rtl_coalesce_scale*, align 8
  %8 = alloca [2 x %struct.anon], align 16
  %9 = alloca %struct.anon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %14)
  store %struct.rtl8169_private* %15, %struct.rtl8169_private** %6, align 8
  %16 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 1
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 8
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %8, i64 0, i64 0
  store %struct.anon* %34, %struct.anon** %9, align 8
  store i32 0, i32* %10, align 4
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %36 = call i64 @rtl_is_8125(%struct.rtl8169_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %149

41:                                               ; preds = %2
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.anon*, %struct.anon** %9, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i64 0
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.anon*, %struct.anon** %9, align 8
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i64 1
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max(i32 %46, i32 %50)
  %52 = mul nsw i32 %51, 1000
  %53 = call %struct.rtl_coalesce_scale* @rtl_coalesce_choose_scale(%struct.net_device* %42, i32 %52, i32* %11)
  store %struct.rtl_coalesce_scale* %53, %struct.rtl_coalesce_scale** %7, align 8
  %54 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %7, align 8
  %55 = call i64 @IS_ERR(%struct.rtl_coalesce_scale* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %7, align 8
  %59 = call i32 @PTR_ERR(%struct.rtl_coalesce_scale* %58)
  store i32 %59, i32* %3, align 4
  br label %149

60:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %115, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %120

64:                                               ; preds = %61
  %65 = load %struct.anon*, %struct.anon** %9, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.anon*, %struct.anon** %9, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.anon*, %struct.anon** %9, align 8
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 1000
  %77 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %7, align 8
  %78 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %76, %83
  store i32 %84, i32* %13, align 4
  %85 = load %struct.anon*, %struct.anon** %9, align 8
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RTL_COALESCE_FRAME_MAX, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %72
  %91 = load %struct.anon*, %struct.anon** %9, align 8
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %93, 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %72
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %149

99:                                               ; preds = %90
  %100 = load i32, i32* @RTL_COALESCE_SHIFT, align 4
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* @RTL_COALESCE_SHIFT, align 4
  %107 = load i32, i32* %10, align 4
  %108 = shl i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load %struct.anon*, %struct.anon** %9, align 8
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 2
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = load %struct.anon*, %struct.anon** %9, align 8
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %118, i32 1
  store %struct.anon* %119, %struct.anon** %9, align 8
  br label %61

120:                                              ; preds = %61
  %121 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %122 = call i32 @rtl_lock_work(%struct.rtl8169_private* %121)
  %123 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %124 = load i32, i32* @IntrMitigate, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @swab16(i32 %125)
  %127 = call i32 @RTL_W16(%struct.rtl8169_private* %123, i32 %124, i32 %126)
  %128 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %129 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @INTT_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %137 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %139 = load i32, i32* @CPlusCmd, align 4
  %140 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %141 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @RTL_W16(%struct.rtl8169_private* %138, i32 %139, i32 %142)
  %144 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %145 = load i32, i32* @CPlusCmd, align 4
  %146 = call i32 @RTL_R16(%struct.rtl8169_private* %144, i32 %145)
  %147 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %148 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %120, %96, %57, %38
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @rtl_is_8125(%struct.rtl8169_private*) #1

declare dso_local %struct.rtl_coalesce_scale* @rtl_coalesce_choose_scale(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtl_coalesce_scale*) #1

declare dso_local i32 @PTR_ERR(%struct.rtl_coalesce_scale*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W16(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @RTL_R16(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
