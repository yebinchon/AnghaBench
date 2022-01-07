; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_tuner_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_tuner_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32*, i64, i32, i32, i32 }

@__const.dst_get_tuner_info.get_tuner_1 = private unnamed_addr constant [8 x i32] [i32 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@__const.dst_get_tuner_info.get_tuner_2 = private unnamed_addr constant [8 x i32] [i32 0, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [21 x i8] c"DST TYpe = MULTI FE\0A\00", align 1
@DST_TYPE_HAS_MULTI_FE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cmd=[0x13], Unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cmd=[0xb], Unsupported\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DST type has TS=188\0A\00", align 1
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@DST_TYPE_HAS_TS188 = common dso_local global i32 0, align 4
@DST_TYPE_HAS_NEWTUNE_2 = common dso_local global i32 0, align 4
@DST_TYPE_HAS_DBOARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"DST has Daughterboard\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DCT-CI\00", align 1
@DST_TYPE_HAS_TS204 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Forcing [%s] to TS188\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_tuner_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_tuner_info(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %6 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @__const.dst_get_tuner_info.get_tuner_1 to i8*), i64 32, i1 false)
  %7 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.dst_get_tuner_info.get_tuner_2 to i8*), i64 32, i1 false)
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %9 = call i32 @dst_check_sum(i32* %8, i32 7)
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %12 = call i32 @dst_check_sum(i32* %11, i32 7)
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %12, i32* %13, align 4
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %16 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DST_TYPE_HAS_MULTI_FE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %24 = call i64 @dst_command(%struct.dst_state* %22, i32* %23, i32 8)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %92

28:                                               ; preds = %21
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %32 = call i64 @dst_command(%struct.dst_state* %30, i32* %31, i32 8)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %92

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %28
  %38 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %39 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %38, i32 0, i32 1
  %40 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %41 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %40, i32 0, i32 5
  %42 = call i32 @memcpy(i32** %39, i32* %41, i32 8)
  %43 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %44 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DST_TYPE_HAS_MULTI_FE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %37
  %52 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %53 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 188
  br i1 %57, label %58, label %91

58:                                               ; preds = %51
  %59 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %60 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @DST_TYPE_HAS_TS188, align 4
  %66 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %67 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %76

70:                                               ; preds = %58
  %71 = load i32, i32* @DST_TYPE_HAS_NEWTUNE_2, align 4
  %72 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %73 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %78 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32, i32* @DST_TYPE_HAS_DBOARD, align 4
  %85 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %86 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %51
  store i32 0, i32* %2, align 4
  br label %109

92:                                               ; preds = %34, %26
  %93 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %94 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @strncmp(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %100 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %101 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %105 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %98, %92
  store i32 -1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %91
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i64 @dst_command(%struct.dst_state*, i32*, i32) #2

declare dso_local i32 @dprintk(i32, i8*) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
