; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_comm_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_comm_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_cmd = type { i64, i32, i32, %struct.mlx4_cmd_context*, i64 }
%struct.mlx4_cmd_context = type { i64, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.mlx4_cmd }

@CMD_STAT_INTERNAL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"communication channel command 0x%x (op=0x%x) timed out\0A\00", align 1
@CMD_STAT_MULTI_FUNC_REQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"command 0x%x failed: fw status = 0x%x\0A\00", align 1
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i64)* @mlx4_comm_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_comm_cmd_wait(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlx4_cmd*, align 8
  %12 = alloca %struct.mlx4_cmd_context*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = call %struct.TYPE_3__* @mlx4_priv(%struct.mlx4_dev* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.mlx4_cmd* %17, %struct.mlx4_cmd** %11, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %19 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %18, i32 0, i32 1
  %20 = call i32 @down(i32* %19)
  %21 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %21, i32 0, i32 2
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %31 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %30, i32 0, i32 3
  %32 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %31, align 8
  %33 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %32, i64 %35
  store %struct.mlx4_cmd_context* %36, %struct.mlx4_cmd_context** %12, align 8
  %37 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %38 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %42 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %48 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %51 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %53 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %56 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %55, i32 0, i32 3
  %57 = call i32 @reinit_completion(i32* %56)
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @mlx4_comm_cmd_post(%struct.mlx4_dev* %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %5
  %64 = load i32, i32* @CMD_STAT_INTERNAL_ERR, align 4
  %65 = call i32 @mlx4_status_to_errno(i32 %64)
  store i32 %65, i32* %14, align 4
  br label %141

66:                                               ; preds = %5
  %67 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %68 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %67, i32 0, i32 3
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @msecs_to_jiffies(i64 %69)
  %71 = call i32 @wait_for_completion_timeout(i32* %68, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @mlx4_warn(%struct.mlx4_dev* %74, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %134

78:                                               ; preds = %66
  %79 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %80 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %86 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CMD_STAT_MULTI_FUNC_REQ, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %94 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @mlx4_err(%struct.mlx4_dev* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %92, i64 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %99 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @mlx4_closing_cmd_fatal_error(i32 %97, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %134

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %84, %78
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %107 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %105
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @msecs_to_jiffies(i64 %115)
  %117 = load i64, i64* @jiffies, align 8
  %118 = add i64 %116, %117
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %130, %114
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %121 = call i64 @comm_pending(%struct.mlx4_dev* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i64, i64* @jiffies, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @time_before(i64 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %123, %119
  %129 = phi i1 [ false, %119 ], [ %127, %123 ]
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = call i32 (...) @cond_resched()
  br label %119

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %105
  br label %141

134:                                              ; preds = %103, %73
  %135 = load i32, i32* @CMD_STAT_INTERNAL_ERR, align 4
  %136 = call i32 @mlx4_status_to_errno(i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %138 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = call i32 @mlx4_enter_error_state(%struct.TYPE_4__* %139)
  br label %141

141:                                              ; preds = %134, %133, %63
  %142 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %143 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %142, i32 0, i32 2
  %144 = call i32 @spin_lock(i32* %143)
  %145 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %146 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %149 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %12, align 8
  %151 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %152 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %151, i32 0, i32 3
  %153 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %152, align 8
  %154 = ptrtoint %struct.mlx4_cmd_context* %150 to i64
  %155 = ptrtoint %struct.mlx4_cmd_context* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 32
  %158 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %159 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %161 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %160, i32 0, i32 2
  %162 = call i32 @spin_unlock(i32* %161)
  %163 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %11, align 8
  %164 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %163, i32 0, i32 1
  %165 = call i32 @up(i32* %164)
  %166 = load i32, i32* %14, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_3__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @mlx4_comm_cmd_post(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_status_to_errno(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i64) #1

declare dso_local i64 @mlx4_closing_cmd_fatal_error(i32, i64) #1

declare dso_local i64 @comm_pending(%struct.mlx4_dev*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mlx4_enter_error_state(%struct.TYPE_4__*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
