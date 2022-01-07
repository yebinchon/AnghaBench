; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mcp_plat_data = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.mcp_sa11x0 = type { i32, i32, i8*, i8* }
%struct.mcp = type { i32, i32, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@mcp_sa11x0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcp_sa11x0_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_sa11x0_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mcp_plat_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.mcp_sa11x0*, align 8
  %8 = alloca %struct.mcp*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.mcp_plat_data* @dev_get_platdata(i32* %11)
  store %struct.mcp_plat_data* %12, %struct.mcp_plat_data** %4, align 8
  %13 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %14 = icmp ne %struct.mcp_plat_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %184

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 1)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %184

33:                                               ; preds = %27
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i32 @resource_size(%struct.resource* %37)
  %39 = load i32, i32* @DRIVER_NAME, align 4
  %40 = call i32 @request_mem_region(i32 %36, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %182

45:                                               ; preds = %33
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i32 @resource_size(%struct.resource* %49)
  %51 = load i32, i32* @DRIVER_NAME, align 4
  %52 = call i32 @request_mem_region(i32 %48, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %175

57:                                               ; preds = %45
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call %struct.mcp* @mcp_host_alloc(i32* %59, i32 24)
  store %struct.mcp* %60, %struct.mcp** %8, align 8
  %61 = load %struct.mcp*, %struct.mcp** %8, align 8
  %62 = icmp ne %struct.mcp* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %168

66:                                               ; preds = %57
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = load %struct.mcp*, %struct.mcp** %8, align 8
  %69 = getelementptr inbounds %struct.mcp, %struct.mcp* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mcp*, %struct.mcp** %8, align 8
  %71 = getelementptr inbounds %struct.mcp, %struct.mcp* %70, i32 0, i32 2
  store i32* @mcp_sa11x0, i32** %71, align 8
  %72 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %73 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mcp*, %struct.mcp** %8, align 8
  %76 = getelementptr inbounds %struct.mcp, %struct.mcp* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mcp*, %struct.mcp** %8, align 8
  %78 = call %struct.mcp_sa11x0* @priv(%struct.mcp* %77)
  store %struct.mcp_sa11x0* %78, %struct.mcp_sa11x0** %7, align 8
  %79 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %80 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 32639
  %83 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %84 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %86 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %89 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.resource*, %struct.resource** %5, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.resource*, %struct.resource** %5, align 8
  %94 = call i32 @resource_size(%struct.resource* %93)
  %95 = call i8* @ioremap(i32 %92, i32 %94)
  %96 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %97 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.resource*, %struct.resource** %6, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.resource*, %struct.resource** %6, align 8
  %102 = call i32 @resource_size(%struct.resource* %101)
  %103 = call i8* @ioremap(i32 %100, i32 %102)
  %104 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %105 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %107 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %66
  %111 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %112 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110, %66
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %157

118:                                              ; preds = %110
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.mcp*, %struct.mcp** %8, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.mcp* %120)
  %122 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %123 = call i32 @MCSR(%struct.mcp_sa11x0* %122)
  %124 = call i32 @writel_relaxed(i32 -1, i32 %123)
  %125 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %126 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %129 = call i32 @MCCR1(%struct.mcp_sa11x0* %128)
  %130 = call i32 @writel_relaxed(i32 %127, i32 %129)
  %131 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %132 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %135 = call i32 @MCCR0(%struct.mcp_sa11x0* %134)
  %136 = call i32 @writel_relaxed(i32 %133, i32 %135)
  %137 = load %struct.mcp*, %struct.mcp** %8, align 8
  %138 = getelementptr inbounds %struct.mcp, %struct.mcp* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 192000000, %139
  %141 = sub nsw i32 %140, 1
  %142 = load %struct.mcp*, %struct.mcp** %8, align 8
  %143 = getelementptr inbounds %struct.mcp, %struct.mcp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %141, %144
  %146 = load %struct.mcp*, %struct.mcp** %8, align 8
  %147 = getelementptr inbounds %struct.mcp, %struct.mcp* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.mcp*, %struct.mcp** %8, align 8
  %149 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %150 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @mcp_host_add(%struct.mcp* %148, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %184

156:                                              ; preds = %118
  br label %157

157:                                              ; preds = %156, %115
  %158 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %159 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @iounmap(i8* %160)
  %162 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %7, align 8
  %163 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @iounmap(i8* %164)
  %166 = load %struct.mcp*, %struct.mcp** %8, align 8
  %167 = call i32 @mcp_host_free(%struct.mcp* %166)
  br label %168

168:                                              ; preds = %157, %63
  %169 = load %struct.resource*, %struct.resource** %6, align 8
  %170 = getelementptr inbounds %struct.resource, %struct.resource* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.resource*, %struct.resource** %6, align 8
  %173 = call i32 @resource_size(%struct.resource* %172)
  %174 = call i32 @release_mem_region(i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %168, %54
  %176 = load %struct.resource*, %struct.resource** %5, align 8
  %177 = getelementptr inbounds %struct.resource, %struct.resource* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.resource*, %struct.resource** %5, align 8
  %180 = call i32 @resource_size(%struct.resource* %179)
  %181 = call i32 @release_mem_region(i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %175, %42
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %155, %30, %15
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.mcp_plat_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.mcp* @mcp_host_alloc(i32*, i32) #1

declare dso_local %struct.mcp_sa11x0* @priv(%struct.mcp*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mcp*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @MCSR(%struct.mcp_sa11x0*) #1

declare dso_local i32 @MCCR1(%struct.mcp_sa11x0*) #1

declare dso_local i32 @MCCR0(%struct.mcp_sa11x0*) #1

declare dso_local i32 @mcp_host_add(%struct.mcp*, i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @mcp_host_free(%struct.mcp*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
