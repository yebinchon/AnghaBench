; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_get_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_get_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cc2520_platform_data*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cc2520_platform_data = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cc2520_private = type { i32, i8* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fifo-gpio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fifop-gpio\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sfd-gpio\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cca-gpio\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vreg-gpio\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"reset-gpio\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"amplified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.cc2520_platform_data*)* @cc2520_get_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_get_platform_data(%struct.spi_device* %0, %struct.cc2520_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.cc2520_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.cc2520_private*, align 8
  %8 = alloca %struct.cc2520_platform_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.cc2520_platform_data* %1, %struct.cc2520_platform_data** %5, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %14 = call %struct.cc2520_private* @spi_get_drvdata(%struct.spi_device* %13)
  store %struct.cc2520_private* %14, %struct.cc2520_private** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %2
  %18 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %20, align 8
  store %struct.cc2520_platform_data* %21, %struct.cc2520_platform_data** %8, align 8
  %22 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %8, align 8
  %23 = icmp ne %struct.cc2520_platform_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %17
  %28 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %29 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %8, align 8
  %30 = bitcast %struct.cc2520_platform_data* %28 to i8*
  %31 = bitcast %struct.cc2520_platform_data* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 48, i1 false)
  %32 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.cc2520_private*, %struct.cc2520_private** %7, align 8
  %36 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %3, align 4
  br label %74

37:                                               ; preds = %2
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i8* @of_get_named_gpio(%struct.device_node* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %40 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %43 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.cc2520_private*, %struct.cc2520_private** %7, align 8
  %46 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i8* @of_get_named_gpio(%struct.device_node* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %49 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %50 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i8* @of_get_named_gpio(%struct.device_node* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %53 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %54 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = call i8* @of_get_named_gpio(%struct.device_node* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %57 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call i8* @of_get_named_gpio(%struct.device_node* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %61 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %62 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = call i8* @of_get_named_gpio(%struct.device_node* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %65 = load %struct.cc2520_platform_data*, %struct.cc2520_platform_data** %5, align 8
  %66 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %6, align 8
  %68 = call i64 @of_property_read_bool(%struct.device_node* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %37
  %71 = load %struct.cc2520_private*, %struct.cc2520_private** %7, align 8
  %72 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %37
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %27, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.cc2520_private* @spi_get_drvdata(%struct.spi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
