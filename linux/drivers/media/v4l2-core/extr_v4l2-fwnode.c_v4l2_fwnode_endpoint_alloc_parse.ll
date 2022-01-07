; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_endpoint_alloc_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_endpoint_alloc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"link-frequencies\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"link-frequencies %u value %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"===== end V4L2 endpoint properties\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle* %0, %struct.v4l2_fwnode_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %9 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %10 = call i32 @__v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %8, %struct.v4l2_fwnode_endpoint* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %17 = call i32 @fwnode_property_count_u64(%struct.fwnode_handle* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc_array(i32 %21, i32 4, i32 %22)
  %24 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %38 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fwnode_property_read_u64_array(%struct.fwnode_handle* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %49 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %52

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %15
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %47, %30, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @__v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @fwnode_property_count_u64(%struct.fwnode_handle*, i8*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @fwnode_property_read_u64_array(%struct.fwnode_handle*, i8*, i32*, i32) #1

declare dso_local i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
