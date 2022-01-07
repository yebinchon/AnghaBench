; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_afu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_afu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 (i32, i32)* }
%struct.cxl_afu = type { i32, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.afu_config_record = type { i32 }

@afu_attrs = common dso_local global %struct.device_attribute* null, align 8
@cxl_ops = common dso_local global %struct.TYPE_8__* null, align 8
@CXL_AFU_ATTRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"afu_err_buff\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@afu_eb_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to create eb attr for the afu. Err(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_sysfs_afu_add(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca %struct.afu_config_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 3
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %43, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.device_attribute*, %struct.device_attribute** @afu_attrs, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.device_attribute* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = load %struct.device_attribute*, %struct.device_attribute** @afu_attrs, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %17, i64 %19
  store %struct.device_attribute* %20, %struct.device_attribute** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cxl_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64 (i32, i32)*, i64 (i32, i32)** %22, align 8
  %24 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %25 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CXL_AFU_ATTRS, align 4
  %29 = call i64 %23(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %16
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %33 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %32, i32 0, i32 1
  %34 = load %struct.device_attribute*, %struct.device_attribute** @afu_attrs, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %34, i64 %36
  %38 = call i32 @device_create_file(i32* %33, %struct.device_attribute* %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %119

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %48 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  %52 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %53 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = call i32 @sysfs_attr_init(%struct.TYPE_6__* %54)
  %56 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %57 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* @S_IRUGO, align 4
  %61 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %62 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 8
  %65 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %66 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %69 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = load i32, i32* @afu_eb_read, align 4
  %72 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %73 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %76 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %75, i32 0, i32 1
  %77 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %78 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %77, i32 0, i32 4
  %79 = call i32 @device_create_bin_file(i32* %76, %struct.TYPE_7__* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %51
  %83 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %84 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %83, i32 0, i32 1
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %119

87:                                               ; preds = %51
  br label %88

88:                                               ; preds = %87, %46
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %92 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call %struct.afu_config_record* @cxl_sysfs_afu_new_cr(%struct.cxl_afu* %96, i32 %97)
  store %struct.afu_config_record* %98, %struct.afu_config_record** %5, align 8
  %99 = load %struct.afu_config_record*, %struct.afu_config_record** %5, align 8
  %100 = call i64 @IS_ERR(%struct.afu_config_record* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.afu_config_record*, %struct.afu_config_record** %5, align 8
  %104 = call i32 @PTR_ERR(%struct.afu_config_record* %103)
  store i32 %104, i32* %7, align 4
  br label %115

105:                                              ; preds = %95
  %106 = load %struct.afu_config_record*, %struct.afu_config_record** %5, align 8
  %107 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %106, i32 0, i32 0
  %108 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %109 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %108, i32 0, i32 3
  %110 = call i32 @list_add(i32* %107, i32* %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %89

114:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %156

115:                                              ; preds = %102
  %116 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %117 = call i32 @cxl_sysfs_afu_remove(%struct.cxl_afu* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %156

119:                                              ; preds = %82, %40
  %120 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %121 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %151, %119
  %125 = load i32, i32* %6, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load %struct.device_attribute*, %struct.device_attribute** @afu_attrs, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %128, i64 %130
  store %struct.device_attribute* %131, %struct.device_attribute** %4, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cxl_ops, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64 (i32, i32)*, i64 (i32, i32)** %133, align 8
  %135 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %136 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CXL_AFU_ATTRS, align 4
  %140 = call i64 %134(i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %127
  %143 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %144 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %143, i32 0, i32 1
  %145 = load %struct.device_attribute*, %struct.device_attribute** @afu_attrs, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %145, i64 %147
  %149 = call i32 @device_remove_file(i32* %144, %struct.device_attribute* %148)
  br label %150

150:                                              ; preds = %142, %127
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %6, align 4
  br label %124

154:                                              ; preds = %124
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %115, %114
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.device_attribute*) #1

declare dso_local i32 @device_create_file(i32*, %struct.device_attribute*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_create_bin_file(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.afu_config_record* @cxl_sysfs_afu_new_cr(%struct.cxl_afu*, i32) #1

declare dso_local i64 @IS_ERR(%struct.afu_config_record*) #1

declare dso_local i32 @PTR_ERR(%struct.afu_config_record*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @cxl_sysfs_afu_remove(%struct.cxl_afu*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
