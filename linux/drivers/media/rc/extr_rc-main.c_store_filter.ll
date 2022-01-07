; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_store_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_store_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i64, i32, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter }
%struct.rc_scancode_filter = type { i64, i64 }
%struct.rc_filter_attribute = type { i64, i64 }

@RC_FILTER_NORMAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RC_FILTER_WAKEUP = common dso_local global i64 0, align 8
@RC_PROTO_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_filter(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rc_dev*, align 8
  %11 = alloca %struct.rc_filter_attribute*, align 8
  %12 = alloca %struct.rc_scancode_filter, align 8
  %13 = alloca %struct.rc_scancode_filter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.rc_dev* @to_rc_dev(%struct.device* %17)
  store %struct.rc_dev* %18, %struct.rc_dev** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.rc_filter_attribute* @to_rc_filter_attr(%struct.device_attribute* %19)
  store %struct.rc_filter_attribute* %20, %struct.rc_filter_attribute** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 0, i64* %15)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %133

27:                                               ; preds = %4
  %28 = load %struct.rc_filter_attribute*, %struct.rc_filter_attribute** %11, align 8
  %29 = getelementptr inbounds %struct.rc_filter_attribute, %struct.rc_filter_attribute* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RC_FILTER_NORMAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %35 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 0
  %36 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %35, align 8
  store i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)* %36, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %16, align 8
  %37 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 6
  store %struct.rc_scancode_filter* %38, %struct.rc_scancode_filter** %13, align 8
  br label %45

39:                                               ; preds = %27
  %40 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %40, i32 0, i32 1
  %42 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %41, align 8
  store i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)* %42, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %16, align 8
  %43 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 5
  store %struct.rc_scancode_filter* %44, %struct.rc_scancode_filter** %13, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %16, align 8
  %47 = icmp ne i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %133

51:                                               ; preds = %45
  %52 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %53 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %52, i32 0, i32 3
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %13, align 8
  %56 = bitcast %struct.rc_scancode_filter* %12 to i8*
  %57 = bitcast %struct.rc_scancode_filter* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load %struct.rc_filter_attribute*, %struct.rc_filter_attribute** %11, align 8
  %59 = getelementptr inbounds %struct.rc_filter_attribute, %struct.rc_filter_attribute* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %12, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  br label %68

65:                                               ; preds = %51
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %12, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.rc_filter_attribute*, %struct.rc_filter_attribute** %11, align 8
  %70 = getelementptr inbounds %struct.rc_filter_attribute, %struct.rc_filter_attribute* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RC_FILTER_WAKEUP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %76 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RC_PROTO_UNKNOWN, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %82 = call i32 @rc_validate_filter(%struct.rc_dev* %81, %struct.rc_scancode_filter* %12)
  store i32 %82, i32* %14, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %119

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.rc_filter_attribute*, %struct.rc_filter_attribute** %11, align 8
  %93 = getelementptr inbounds %struct.rc_filter_attribute, %struct.rc_filter_attribute* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RC_FILTER_NORMAL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %99 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %14, align 4
  br label %119

108:                                              ; preds = %102, %97, %91
  %109 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %16, align 8
  %110 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %111 = call i32 %109(%struct.rc_dev* %110, %struct.rc_scancode_filter* %12)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %119

115:                                              ; preds = %108
  %116 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %13, align 8
  %117 = bitcast %struct.rc_scancode_filter* %116 to i8*
  %118 = bitcast %struct.rc_scancode_filter* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 16, i1 false)
  br label %119

119:                                              ; preds = %115, %114, %105, %89
  %120 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %121 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %120, i32 0, i32 3
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  br label %130

128:                                              ; preds = %119
  %129 = load i64, i64* %9, align 8
  br label %130

130:                                              ; preds = %128, %125
  %131 = phi i64 [ %127, %125 ], [ %129, %128 ]
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %48, %25
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local %struct.rc_filter_attribute* @to_rc_filter_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rc_validate_filter(%struct.rc_dev*, %struct.rc_scancode_filter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
