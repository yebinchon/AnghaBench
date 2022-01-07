; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rcar_drif_sdr = type { i32, i32, %struct.rcar_drif**, i32* }
%struct.rcar_drif = type { i32, %struct.rcar_drif_sdr*, i32, i32, i32, %struct.platform_device* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"clk get failed (%d)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_drif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_drif_sdr*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.rcar_drif*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(i32* %10, i32 40, i32 %11)
  %13 = bitcast i8* %12 to %struct.rcar_drif*
  store %struct.rcar_drif* %13, %struct.rcar_drif** %6, align 8
  %14 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %15 = icmp ne %struct.rcar_drif* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %145

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %22 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %21, i32 0, i32 5
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @devm_clk_get(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %27 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %29 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %35 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %145

43:                                               ; preds = %19
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %45, i32 0)
  store %struct.resource* %46, %struct.resource** %7, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.resource*, %struct.resource** %7, align 8
  %50 = call i32 @devm_ioremap_resource(i32* %48, %struct.resource* %49)
  %51 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %52 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %54 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %60 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %145

63:                                               ; preds = %43
  %64 = load %struct.resource*, %struct.resource** %7, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %68 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.rcar_drif* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call %struct.device_node* @rcar_drif_bond_enabled(%struct.platform_device* %72)
  store %struct.device_node* %73, %struct.device_node** %5, align 8
  %74 = load %struct.device_node*, %struct.device_node** %5, align 8
  %75 = icmp ne %struct.device_node* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %63
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = call i32 @rcar_drif_primary_bond(%struct.platform_device* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %82 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  store i32 0, i32* %2, align 4
  br label %145

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @devm_kzalloc(i32* %88, i32 24, i32 %89)
  %91 = bitcast i8* %90 to %struct.rcar_drif_sdr*
  store %struct.rcar_drif_sdr* %91, %struct.rcar_drif_sdr** %4, align 8
  %92 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %93 = icmp ne %struct.rcar_drif_sdr* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load %struct.device_node*, %struct.device_node** %5, align 8
  %96 = call i32 @of_node_put(%struct.device_node* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %145

99:                                               ; preds = %86
  %100 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %101 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %102 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %101, i32 0, i32 1
  store %struct.rcar_drif_sdr* %100, %struct.rcar_drif_sdr** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %106 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %108 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %109 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %108, i32 0, i32 2
  %110 = load %struct.rcar_drif**, %struct.rcar_drif*** %109, align 8
  %111 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %112 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.rcar_drif*, %struct.rcar_drif** %110, i64 %114
  store %struct.rcar_drif* %107, %struct.rcar_drif** %115, align 8
  %116 = load %struct.rcar_drif*, %struct.rcar_drif** %6, align 8
  %117 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = call i32 @BIT(i64 %119)
  %121 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %122 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = icmp ne %struct.device_node* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %99
  %126 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %127 = load %struct.device_node*, %struct.device_node** %5, align 8
  %128 = call i32 @rcar_drif_bond_available(%struct.rcar_drif_sdr* %126, %struct.device_node* %127)
  store i32 %128, i32* %8, align 4
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i32 @of_node_put(%struct.device_node* %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %145

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %99
  %137 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %138 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @hweight_long(i32 %139)
  %141 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %142 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %144 = call i32 @rcar_drif_sdr_probe(%struct.rcar_drif_sdr* %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %136, %133, %94, %80, %58, %33, %16
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_drif*) #1

declare dso_local %struct.device_node* @rcar_drif_bond_enabled(%struct.platform_device*) #1

declare dso_local i32 @rcar_drif_primary_bond(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rcar_drif_bond_available(%struct.rcar_drif_sdr*, %struct.device_node*) #1

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @rcar_drif_sdr_probe(%struct.rcar_drif_sdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
