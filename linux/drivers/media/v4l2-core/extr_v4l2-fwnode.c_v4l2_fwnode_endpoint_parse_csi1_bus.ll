; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_endpoint_parse_csi1_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_endpoint_parse_csi1_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_fwnode_bus_mipi_csi1 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"clock-inv\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"clock-inv %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strobe\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"strobe %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"data-lanes\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"data-lanes %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"clock-lanes\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"clock-lanes %u\0A\00", align 1
@V4L2_MBUS_CCP2 = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*, i32)* @v4l2_fwnode_endpoint_parse_csi1_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_fwnode_endpoint_parse_csi1_bus(%struct.fwnode_handle* %0, %struct.v4l2_fwnode_endpoint* %1, i32 %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_fwnode_bus_mipi_csi1*, align 8
  %8 = alloca i8*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.v4l2_fwnode_bus_mipi_csi1* %11, %struct.v4l2_fwnode_bus_mipi_csi1** %7, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %13 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.v4l2_fwnode_bus_mipi_csi1*, %struct.v4l2_fwnode_bus_mipi_csi1** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi1* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %23 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.v4l2_fwnode_bus_mipi_csi1*, %struct.v4l2_fwnode_bus_mipi_csi1** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi1* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %33 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.v4l2_fwnode_bus_mipi_csi1*, %struct.v4l2_fwnode_bus_mipi_csi1** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi1* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %43 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.v4l2_fwnode_bus_mipi_csi1*, %struct.v4l2_fwnode_bus_mipi_csi1** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi1* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @V4L2_MBUS_CCP2, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @V4L2_MBUS_CCP2, align 4
  %57 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @V4L2_MBUS_CSI1, align 4
  %61 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  ret void
}

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i8**) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
