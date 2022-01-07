; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_control_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_control_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32, i32*, i32 }
%struct.mux_chip = type { i32, %struct.mux_control*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"mux-control-names\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mux controller '%s' not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mux-controls\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"#mux-control-cells\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%pOF: failed to get mux-control %s(%i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"%pOF: wrong #mux-control-cells for %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"%pOF: bad mux controller %u specified in %pOF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mux_control* @mux_control_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.mux_control*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_phandle_args, align 8
  %8 = alloca %struct.mux_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @of_property_match_string(%struct.device_node* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.mux_control* @ERR_PTR(i32 %27)
  store %struct.mux_control* %28, %struct.mux_control** %3, align 8
  br label %125

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @of_parse_phandle_with_args(%struct.device_node* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %32, %struct.of_phandle_args* %7)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = bitcast %struct.device_node* %38 to i8*
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i8* [ %40, %42 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %43 ]
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %39, i8* %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = call %struct.mux_control* @ERR_PTR(i32 %48)
  store %struct.mux_control* %49, %struct.mux_control** %3, align 8
  br label %125

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.mux_chip* @of_find_mux_chip_by_node(i32 %52)
  store %struct.mux_chip* %53, %struct.mux_chip** %8, align 8
  %54 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @of_node_put(i32 %55)
  %57 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %58 = icmp ne %struct.mux_chip* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @EPROBE_DEFER, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.mux_control* @ERR_PTR(i32 %61)
  store %struct.mux_control* %62, %struct.mux_control** %3, align 8
  br label %125

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  %72 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %73 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %89

76:                                               ; preds = %71, %63
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.device_node*, %struct.device_node** %6, align 8
  %79 = bitcast %struct.device_node* %78 to i8*
  %80 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %79, i32 %81)
  %83 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %84 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %83, i32 0, i32 2
  %85 = call i32 @put_device(i32* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  %88 = call %struct.mux_control* @ERR_PTR(i32 %87)
  store %struct.mux_control* %88, %struct.mux_control** %3, align 8
  br label %125

89:                                               ; preds = %71, %67
  store i32 0, i32* %9, align 4
  %90 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %101 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp uge i32 %99, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.device_node*, %struct.device_node** %6, align 8
  %107 = bitcast %struct.device_node* %106 to i8*
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %107, i32 %108, i32 %110)
  %112 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %113 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %112, i32 0, i32 2
  %114 = call i32 @put_device(i32* %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.mux_control* @ERR_PTR(i32 %116)
  store %struct.mux_control* %117, %struct.mux_control** %3, align 8
  br label %125

118:                                              ; preds = %98
  %119 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %120 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %119, i32 0, i32 1
  %121 = load %struct.mux_control*, %struct.mux_control** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %121, i64 %123
  store %struct.mux_control* %124, %struct.mux_control** %3, align 8
  br label %125

125:                                              ; preds = %118, %104, %76, %59, %44, %23
  %126 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  ret %struct.mux_control* %126
}

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, ...) #1

declare dso_local %struct.mux_control* @ERR_PTR(i32) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.mux_chip* @of_find_mux_chip_by_node(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
