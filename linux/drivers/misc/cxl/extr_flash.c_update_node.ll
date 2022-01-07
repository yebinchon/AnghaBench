; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_update_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_props_workarea = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ibm,update-properties\00", align 1
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTAS_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cxl: Could not update property %s - %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @update_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_node(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.update_props_workarea*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = call i32 @rtas_token(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %138

24:                                               ; preds = %2
  %25 = load i32, i32* @RTAS_DATA_BUF_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %138

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = call %struct.device_node* @of_find_node_by_phandle(i32 %35)
  store %struct.device_node* %36, %struct.device_node** %7, align 8
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %138

44:                                               ; preds = %33
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = bitcast i8* %46 to %struct.update_props_workarea*
  store %struct.update_props_workarea* %47, %struct.update_props_workarea** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.update_props_workarea*, %struct.update_props_workarea** %6, align 8
  %50 = getelementptr inbounds %struct.update_props_workarea, %struct.update_props_workarea* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %129, %44
  %52 = load i32, i32* %13, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @rcall(i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %132

59:                                               ; preds = %51
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  store i8* %61, i8** %11, align 8
  %62 = load %struct.update_props_workarea*, %struct.update_props_workarea** %6, align 8
  %63 = getelementptr inbounds %struct.update_props_workarea, %struct.update_props_workarea* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %59
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %70, %59
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %125, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = add nsw i64 %92, 1
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be32_to_cpu(i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %11, align 8
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %89
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, -2147483648
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load %struct.device_node*, %struct.device_node** %7, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @update_property(%struct.device_node* %108, i8* %109, i32 %110, i8* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i8*, i8** %16, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %107
  %120 = load i32, i32* %15, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %11, align 8
  br label %124

124:                                              ; preds = %119, %104, %89
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %85

128:                                              ; preds = %85
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %51, label %132

132:                                              ; preds = %129, %58
  %133 = load %struct.device_node*, %struct.device_node** %7, align 8
  %134 = call i32 @of_node_put(%struct.device_node* %133)
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %39, %30, %21
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @rcall(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @update_property(%struct.device_node*, i8*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
