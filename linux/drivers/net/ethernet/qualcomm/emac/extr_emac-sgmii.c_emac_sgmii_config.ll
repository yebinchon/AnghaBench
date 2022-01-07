; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.emac_adapter = type { %struct.emac_sgmii }
%struct.emac_sgmii = type { i32, i8*, i8*, %struct.sgmii_ops* }
%struct.sgmii_ops = type { i32 }
%struct.resource = type { i32 }
%struct.device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.device_node = type { i32 }

@emac_sgmii_acpi_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot find internal phy node\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"internal-phy\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"missing internal-phy property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"invalid internal-phy property\0A\00", align 1
@emac_sgmii_dt_match = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"unrecognized internal phy node\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_sgmii_config(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.emac_sgmii*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.emac_adapter* %1, %struct.emac_adapter** %5, align 8
  store %struct.platform_device* null, %struct.platform_device** %6, align 8
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %13, i32 0, i32 0
  store %struct.emac_sgmii* %14, %struct.emac_sgmii** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i64 @has_acpi_companion(%struct.TYPE_7__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %23 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %22, i32 0, i32 3
  %24 = load i32, i32* @emac_sgmii_acpi_match, align 4
  %25 = call %struct.device* @device_find_child(%struct.TYPE_7__* %21, %struct.sgmii_ops** %23, i32 %24)
  store %struct.device* %25, %struct.device** %10, align 8
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %172

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = call %struct.platform_device* @to_platform_device(%struct.device* %33)
  store %struct.platform_device* %34, %struct.platform_device** %6, align 8
  br label %82

35:                                               ; preds = %2
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.device_node* @of_parse_phandle(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %40, %struct.device_node** %12, align 8
  %41 = load %struct.device_node*, %struct.device_node** %12, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %172

49:                                               ; preds = %35
  %50 = load %struct.device_node*, %struct.device_node** %12, align 8
  %51 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %50)
  store %struct.platform_device* %51, %struct.platform_device** %6, align 8
  %52 = load %struct.device_node*, %struct.device_node** %12, align 8
  %53 = call i32 @of_node_put(%struct.device_node* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %55 = icmp ne %struct.platform_device* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %172

62:                                               ; preds = %49
  %63 = load i32, i32* @emac_sgmii_dt_match, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call %struct.of_device_id* @of_match_device(i32 %63, %struct.TYPE_7__* %65)
  store %struct.of_device_id* %66, %struct.of_device_id** %11, align 8
  %67 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %68 = icmp ne %struct.of_device_id* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @dev_err(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %167

75:                                               ; preds = %62
  %76 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %77 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.sgmii_ops*
  %80 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %81 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %80, i32 0, i32 3
  store %struct.sgmii_ops* %79, %struct.sgmii_ops** %81, align 8
  br label %82

82:                                               ; preds = %75, %32
  %83 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %84 = load i32, i32* @IORESOURCE_MEM, align 4
  %85 = call %struct.resource* @platform_get_resource(%struct.platform_device* %83, i32 %84, i32 0)
  store %struct.resource* %85, %struct.resource** %8, align 8
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = icmp ne %struct.resource* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %167

91:                                               ; preds = %82
  %92 = load %struct.resource*, %struct.resource** %8, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.resource*, %struct.resource** %8, align 8
  %96 = call i32 @resource_size(%struct.resource* %95)
  %97 = call i8* @ioremap(i32 %94, i32 %96)
  %98 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %99 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %101 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %91
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %167

107:                                              ; preds = %91
  %108 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %109 = load i32, i32* @IORESOURCE_MEM, align 4
  %110 = call %struct.resource* @platform_get_resource(%struct.platform_device* %108, i32 %109, i32 1)
  store %struct.resource* %110, %struct.resource** %8, align 8
  %111 = load %struct.resource*, %struct.resource** %8, align 8
  %112 = icmp ne %struct.resource* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.resource*, %struct.resource** %8, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.resource*, %struct.resource** %8, align 8
  %118 = call i32 @resource_size(%struct.resource* %117)
  %119 = call i8* @ioremap(i32 %116, i32 %118)
  %120 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %121 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %123 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %113
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  br label %162

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %107
  %131 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %132 = call i32 @emac_sgmii_init(%struct.emac_adapter* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %151

136:                                              ; preds = %130
  %137 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %138 = call i32 @emac_sgmii_link_init(%struct.emac_adapter* %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %140 = call i32 @platform_get_irq(%struct.platform_device* %139, i32 0)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %146 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %136
  %148 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @put_device(%struct.TYPE_7__* %149)
  store i32 0, i32* %3, align 4
  br label %172

151:                                              ; preds = %135
  %152 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %153 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %158 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @iounmap(i8* %159)
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161, %126
  %163 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %164 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @iounmap(i8* %165)
  br label %167

167:                                              ; preds = %162, %104, %88, %69
  %168 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call i32 @put_device(%struct.TYPE_7__* %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %167, %147, %56, %43, %28
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @has_acpi_companion(%struct.TYPE_7__*) #1

declare dso_local %struct.device* @device_find_child(%struct.TYPE_7__*, %struct.sgmii_ops**, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @emac_sgmii_init(%struct.emac_adapter*) #1

declare dso_local i32 @emac_sgmii_link_init(%struct.emac_adapter*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
