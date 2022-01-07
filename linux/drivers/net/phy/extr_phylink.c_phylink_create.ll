; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, %struct.TYPE_4__, i32, i32, i32, %struct.phylink_mac_ops*, i32, i64, %struct.TYPE_3__, i32, i32, %struct.phylink_config*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.phylink_config = type { i64, i32 }
%struct.fwnode_handle = type { i32 }
%struct.phylink_mac_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phylink_resolve = common dso_local global i32 0, align 4
@PHYLINK_NETDEV = common dso_local global i64 0, align 8
@PHYLINK_DEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MOCA = common dso_local global i64 0, align 8
@PORT_BNC = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@MLO_PAUSE_AN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@PHYLINK_DISABLE_STOPPED = common dso_local global i32 0, align 4
@phylink_fixed_poll = common dso_local global i32 0, align 4
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@MLO_AN_FIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phylink* @phylink_create(%struct.phylink_config* %0, %struct.fwnode_handle* %1, i64 %2, %struct.phylink_mac_ops* %3) #0 {
  %5 = alloca %struct.phylink*, align 8
  %6 = alloca %struct.phylink_config*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.phylink_mac_ops*, align 8
  %10 = alloca %struct.phylink*, align 8
  %11 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %6, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.phylink_mac_ops* %3, %struct.phylink_mac_ops** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.phylink* @kzalloc(i32 112, i32 %12)
  store %struct.phylink* %13, %struct.phylink** %10, align 8
  %14 = load %struct.phylink*, %struct.phylink** %10, align 8
  %15 = icmp ne %struct.phylink* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.phylink* @ERR_PTR(i32 %18)
  store %struct.phylink* %19, %struct.phylink** %5, align 8
  br label %173

20:                                               ; preds = %4
  %21 = load %struct.phylink*, %struct.phylink** %10, align 8
  %22 = getelementptr inbounds %struct.phylink, %struct.phylink* %21, i32 0, i32 13
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.phylink*, %struct.phylink** %10, align 8
  %25 = getelementptr inbounds %struct.phylink, %struct.phylink* %24, i32 0, i32 12
  %26 = load i32, i32* @phylink_resolve, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.phylink_config*, %struct.phylink_config** %6, align 8
  %29 = load %struct.phylink*, %struct.phylink** %10, align 8
  %30 = getelementptr inbounds %struct.phylink, %struct.phylink* %29, i32 0, i32 11
  store %struct.phylink_config* %28, %struct.phylink_config** %30, align 8
  %31 = load %struct.phylink_config*, %struct.phylink_config** %6, align 8
  %32 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PHYLINK_NETDEV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %20
  %37 = load %struct.phylink_config*, %struct.phylink_config** %6, align 8
  %38 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @to_net_dev(i32 %39)
  %41 = load %struct.phylink*, %struct.phylink** %10, align 8
  %42 = getelementptr inbounds %struct.phylink, %struct.phylink* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  br label %62

43:                                               ; preds = %20
  %44 = load %struct.phylink_config*, %struct.phylink_config** %6, align 8
  %45 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PHYLINK_DEV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.phylink_config*, %struct.phylink_config** %6, align 8
  %51 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.phylink*, %struct.phylink** %10, align 8
  %54 = getelementptr inbounds %struct.phylink, %struct.phylink* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  br label %61

