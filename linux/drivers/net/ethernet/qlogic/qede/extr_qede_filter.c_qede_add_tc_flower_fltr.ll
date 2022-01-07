; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_add_tc_flower_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_add_tc_flower_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qede_arfs_fltr_node = type { i32, i32, i32, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*)* }
%struct.qede_arfs_tuple = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@QEDE_RFS_MAX_FLTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [93 x i8] c"Filter configuration invalidated, filter mode=0x%x, configured mode=0x%x, filter count=0x%x\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_add_tc_flower_fltr(%struct.qede_dev* %0, i32 %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.qede_arfs_fltr_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qede_arfs_tuple, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %14 = call i32 @__qede_lock(%struct.qede_dev* %13)
  %15 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %16 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %151

22:                                               ; preds = %3
  %23 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %26 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i64 @qede_parse_flow_attr(%struct.qede_dev* %23, i32 %24, %struct.TYPE_7__* %27, %struct.qede_arfs_tuple* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %151

31:                                               ; preds = %22
  %32 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %33 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %10, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %49 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QEDE_RFS_MAX_FLTR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %47, %38
  %56 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %57 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %60 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %65 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @DP_NOTICE(%struct.qede_dev* %56, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %63, i64 %68)
  br label %151

70:                                               ; preds = %47
  %71 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %72 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %73 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i64 @qede_parse_actions(%struct.qede_dev* %71, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %151

79:                                               ; preds = %70
  %80 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %81 = call i64 @qede_flow_find_fltr(%struct.qede_dev* %80, %struct.qede_arfs_tuple* %10)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %151

86:                                               ; preds = %79
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @kzalloc(i32 40, i32 %87)
  %89 = bitcast i8* %88 to %struct.qede_arfs_fltr_node*
  store %struct.qede_arfs_fltr_node* %89, %struct.qede_arfs_fltr_node** %7, align 8
  %90 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %91 = icmp ne %struct.qede_arfs_fltr_node* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %151

95:                                               ; preds = %86
  %96 = call i32 @qede_flow_get_min_header_size(%struct.qede_arfs_tuple* %10)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kzalloc(i32 %97, i32 %98)
  %100 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %101 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %103 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %95
  %107 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %108 = call i32 @kfree(%struct.qede_arfs_fltr_node* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %151

111:                                              ; preds = %95
  %112 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %113 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %112, i32 0, i32 4
  %114 = call i32 @memcpy(%struct.TYPE_6__* %113, %struct.qede_arfs_tuple* %10, i32 8)
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %117 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %119 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %121 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %124 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %126 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %127, align 8
  %129 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %130 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %129, i32 0, i32 4
  %131 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %132 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 %128(%struct.TYPE_6__* %130, i8* %133)
  %135 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %136 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %137 = call i32 @qede_enqueue_fltr_and_config_searcher(%struct.qede_dev* %135, %struct.qede_arfs_fltr_node* %136, i32 0)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %111
  br label %151

141:                                              ; preds = %111
  %142 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %143 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %144 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %145 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @qede_configure_arfs_fltr(%struct.qede_dev* %142, %struct.qede_arfs_fltr_node* %143, i32 %146, i32 1)
  %148 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %149 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %150 = call i32 @qede_poll_arfs_filter_config(%struct.qede_dev* %148, %struct.qede_arfs_fltr_node* %149)
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %141, %140, %106, %92, %83, %78, %55, %30, %19
  %152 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %153 = call i32 @__qede_unlock(%struct.qede_dev* %152)
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i64 @qede_parse_flow_attr(%struct.qede_dev*, i32, %struct.TYPE_7__*, %struct.qede_arfs_tuple*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i64, i64, i64) #1

declare dso_local i64 @qede_parse_actions(%struct.qede_dev*, i32*) #1

declare dso_local i64 @qede_flow_find_fltr(%struct.qede_dev*, %struct.qede_arfs_tuple*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @qede_flow_get_min_header_size(%struct.qede_arfs_tuple*) #1

declare dso_local i32 @kfree(%struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.qede_arfs_tuple*, i32) #1

declare dso_local i32 @qede_enqueue_fltr_and_config_searcher(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32) #1

declare dso_local i32 @qede_configure_arfs_fltr(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32, i32) #1

declare dso_local i32 @qede_poll_arfs_filter_config(%struct.qede_dev*, %struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
