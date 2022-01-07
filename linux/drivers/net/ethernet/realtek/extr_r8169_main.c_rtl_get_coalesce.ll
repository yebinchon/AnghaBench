; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.rtl8169_private = type { i64 }
%struct.rtl_coalesce_info = type { %struct.rtl_coalesce_scale* }
%struct.rtl_coalesce_scale = type { i32* }
%struct.anon = type { i32*, i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@INTT_MASK = common dso_local global i64 0, align 8
@IntrMitigate = common dso_local global i32 0, align 4
@RTL_COALESCE_MASK = common dso_local global i32 0, align 4
@RTL_COALESCE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @rtl_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca %struct.rtl_coalesce_info*, align 8
  %8 = alloca %struct.rtl_coalesce_scale*, align 8
  %9 = alloca [2 x %struct.anon], align 16
  %10 = alloca %struct.anon*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %13)
  store %struct.rtl8169_private* %14, %struct.rtl8169_private** %6, align 8
  %15 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %9, i64 0, i64 0
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %17, i32 0, i32 3
  store i32* %18, i32** %16, align 16
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 2
  store i32* %21, i32** %19, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 1
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 1
  store i32* %25, i32** %23, align 16
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  store i32* %28, i32** %26, align 8
  %29 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %9, i64 0, i64 0
  store %struct.anon* %29, %struct.anon** %10, align 8
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %31 = call i64 @rtl_is_8125(%struct.rtl8169_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %131

36:                                               ; preds = %2
  %37 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %38 = call i32 @memset(%struct.ethtool_coalesce* %37, i32 0, i32 16)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call %struct.rtl_coalesce_info* @rtl_coalesce_info(%struct.net_device* %39)
  store %struct.rtl_coalesce_info* %40, %struct.rtl_coalesce_info** %7, align 8
  %41 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %7, align 8
  %42 = call i64 @IS_ERR(%struct.rtl_coalesce_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %7, align 8
  %46 = call i32 @PTR_ERR(%struct.rtl_coalesce_info* %45)
  store i32 %46, i32* %3, align 4
  br label %131

47:                                               ; preds = %36
  %48 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %7, align 8
  %49 = getelementptr inbounds %struct.rtl_coalesce_info, %struct.rtl_coalesce_info* %48, i32 0, i32 0
  %50 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %49, align 8
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %52 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INTT_MASK, align 8
  %55 = and i64 %53, %54
  %56 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %50, i64 %55
  store %struct.rtl_coalesce_scale* %56, %struct.rtl_coalesce_scale** %8, align 8
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %58 = load i32, i32* @IntrMitigate, align 4
  %59 = call i32 @RTL_R16(%struct.rtl8169_private* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %80, %47
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @RTL_COALESCE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = shl i32 %66, 2
  %68 = load %struct.anon*, %struct.anon** %10, align 8
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @RTL_COALESCE_SHIFT, align 4
  %72 = load i32, i32* %12, align 4
  %73 = ashr i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @RTL_COALESCE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.anon*, %struct.anon** %10, align 8
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* @RTL_COALESCE_SHIFT, align 4
  %82 = load i32, i32* %12, align 4
  %83 = ashr i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load %struct.anon*, %struct.anon** %10, align 8
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 1
  store %struct.anon* %85, %struct.anon** %10, align 8
  br label %60

86:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %127, %86
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %130

90:                                               ; preds = %87
  %91 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %9, i64 0, i64 0
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %91, i64 %93
  store %struct.anon* %94, %struct.anon** %10, align 8
  %95 = load %struct.anon*, %struct.anon** %10, align 8
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %8, align 8
  %100 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %98, %105
  %107 = sdiv i32 %106, 1000
  %108 = load %struct.anon*, %struct.anon** %10, align 8
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  store i32 %107, i32* %110, align 4
  %111 = load %struct.anon*, %struct.anon** %10, align 8
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %90
  %117 = load %struct.anon*, %struct.anon** %10, align 8
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = load %struct.anon*, %struct.anon** %10, align 8
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %116, %90
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %87

130:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %44, %33
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @rtl_is_8125(%struct.rtl8169_private*) #1

declare dso_local i32 @memset(%struct.ethtool_coalesce*, i32, i32) #1

declare dso_local %struct.rtl_coalesce_info* @rtl_coalesce_info(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.rtl_coalesce_info*) #1

declare dso_local i32 @PTR_ERR(%struct.rtl_coalesce_info*) #1

declare dso_local i32 @RTL_R16(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