55:                                               ; preds = %43
  %56 = load %struct.phylink*, %struct.phylink** %10, align 8
  %57 = call i32 @kfree(%struct.phylink* %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.phylink* @ERR_PTR(i32 %59)
  store %struct.phylink* %60, %struct.phylink** %5, align 8
  br label %173

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.phylink*, %struct.phylink** %10, align 8
  %65 = getelementptr inbounds %struct.phylink, %struct.phylink* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.phylink*, %struct.phylink** %10, align 8
  %69 = getelementptr inbounds %struct.phylink, %struct.phylink* %68, i32 0, i32 7
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @PHY_INTERFACE_MODE_MOCA, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i32, i32* @PORT_BNC, align 4
  %75 = load %struct.phylink*, %struct.phylink** %10, align 8
  %76 = getelementptr inbounds %struct.phylink, %struct.phylink* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  br label %81

77:                                               ; preds = %62
  %78 = load i32, i32* @PORT_MII, align 4
  %79 = load %struct.phylink*, %struct.phylink** %10, align 8
  %80 = getelementptr inbounds %struct.phylink, %struct.phylink* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.phylink*, %struct.phylink** %10, align 8
  %84 = getelementptr inbounds %struct.phylink, %struct.phylink* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  store i64 %82, i64* %85, align 8
  %86 = load i32, i32* @MLO_PAUSE_AN, align 4
  %87 = load %struct.phylink*, %struct.phylink** %10, align 8
  %88 = getelementptr inbounds %struct.phylink, %struct.phylink* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @SPEED_UNKNOWN, align 4
  %91 = load %struct.phylink*, %struct.phylink** %10, align 8
  %92 = getelementptr inbounds %struct.phylink, %struct.phylink* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %95 = load %struct.phylink*, %struct.phylink** %10, align 8
  %96 = getelementptr inbounds %struct.phylink, %struct.phylink* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.phylink*, %struct.phylink** %10, align 8
  %99 = getelementptr inbounds %struct.phylink, %struct.phylink* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.phylink_mac_ops*, %struct.phylink_mac_ops** %9, align 8
  %102 = load %struct.phylink*, %struct.phylink** %10, align 8
  %103 = getelementptr inbounds %struct.phylink, %struct.phylink* %102, i32 0, i32 5
  store %struct.phylink_mac_ops* %101, %struct.phylink_mac_ops** %103, align 8
  %104 = load i32, i32* @PHYLINK_DISABLE_STOPPED, align 4
  %105 = load %struct.phylink*, %struct.phylink** %10, align 8
  %106 = getelementptr inbounds %struct.phylink, %struct.phylink* %105, i32 0, i32 4
  %107 = call i32 @__set_bit(i32 %104, i32* %106)
  %108 = load %struct.phylink*, %struct.phylink** %10, align 8
  %109 = getelementptr inbounds %struct.phylink, %struct.phylink* %108, i32 0, i32 3
  %110 = load i32, i32* @phylink_fixed_poll, align 4
  %111 = call i32 @timer_setup(i32* %109, i32 %110, i32 0)
  %112 = load %struct.phylink*, %struct.phylink** %10, align 8
  %113 = getelementptr inbounds %struct.phylink, %struct.phylink* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %116 = call i32 @bitmap_fill(i32 %114, i32 %115)
  %117 = load %struct.phylink*, %struct.phylink** %10, align 8
  %118 = getelementptr inbounds %struct.phylink, %struct.phylink* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.phylink*, %struct.phylink** %10, align 8
  %122 = getelementptr inbounds %struct.phylink, %struct.phylink* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @linkmode_copy(i32 %120, i32 %123)
  %125 = load %struct.phylink*, %struct.phylink** %10, align 8
  %126 = load %struct.phylink*, %struct.phylink** %10, align 8
  %127 = getelementptr inbounds %struct.phylink, %struct.phylink* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.phylink*, %struct.phylink** %10, align 8
  %130 = getelementptr inbounds %struct.phylink, %struct.phylink* %129, i32 0, i32 1
  %131 = call i32 @phylink_validate(%struct.phylink* %125, i32 %128, %struct.TYPE_4__* %130)
  %132 = load %struct.phylink*, %struct.phylink** %10, align 8
  %133 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %134 = call i32 @phylink_parse_mode(%struct.phylink* %132, %struct.fwnode_handle* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %81
  %138 = load %struct.phylink*, %struct.phylink** %10, align 8
  %139 = call i32 @kfree(%struct.phylink* %138)
  %140 = load i32, i32* %11, align 4
  %141 = call %struct.phylink* @ERR_PTR(i32 %140)
  store %struct.phylink* %141, %struct.phylink** %5, align 8
  br label %173

142:                                              ; preds = %81
  %143 = load %struct.phylink*, %struct.phylink** %10, align 8
  %144 = getelementptr inbounds %struct.phylink, %struct.phylink* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MLO_AN_FIXED, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %142
  %149 = load %struct.phylink*, %struct.phylink** %10, align 8
  %150 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %151 = call i32 @phylink_parse_fixedlink(%struct.phylink* %149, %struct.fwnode_handle* %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.phylink*, %struct.phylink** %10, align 8
  %156 = call i32 @kfree(%struct.phylink* %155)
  %157 = load i32, i32* %11, align 4
  %158 = call %struct.phylink* @ERR_PTR(i32 %157)
  store %struct.phylink* %158, %struct.phylink** %5, align 8
  br label %173

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %142
  %161 = load %struct.phylink*, %struct.phylink** %10, align 8
  %162 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %163 = call i32 @phylink_register_sfp(%struct.phylink* %161, %struct.fwnode_handle* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.phylink*, %struct.phylink** %10, align 8
  %168 = call i32 @kfree(%struct.phylink* %167)
  %169 = load i32, i32* %11, align 4
  %170 = call %struct.phylink* @ERR_PTR(i32 %169)
  store %struct.phylink* %170, %struct.phylink** %5, align 8
  br label %173

171:                                              ; preds = %160
  %172 = load %struct.phylink*, %struct.phylink** %10, align 8
  store %struct.phylink* %172, %struct.phylink** %5, align 8
  br label %173

173:                                              ; preds = %171, %166, %154, %137, %55, %16
  %174 = load %struct.phylink*, %struct.phylink** %5, align 8
  ret %struct.phylink* %174
}

declare dso_local %struct.phylink* @kzalloc(i32, i32) #1

declare dso_local %struct.phylink* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @to_net_dev(i32) #1

declare dso_local i32 @kfree(%struct.phylink*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @phylink_validate(%struct.phylink*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @phylink_parse_mode(%struct.phylink*, %struct.fwnode_handle*) #1

declare dso_local i32 @phylink_parse_fixedlink(%struct.phylink*, %struct.fwnode_handle*) #1

declare dso_local i32 @phylink_register_sfp(%struct.phylink*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
