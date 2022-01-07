; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_c8sectpfe_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_c8sectpfe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfe = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.c8sectpfei* }
%struct.TYPE_6__ = type { i32, %struct.c8sectpfei* }
%struct.c8sectpfei = type { i32, i32 }

@__const.c8sectpfe_create.ids = private unnamed_addr constant [1 x i16] [i16 -1], align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"STi c8sectpfe\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"dvb_register_adapter failed (errno = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"register_dvb feed=%d failed (errno = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c8sectpfe* (%struct.c8sectpfei*, i8*, i8*)* @c8sectpfe_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c8sectpfe* @c8sectpfe_create(%struct.c8sectpfei* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.c8sectpfe*, align 8
  %5 = alloca %struct.c8sectpfei*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c8sectpfe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x i16], align 2
  store %struct.c8sectpfei* %0, %struct.c8sectpfei** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast [1 x i16]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %13, i8* align 2 bitcast ([1 x i16]* @__const.c8sectpfe_create.ids to i8*), i64 2, i1 false)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.c8sectpfe* @kzalloc(i32 32, i32 %14)
  store %struct.c8sectpfe* %15, %struct.c8sectpfe** %8, align 8
  %16 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %17 = icmp ne %struct.c8sectpfe* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %127

19:                                               ; preds = %3
  %20 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %21 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %20, i32 0, i32 4
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %24 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %27 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %29 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %28, i32 0, i32 1
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %32 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [1 x i16], [1 x i16]* %12, i64 0, i64 0
  %35 = call i32 @dvb_register_adapter(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i16* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %40 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %124

44:                                               ; preds = %19
  %45 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %46 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %47 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store %struct.c8sectpfei* %45, %struct.c8sectpfei** %48, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %110, %44
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %52 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %58 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 8
  %64 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %65 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %66 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store %struct.c8sectpfei* %64, %struct.c8sectpfei** %71, align 8
  %72 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %73 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %79 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %78, i32 0, i32 1
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %83 = call i32 @register_dvb(%struct.TYPE_6__* %77, %struct.TYPE_7__* %79, i8* %80, i8* %81, %struct.c8sectpfei* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %55
  %87 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %88 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %105, %86
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %99 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = call i32 @unregister_dvb(%struct.TYPE_6__* %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %93

108:                                              ; preds = %93
  br label %120

109:                                              ; preds = %55
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %49

113:                                              ; preds = %49
  %114 = load %struct.c8sectpfei*, %struct.c8sectpfei** %5, align 8
  %115 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %118 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  store %struct.c8sectpfe* %119, %struct.c8sectpfe** %4, align 8
  br label %128

120:                                              ; preds = %108
  %121 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %122 = getelementptr inbounds %struct.c8sectpfe, %struct.c8sectpfe* %121, i32 0, i32 1
  %123 = call i32 @dvb_unregister_adapter(%struct.TYPE_7__* %122)
  br label %124

124:                                              ; preds = %120, %38
  %125 = load %struct.c8sectpfe*, %struct.c8sectpfe** %8, align 8
  %126 = call i32 @kfree(%struct.c8sectpfe* %125)
  br label %127

127:                                              ; preds = %124, %18
  store %struct.c8sectpfe* null, %struct.c8sectpfe** %4, align 8
  br label %128

128:                                              ; preds = %127, %113
  %129 = load %struct.c8sectpfe*, %struct.c8sectpfe** %4, align 8
  ret %struct.c8sectpfe* %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.c8sectpfe* @kzalloc(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_7__*, i8*, i32, i32, i16*) #2

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #2

declare dso_local i32 @register_dvb(%struct.TYPE_6__*, %struct.TYPE_7__*, i8*, i8*, %struct.c8sectpfei*) #2

declare dso_local i32 @unregister_dvb(%struct.TYPE_6__*) #2

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_7__*) #2

declare dso_local i32 @kfree(%struct.c8sectpfe*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
