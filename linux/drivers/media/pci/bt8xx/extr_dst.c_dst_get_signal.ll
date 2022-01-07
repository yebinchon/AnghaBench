; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32, i32, i32, i64, i32*, i64 }

@__const.dst_get_signal.get_signal = private unnamed_addr constant [8 x i32] [i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 251], align 16
@ATTEMPT_TUNE = common dso_local global i32 0, align 4
@HAS_LOCK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_signal(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %6 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @__const.dst_get_signal.get_signal to i8*), i64 32, i1 false)
  %7 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %8 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ATTEMPT_TUNE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %178

20:                                               ; preds = %1
  %21 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %22 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HAS_LOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %29 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %31 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %178

34:                                               ; preds = %20
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %37 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 %39, 5
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i64 @time_after_eq(i64 %35, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %177

45:                                               ; preds = %34
  %46 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %48 = call i32 @dst_command(%struct.dst_state* %46, i32* %47, i32 8)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %178

53:                                               ; preds = %45
  %54 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %55 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %53
  %60 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %61 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %70 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %72 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %78 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %80 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %86 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %84, %89
  %91 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %92 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %173

93:                                               ; preds = %53
  %94 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %95 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %101 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %99, %93
  %106 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %107 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %115 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %117 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %123 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %125 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %131 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %172

132:                                              ; preds = %99
  %133 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %134 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %171

138:                                              ; preds = %132
  %139 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %140 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 6
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %148 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %150 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 8
  %155 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %156 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %158 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %164 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %162, %167
  %169 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %170 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %138, %132
  br label %172

172:                                              ; preds = %171, %105
  br label %173

173:                                              ; preds = %172, %59
  %174 = load i64, i64* @jiffies, align 8
  %175 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %176 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %175, i32 0, i32 6
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %173, %34
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %51, %27, %13
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @time_after_eq(i64, i64) #2

declare dso_local i32 @dst_command(%struct.dst_state*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
