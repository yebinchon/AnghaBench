; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_parse_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_parse_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_link = type { %struct.fwnode_handle*, i32, %struct.fwnode_handle*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@ENOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_fwnode_parse_link(%struct.fwnode_handle* %0, %struct.v4l2_fwnode_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.v4l2_fwnode_link*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.v4l2_fwnode_link* %1, %struct.v4l2_fwnode_link** %5, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %9 = call i64 @is_of_node(%struct.fwnode_handle* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %5, align 8
  %14 = call i32 @memset(%struct.v4l2_fwnode_link* %13, i32 0, i32 32)
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %16 = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %15)
  store %struct.fwnode_handle* %16, %struct.fwnode_handle** %7, align 8
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %19, i32 0, i32 3
  %21 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %17, i8* %18, i32* %20)
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %23 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* %22)
  store %struct.fwnode_handle* %23, %struct.fwnode_handle** %7, align 8
  %24 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %25 = call i64 @is_of_node(%struct.fwnode_handle* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %29 = call i32 @to_of_node(%struct.fwnode_handle* %28)
  %30 = call i64 @of_node_name_eq(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %34 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* %33)
  store %struct.fwnode_handle* %34, %struct.fwnode_handle** %7, align 8
  br label %35

35:                                               ; preds = %32, %27, %2
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %37 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %37, i32 0, i32 2
  store %struct.fwnode_handle* %36, %struct.fwnode_handle** %38, align 8
  %39 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %40 = call %struct.fwnode_handle* @fwnode_graph_get_remote_endpoint(%struct.fwnode_handle* %39)
  store %struct.fwnode_handle* %40, %struct.fwnode_handle** %7, align 8
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %42 = icmp ne %struct.fwnode_handle* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %45 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %44)
  %46 = load i32, i32* @ENOLINK, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %73

48:                                               ; preds = %35
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %50 = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %49)
  store %struct.fwnode_handle* %50, %struct.fwnode_handle** %7, align 8
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %53, i32 0, i32 1
  %55 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %51, i8* %52, i32* %54)
  %56 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %57 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* %56)
  store %struct.fwnode_handle* %57, %struct.fwnode_handle** %7, align 8
  %58 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %59 = call i64 @is_of_node(%struct.fwnode_handle* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %48
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %63 = call i32 @to_of_node(%struct.fwnode_handle* %62)
  %64 = call i64 @of_node_name_eq(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %68 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* %67)
  store %struct.fwnode_handle* %68, %struct.fwnode_handle** %7, align 8
  br label %69

69:                                               ; preds = %66, %61, %48
  %70 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %71 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %71, i32 0, i32 0
  store %struct.fwnode_handle* %70, %struct.fwnode_handle** %72, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %43
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @is_of_node(%struct.fwnode_handle*) #1

declare dso_local i32 @memset(%struct.v4l2_fwnode_link*, i32, i32) #1

declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle*) #1

declare dso_local i64 @of_node_name_eq(i32, i8*) #1

declare dso_local i32 @to_of_node(%struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_endpoint(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
