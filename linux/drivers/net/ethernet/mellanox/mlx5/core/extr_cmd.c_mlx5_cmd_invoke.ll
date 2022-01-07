; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_invoke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { %struct.mlx5_cmd_stats*, i32 }
%struct.mlx5_cmd_stats = type { i32, i32, i32 }
%struct.mlx5_cmd_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_cmd_work_ent = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cb_timeout_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to queue work\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@mbox_in = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"fw exec time for %s is %lld nsec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg*, i8*, i32, i32, i8*, i32, i32*, i32, i32)* @mlx5_cmd_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_invoke(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_core_dev*, align 8
  %14 = alloca %struct.mlx5_cmd_msg*, align 8
  %15 = alloca %struct.mlx5_cmd_msg*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx5_cmd*, align 8
  %25 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %26 = alloca %struct.mlx5_cmd_stats*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg** %14, align 8
  store %struct.mlx5_cmd_msg* %2, %struct.mlx5_cmd_msg** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  store %struct.mlx5_cmd* %31, %struct.mlx5_cmd** %24, align 8
  store i32 0, i32* %27, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %11
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %171

40:                                               ; preds = %34, %11
  %41 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %42 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %14, align 8
  %43 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %15, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i8*, i8** %19, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call %struct.mlx5_cmd_work_ent* @alloc_cmd(%struct.mlx5_cmd* %41, %struct.mlx5_cmd_msg* %42, %struct.mlx5_cmd_msg* %43, i8* %44, i32 %45, i32 %46, i8* %47, i32 %48)
  store %struct.mlx5_cmd_work_ent* %49, %struct.mlx5_cmd_work_ent** %25, align 8
  %50 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %51 = call i64 @IS_ERR(%struct.mlx5_cmd_work_ent* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %55 = call i32 @PTR_ERR(%struct.mlx5_cmd_work_ent* %54)
  store i32 %55, i32* %12, align 4
  br label %171

56:                                               ; preds = %40
  %57 = load i32, i32* %22, align 4
  %58 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %59 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %62 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %67 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %66, i32 0, i32 6
  %68 = call i32 @init_completion(i32* %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %71 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %70, i32 0, i32 5
  %72 = load i32, i32* @cb_timeout_handler, align 4
  %73 = call i32 @INIT_DELAYED_WORK(i32* %71, i32 %72)
  %74 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %75 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %74, i32 0, i32 4
  %76 = call i32 @INIT_WORK(i32* %75, i32 (i32*)* @cmd_work_handler)
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %81 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %80, i32 0, i32 4
  %82 = call i32 @cmd_work_handler(i32* %81)
  br label %97

83:                                               ; preds = %69
  %84 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %85 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %88 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %87, i32 0, i32 4
  %89 = call i32 @queue_work(i32 %86, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %93 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %27, align 4
  br label %166

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %169

101:                                              ; preds = %97
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %103 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %104 = call i32 @wait_func(%struct.mlx5_core_dev* %102, %struct.mlx5_cmd_work_ent* %103)
  store i32 %104, i32* %27, align 4
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* @ETIMEDOUT, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %169

110:                                              ; preds = %101
  %111 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %112 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %115 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  store i64 %117, i64* %28, align 8
  %118 = load i32, i32* @mbox_in, align 4
  %119 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %14, align 8
  %120 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @opcode, align 4
  %124 = call i64 @MLX5_GET(i32 %118, i32 %122, i32 %123)
  store i64 %124, i64* %29, align 8
  %125 = load i64, i64* %29, align 8
  %126 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %127 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %126, i32 0, i32 0
  %128 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %127, align 8
  %129 = call i64 @ARRAY_SIZE(%struct.mlx5_cmd_stats* %128)
  %130 = icmp ult i64 %125, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %110
  %132 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %133 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %132, i32 0, i32 0
  %134 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %133, align 8
  %135 = load i64, i64* %29, align 8
  %136 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %134, i64 %135
  store %struct.mlx5_cmd_stats* %136, %struct.mlx5_cmd_stats** %26, align 8
  %137 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %138 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %137, i32 0, i32 0
  %139 = call i32 @spin_lock_irq(i32* %138)
  %140 = load i64, i64* %28, align 8
  %141 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %142 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %148 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %152 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock_irq(i32* %152)
  br label %154

154:                                              ; preds = %131, %110
  %155 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %156 = load i32, i32* @MLX5_CMD_TIME, align 4
  %157 = shl i32 1, %156
  %158 = load i64, i64* %29, align 8
  %159 = call i32 @mlx5_command_str(i64 %158)
  %160 = load i64, i64* %28, align 8
  %161 = call i32 @mlx5_core_dbg_mask(%struct.mlx5_core_dev* %155, i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %159, i64 %160)
  %162 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %163 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %21, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %154, %91
  %167 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %168 = call i32 @free_cmd(%struct.mlx5_cmd_work_ent* %167)
  br label %169

169:                                              ; preds = %166, %109, %100
  %170 = load i32, i32* %27, align 4
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %169, %53, %37
  %172 = load i32, i32* %12, align 4
  ret i32 %172
}

declare dso_local %struct.mlx5_cmd_work_ent* @alloc_cmd(%struct.mlx5_cmd*, %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg*, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @cmd_work_handler(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @wait_func(%struct.mlx5_core_dev*, %struct.mlx5_cmd_work_ent*) #1

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mlx5_cmd_stats*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx5_core_dbg_mask(%struct.mlx5_core_dev*, i32, i8*, i32, i64) #1

declare dso_local i32 @mlx5_command_str(i64) #1

declare dso_local i32 @free_cmd(%struct.mlx5_cmd_work_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
