; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_steal_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_steal_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i32, i32, %struct.gru_state* }
%struct.gru_state = type { i32, i32, i32, i32, %struct.gru_thread_state** }
%struct.gru_thread_state = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@gru_base = common dso_local global %struct.gru_blade_state** null, align 8
@GRU_NUM_CCH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@steal_context_failed = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"stole gid %d, ctxnum %d from gts %p. Need cb %d, ds %d; avail cb %ld, ds %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_steal_context(%struct.gru_thread_state* %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca %struct.gru_blade_state*, align 8
  %4 = alloca %struct.gru_state*, align 8
  %5 = alloca %struct.gru_state*, align 8
  %6 = alloca %struct.gru_thread_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %2, align 8
  store %struct.gru_thread_state* null, %struct.gru_thread_state** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %14 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @uv_numa_blade_id()
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %22 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %25 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.gru_blade_state**, %struct.gru_blade_state*** @gru_base, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gru_blade_state*, %struct.gru_blade_state** %27, i64 %29
  %31 = load %struct.gru_blade_state*, %struct.gru_blade_state** %30, align 8
  store %struct.gru_blade_state* %31, %struct.gru_blade_state** %3, align 8
  %32 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %33 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %36 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @next_ctxnum(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %40 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %39, i32 0, i32 2
  %41 = load %struct.gru_state*, %struct.gru_state** %40, align 8
  store %struct.gru_state* %41, %struct.gru_state** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %46 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %47 = call %struct.gru_state* @next_gru(%struct.gru_blade_state* %45, %struct.gru_state* %46)
  store %struct.gru_state* %47, %struct.gru_state** %4, align 8
  br label %48

48:                                               ; preds = %44, %20
  %49 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %50 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %51 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %50, i32 0, i32 2
  store %struct.gru_state* %49, %struct.gru_state** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %54 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  store %struct.gru_state* %56, %struct.gru_state** %5, align 8
  br label %57

57:                                               ; preds = %48, %137
  %58 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %59 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %60 = call i64 @gru_check_chiplet_assignment(%struct.gru_state* %58, %struct.gru_thread_state* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %129

62:                                               ; preds = %57
  %63 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @GRU_NUM_CCH, align 4
  %67 = call i64 @check_gru_resources(%struct.gru_state* %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %141

70:                                               ; preds = %62
  %71 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %72 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %71, i32 0, i32 3
  %73 = call i32 @spin_lock(i32* %72)
  br label %74

74:                                               ; preds = %107, %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @GRU_NUM_CCH, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %83 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %84 = icmp eq %struct.gru_state* %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %110

90:                                               ; preds = %85, %81, %78
  %91 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %92 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %91, i32 0, i32 4
  %93 = load %struct.gru_thread_state**, %struct.gru_thread_state*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.gru_thread_state*, %struct.gru_thread_state** %93, i64 %95
  %97 = load %struct.gru_thread_state*, %struct.gru_thread_state** %96, align 8
  store %struct.gru_thread_state* %97, %struct.gru_thread_state** %6, align 8
  %98 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %99 = icmp ne %struct.gru_thread_state* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %90
  %101 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %102 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %103 = call i64 @is_gts_stealable(%struct.gru_thread_state* %101, %struct.gru_blade_state* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %110

106:                                              ; preds = %100, %90
  store %struct.gru_thread_state* null, %struct.gru_thread_state** %6, align 8
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %74

110:                                              ; preds = %105, %89, %74
  %111 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %112 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %111, i32 0, i32 3
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %115 = icmp ne %struct.gru_thread_state* %114, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %121 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %122 = icmp eq %struct.gru_state* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %110
  br label %141

128:                                              ; preds = %123, %119, %116
  br label %129

129:                                              ; preds = %128, %57
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %134 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %135 = icmp eq %struct.gru_state* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %141

137:                                              ; preds = %132, %129
  store i32 1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %138 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %139 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %140 = call %struct.gru_state* @next_gru(%struct.gru_blade_state* %138, %struct.gru_state* %139)
  store %struct.gru_state* %140, %struct.gru_state** %4, align 8
  br label %57

141:                                              ; preds = %136, %127, %69
  %142 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %143 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %142, i32 0, i32 1
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %146 = icmp ne %struct.gru_thread_state* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %141
  %148 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %149 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @jiffies, align 4
  %154 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %155 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %157 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %158 = call i64 @is_kernel_context(%struct.gru_thread_state* %157)
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 0, i32 1
  %162 = call i32 @gru_unload_context(%struct.gru_thread_state* %156, i32 %161)
  %163 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %164 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %165 = call i32 @gts_stolen(%struct.gru_thread_state* %163, %struct.gru_blade_state* %164)
  br label %169

166:                                              ; preds = %141
  %167 = load i32, i32* @steal_context_failed, align 4
  %168 = call i32 @STAT(i32 %167)
  br label %169

169:                                              ; preds = %166, %147
  %170 = load i32, i32* @grudev, align 4
  %171 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %172 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %179 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @hweight64(i32 %180)
  %182 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %183 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @hweight64(i32 %184)
  %186 = call i32 @gru_dbg(i32 %170, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %174, %struct.gru_thread_state* %175, i32 %176, i32 %177, i32 %181, i32 %185)
  ret void
}

declare dso_local i32 @uv_numa_blade_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @next_ctxnum(i32) #1

declare dso_local %struct.gru_state* @next_gru(%struct.gru_blade_state*, %struct.gru_state*) #1

declare dso_local i64 @gru_check_chiplet_assignment(%struct.gru_state*, %struct.gru_thread_state*) #1

declare dso_local i64 @check_gru_resources(%struct.gru_state*, i32, i32, i32) #1

declare dso_local i64 @is_gts_stealable(%struct.gru_thread_state*, %struct.gru_blade_state*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gru_unload_context(%struct.gru_thread_state*, i32) #1

declare dso_local i64 @is_kernel_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gts_stolen(%struct.gru_thread_state*, %struct.gru_blade_state*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @gru_dbg(i32, i8*, i32, i32, %struct.gru_thread_state*, i32, i32, i32, i32) #1

declare dso_local i32 @hweight64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
