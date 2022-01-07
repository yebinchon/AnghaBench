; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_davinci_emac_of_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_davinci_emac_of_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_platform_data = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.emac_platform_data*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.emac_priv = type { i32 }
%struct.of_device_id = type { %struct.emac_platform_data* }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMAC_VERSION_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ti,davinci-ctrl-reg-offset\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ti,davinci-ctrl-mod-reg-offset\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ti,davinci-ctrl-ram-offset\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ti,davinci-ctrl-ram-size\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ti,davinci-rmii-en\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ti,davinci-no-bd-ram\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@davinci_emac_of_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.emac_platform_data* (%struct.platform_device*, %struct.emac_priv*)* @davinci_emac_of_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.emac_platform_data* @davinci_emac_of_get_pdata(%struct.platform_device* %0, %struct.emac_priv* %1) #0 {
  %3 = alloca %struct.emac_platform_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.emac_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.emac_platform_data*, align 8
  %9 = alloca %struct.emac_platform_data*, align 8
  %10 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.emac_priv* %1, %struct.emac_priv** %5, align 8
  store %struct.emac_platform_data* null, %struct.emac_platform_data** %9, align 8
  %11 = load i32, i32* @CONFIG_OF, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.emac_platform_data* @dev_get_platdata(%struct.TYPE_4__* %22)
  store %struct.emac_platform_data* %23, %struct.emac_platform_data** %3, align 8
  br label %155

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.emac_platform_data* @devm_kzalloc(%struct.TYPE_4__* %26, i32 56, i32 %27)
  store %struct.emac_platform_data* %28, %struct.emac_platform_data** %9, align 8
  %29 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %30 = icmp ne %struct.emac_platform_data* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store %struct.emac_platform_data* null, %struct.emac_platform_data** %3, align 8
  br label %155

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.device_node*, %struct.device_node** %35, align 8
  store %struct.device_node* %36, %struct.device_node** %6, align 8
  %37 = load i32, i32* @EMAC_VERSION_2, align 4
  %38 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %39 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %41 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @is_valid_ether_addr(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %32
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32* @of_get_mac_address(%struct.device_node* %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @IS_ERR(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %53 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ether_addr_copy(i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %61 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %60, i32 0, i32 10
  %62 = call i32 @of_property_read_u32(%struct.device_node* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %61)
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %65 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %64, i32 0, i32 9
  %66 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %65)
  %67 = load %struct.device_node*, %struct.device_node** %6, align 8
  %68 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %69 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %68, i32 0, i32 8
  %70 = call i32 @of_property_read_u32(%struct.device_node* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %69)
  %71 = load %struct.device_node*, %struct.device_node** %6, align 8
  %72 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %73 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %72, i32 0, i32 7
  %74 = call i32 @of_property_read_u32(%struct.device_node* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %73)
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %77 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %76, i32 0, i32 6
  %78 = call i32 @of_property_read_u8(%struct.device_node* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %77)
  %79 = load %struct.device_node*, %struct.device_node** %6, align 8
  %80 = call i32 @of_property_read_bool(%struct.device_node* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %82 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.device_node*, %struct.device_node** %6, align 8
  %84 = call i32 @of_parse_phandle(%struct.device_node* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %85 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %86 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %88 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %58
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = call i32 @of_phy_is_fixed_link(%struct.device_node* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %97 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %96, i32 0, i32 4
  store i32* null, i32** %97, align 8
  br label %108

98:                                               ; preds = %91
  %99 = load %struct.device_node*, %struct.device_node** %6, align 8
  %100 = call i64 @of_phy_register_fixed_link(%struct.device_node* %99)
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.device_node*, %struct.device_node** %6, align 8
  %104 = call i32 @of_node_get(%struct.device_node* %103)
  %105 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %106 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %58
  %110 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.emac_platform_data*, %struct.emac_platform_data** %112, align 8
  store %struct.emac_platform_data* %113, %struct.emac_platform_data** %8, align 8
  %114 = load %struct.emac_platform_data*, %struct.emac_platform_data** %8, align 8
  %115 = icmp ne %struct.emac_platform_data* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.emac_platform_data*, %struct.emac_platform_data** %8, align 8
  %118 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %121 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.emac_platform_data*, %struct.emac_platform_data** %8, align 8
  %123 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %126 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %116, %109
  %128 = load i32, i32* @davinci_emac_of_match, align 4
  %129 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call %struct.of_device_id* @of_match_device(i32 %128, %struct.TYPE_4__* %130)
  store %struct.of_device_id* %131, %struct.of_device_id** %7, align 8
  %132 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %133 = icmp ne %struct.of_device_id* %132, null
  br i1 %133, label %134, label %153

134:                                              ; preds = %127
  %135 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %136 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %135, i32 0, i32 0
  %137 = load %struct.emac_platform_data*, %struct.emac_platform_data** %136, align 8
  %138 = icmp ne %struct.emac_platform_data* %137, null
  br i1 %138, label %139, label %153

139:                                              ; preds = %134
  %140 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %141 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %140, i32 0, i32 0
  %142 = load %struct.emac_platform_data*, %struct.emac_platform_data** %141, align 8
  store %struct.emac_platform_data* %142, %struct.emac_platform_data** %8, align 8
  %143 = load %struct.emac_platform_data*, %struct.emac_platform_data** %8, align 8
  %144 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %147 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.emac_platform_data*, %struct.emac_platform_data** %8, align 8
  %149 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  %152 = getelementptr inbounds %struct.emac_platform_data, %struct.emac_platform_data* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %139, %134, %127
  %154 = load %struct.emac_platform_data*, %struct.emac_platform_data** %9, align 8
  store %struct.emac_platform_data* %154, %struct.emac_platform_data** %3, align 8
  br label %155

155:                                              ; preds = %153, %31, %20
  %156 = load %struct.emac_platform_data*, %struct.emac_platform_data** %3, align 8
  ret %struct.emac_platform_data* %156
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.emac_platform_data* @dev_get_platdata(%struct.TYPE_4__*) #1

declare dso_local %struct.emac_platform_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u8(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i64 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
