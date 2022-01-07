; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_platform_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_platform_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i8*, i32, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get tx_irq\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get rx_irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tx-enable\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to get tx-enable state\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"tx-rings-empty\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to get tx-rings-empty state\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"qcom,mmio\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"failed to acquire qcom,mmio reference\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"qcom,pronto\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ccu\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to map ccu memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"dxe\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"failed to map dxe memory\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"iris\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"qcom,wcn3620\00", align 1
@RF_IRIS_WCN3620 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.platform_device*)* @wcn36xx_platform_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_platform_get_resources(%struct.wcn36xx* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = load i32, i32* @IORESOURCE_IRQ, align 4
  %13 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %11, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %13, %struct.resource** %8, align 8
  %14 = load %struct.resource*, %struct.resource** %8, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %160

20:                                               ; preds = %2
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %25 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = load i32, i32* @IORESOURCE_IRQ, align 4
  %28 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %28, %struct.resource** %8, align 8
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %160

35:                                               ; preds = %20
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %40 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %44 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %43, i32 0, i32 7
  %45 = call i8* @qcom_smem_state_get(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %44)
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %49 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %35
  %54 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %56 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %3, align 4
  br label %160

59:                                               ; preds = %35
  %60 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %63 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %62, i32 0, i32 5
  %64 = call i8* @qcom_smem_state_get(%struct.TYPE_4__* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %63)
  %65 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %66 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %68 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %75 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %3, align 4
  br label %160

78:                                               ; preds = %59
  %79 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.device_node* @of_parse_phandle(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.device_node* %85, %struct.device_node** %6, align 8
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = icmp ne %struct.device_node* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %78
  %89 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %160

92:                                               ; preds = %78
  %93 = load %struct.device_node*, %struct.device_node** %6, align 8
  %94 = call i64 @of_device_is_compatible(%struct.device_node* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %100 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.device_node*, %struct.device_node** %6, align 8
  %102 = call i32 @of_property_match_string(%struct.device_node* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 %102, i32* %9, align 4
  %103 = load %struct.device_node*, %struct.device_node** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i8* @of_iomap(%struct.device_node* %103, i32 %104)
  %106 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %107 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %109 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %92
  %113 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %156

116:                                              ; preds = %92
  %117 = load %struct.device_node*, %struct.device_node** %6, align 8
  %118 = call i32 @of_property_match_string(%struct.device_node* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i32 %118, i32* %9, align 4
  %119 = load %struct.device_node*, %struct.device_node** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i8* @of_iomap(%struct.device_node* %119, i32 %120)
  %122 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %123 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %125 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %116
  %129 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %151

132:                                              ; preds = %116
  %133 = load %struct.device_node*, %struct.device_node** %6, align 8
  %134 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  store %struct.device_node* %134, %struct.device_node** %7, align 8
  %135 = load %struct.device_node*, %struct.device_node** %7, align 8
  %136 = icmp ne %struct.device_node* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.device_node*, %struct.device_node** %7, align 8
  %139 = call i64 @of_device_is_compatible(%struct.device_node* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* @RF_IRIS_WCN3620, align 4
  %143 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %144 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.device_node*, %struct.device_node** %7, align 8
  %147 = call i32 @of_node_put(%struct.device_node* %146)
  br label %148

148:                                              ; preds = %145, %132
  %149 = load %struct.device_node*, %struct.device_node** %6, align 8
  %150 = call i32 @of_node_put(%struct.device_node* %149)
  store i32 0, i32* %3, align 4
  br label %160

151:                                              ; preds = %128
  %152 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %153 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @iounmap(i8* %154)
  br label %156

156:                                              ; preds = %151, %112
  %157 = load %struct.device_node*, %struct.device_node** %6, align 8
  %158 = call i32 @of_node_put(%struct.device_node* %157)
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %148, %88, %72, %53, %31, %16
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i8* @qcom_smem_state_get(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i8* @of_iomap(%struct.device_node*, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
