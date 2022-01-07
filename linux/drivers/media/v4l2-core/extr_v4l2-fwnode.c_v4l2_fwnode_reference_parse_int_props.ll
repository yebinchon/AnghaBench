; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_reference_parse_int_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_reference_parse_int_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_fwnode_int_props = type { i8*, i8**, i32 }
%struct.fwnode_handle = type opaque
%struct.v4l2_async_subdev = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_async_notifier*, %struct.v4l2_fwnode_int_props*)* @v4l2_fwnode_reference_parse_int_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_fwnode_reference_parse_int_props(%struct.device* %0, %struct.v4l2_async_notifier* %1, %struct.v4l2_fwnode_int_props* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_async_notifier*, align 8
  %7 = alloca %struct.v4l2_fwnode_int_props*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_async_notifier* %1, %struct.v4l2_async_notifier** %6, align 8
  store %struct.v4l2_fwnode_int_props* %2, %struct.v4l2_fwnode_int_props** %7, align 8
  %15 = load %struct.v4l2_fwnode_int_props*, %struct.v4l2_fwnode_int_props** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_fwnode_int_props, %struct.v4l2_fwnode_int_props* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.v4l2_fwnode_int_props*, %struct.v4l2_fwnode_int_props** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_fwnode_int_props, %struct.v4l2_fwnode_int_props* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %12, align 8
  %21 = load %struct.v4l2_fwnode_int_props*, %struct.v4l2_fwnode_int_props** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_fwnode_int_props, %struct.v4l2_fwnode_int_props* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %62, %3
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @dev_fwnode(%struct.device* %25)
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8**, i8*** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.v4l2_async_subdev* @v4l2_fwnode_reference_get_int_prop(i32 %26, i8* %27, i32 %28, i8** %29, i32 %30)
  %32 = bitcast %struct.v4l2_async_subdev* %31 to %struct.fwnode_handle*
  store %struct.fwnode_handle* %32, %struct.fwnode_handle** %8, align 8
  %33 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %34 = bitcast %struct.fwnode_handle* %33 to %struct.v4l2_async_subdev*
  %35 = call i64 @IS_ERR(%struct.v4l2_async_subdev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %24
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %39 = bitcast %struct.fwnode_handle* %38 to %struct.v4l2_async_subdev*
  %40 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %39)
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %46 = bitcast %struct.fwnode_handle* %45 to %struct.v4l2_async_subdev*
  %47 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %46)
  %48 = load i32, i32* @ENODATA, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %53 = bitcast %struct.fwnode_handle* %52 to %struct.v4l2_async_subdev*
  %54 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %53)
  store i32 %54, i32* %4, align 4
  br label %120

55:                                               ; preds = %44, %37
  br label %63

56:                                               ; preds = %24
  %57 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %58 = bitcast %struct.fwnode_handle* %57 to %struct.v4l2_async_subdev*
  %59 = call i32 @fwnode_handle_put(%struct.v4l2_async_subdev* %58)
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56
  br i1 true, label %24, label %63

63:                                               ; preds = %62, %55
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %100, %63
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @dev_fwnode(%struct.device* %65)
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i8**, i8*** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call %struct.v4l2_async_subdev* @v4l2_fwnode_reference_get_int_prop(i32 %66, i8* %67, i32 %68, i8** %69, i32 %70)
  %72 = bitcast %struct.v4l2_async_subdev* %71 to %struct.fwnode_handle*
  store %struct.fwnode_handle* %72, %struct.fwnode_handle** %8, align 8
  %73 = bitcast %struct.fwnode_handle* %72 to %struct.v4l2_async_subdev*
  %74 = call i64 @IS_ERR(%struct.v4l2_async_subdev* %73)
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %103

77:                                               ; preds = %64
  %78 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %79 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %80 = bitcast %struct.fwnode_handle* %79 to %struct.v4l2_async_subdev*
  %81 = call %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(%struct.v4l2_async_notifier* %78, %struct.v4l2_async_subdev* %80, i32 4)
  store %struct.v4l2_async_subdev* %81, %struct.v4l2_async_subdev** %14, align 8
  %82 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %83 = bitcast %struct.fwnode_handle* %82 to %struct.v4l2_async_subdev*
  %84 = call i32 @fwnode_handle_put(%struct.v4l2_async_subdev* %83)
  %85 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %14, align 8
  %86 = call i64 @IS_ERR(%struct.v4l2_async_subdev* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %14, align 8
  %90 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @EEXIST, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %14, align 8
  %98 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %97)
  store i32 %98, i32* %4, align 4
  br label %120

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %64

103:                                              ; preds = %64
  %104 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %105 = icmp ne %struct.fwnode_handle* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %108 = bitcast %struct.fwnode_handle* %107 to %struct.v4l2_async_subdev*
  %109 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %108)
  %110 = load i32, i32* @ENOENT, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106, %103
  br label %118

114:                                              ; preds = %106
  %115 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %116 = bitcast %struct.fwnode_handle* %115 to %struct.v4l2_async_subdev*
  %117 = call i32 @PTR_ERR(%struct.v4l2_async_subdev* %116)
  br label %118

118:                                              ; preds = %114, %113
  %119 = phi i32 [ 0, %113 ], [ %117, %114 ]
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %96, %51
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.v4l2_async_subdev* @v4l2_fwnode_reference_get_int_prop(i32, i8*, i32, i8**, i32) #1

declare dso_local i32 @dev_fwnode(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.v4l2_async_subdev*) #1

declare dso_local i32 @PTR_ERR(%struct.v4l2_async_subdev*) #1

declare dso_local i32 @fwnode_handle_put(%struct.v4l2_async_subdev*) #1

declare dso_local %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(%struct.v4l2_async_notifier*, %struct.v4l2_async_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
