; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_comp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { i32, %struct.mlx5_cmd_stats*, i32, %struct.semaphore, %struct.semaphore, %struct.mlx5_cmd_work_ent** }
%struct.mlx5_cmd_stats = type { i32, i32, i32 }
%struct.semaphore = type { i32 }
%struct.mlx5_cmd_work_ent = type { i32, i32, i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i8*, i32 (i32, i8*)*, i64, i64, i32, %struct.TYPE_8__*, i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MLX5_CMD_ENT_STATE_PENDING_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Command completion arrived after timeout (entry idx = %d).\0A\00", align 1
@MLX5_TRIGGERED_CMD_COMP = common dso_local global i32 0, align 4
@MLX5_DRIVER_STATUS_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"command completed. ret 0x%x, delivery status %s(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i32, i32)* @mlx5_cmd_comp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_cmd_comp_handler(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_cmd*, align 8
  %8 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %9 = alloca i32 (i32, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mlx5_cmd_stats*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.semaphore*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 0
  store %struct.mlx5_cmd* %19, %struct.mlx5_cmd** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %16, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %287, %3
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %290

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @test_bit(i32 %30, i64* %16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %286

33:                                               ; preds = %29
  %34 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %34, i32 0, i32 5
  %36 = load %struct.mlx5_cmd_work_ent**, %struct.mlx5_cmd_work_ent*** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %36, i64 %38
  %40 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %39, align 8
  store %struct.mlx5_cmd_work_ent* %40, %struct.mlx5_cmd_work_ent** %8, align 8
  %41 = load i32, i32* @MLX5_CMD_ENT_STATE_PENDING_COMP, align 4
  %42 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %42, i32 0, i32 16
  %44 = call i32 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %51 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %52 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %56 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @free_ent(%struct.mlx5_cmd* %55, i32 %58)
  %60 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %61 = call i32 @free_cmd(%struct.mlx5_cmd_work_ent* %60)
  br label %62

62:                                               ; preds = %49, %46
  br label %287

63:                                               ; preds = %33
  %64 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %65 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %64, i32 0, i32 9
  %66 = load i32 (i32, i8*)*, i32 (i32, i8*)** %65, align 8
  %67 = icmp ne i32 (i32, i8*)* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %69, i32 0, i32 15
  %71 = call i32 @cancel_delayed_work(i32* %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %74 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %73, i32 0, i32 14
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %78, i32 0, i32 4
  store %struct.semaphore* %79, %struct.semaphore** %17, align 8
  br label %83

80:                                               ; preds = %72
  %81 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %81, i32 0, i32 3
  store %struct.semaphore* %82, %struct.semaphore** %17, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = call i64 (...) @ktime_get_ns()
  %85 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %86 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %85, i32 0, i32 11
  store i64 %84, i64* %86, align 8
  %87 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %88 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %87, i32 0, i32 5
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %94 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %93, i32 0, i32 13
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32 %92, i32 %97, i32 4)
  %99 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %100 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %101 = call i32 @dump_command(%struct.mlx5_core_dev* %99, %struct.mlx5_cmd_work_ent* %100, i32 0)
  %102 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %150, label %106

106:                                              ; preds = %83
  %107 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %113 = call i32 @verify_signature(%struct.mlx5_cmd_work_ent* %112)
  %114 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %115 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %119

116:                                              ; preds = %106
  %117 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %118 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MLX5_TRIGGERED_CMD_COMP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @MLX5_DRIVER_STATUS_ABORTED, align 4
  %126 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %127 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %137

128:                                              ; preds = %119
  %129 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %130 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %129, i32 0, i32 13
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 1
  %135 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %136 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %128, %124
  %138 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %139 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %140 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %143 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @deliv_status_to_str(i32 %144)
  %146 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %147 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %138, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %137, %83
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %155 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %156 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @free_ent(%struct.mlx5_cmd* %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %150
  %160 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %161 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %160, i32 0, i32 9
  %162 = load i32 (i32, i8*)*, i32 (i32, i8*)** %161, align 8
  %163 = icmp ne i32 (i32, i8*)* %162, null
  br i1 %163, label %164, label %279

164:                                              ; preds = %159
  %165 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %166 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %165, i32 0, i32 11
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %169 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %168, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %167, %170
  store i64 %171, i64* %13, align 8
  %172 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %173 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %175, i32 0, i32 1
  %177 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %176, align 8
  %178 = call i64 @ARRAY_SIZE(%struct.mlx5_cmd_stats* %177)
  %179 = icmp ult i64 %174, %178
  br i1 %179, label %180, label %207

180:                                              ; preds = %164
  %181 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %181, i32 0, i32 1
  %183 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %182, align 8
  %184 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %185 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %183, i64 %186
  store %struct.mlx5_cmd_stats* %187, %struct.mlx5_cmd_stats** %14, align 8
  %188 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %14, align 8
  %189 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %188, i32 0, i32 0
  %190 = load i64, i64* %15, align 8
  %191 = call i32 @spin_lock_irqsave(i32* %189, i64 %190)
  %192 = load i64, i64* %13, align 8
  %193 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %14, align 8
  %194 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %192
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  %199 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %14, align 8
  %200 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %14, align 8
  %204 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %203, i32 0, i32 0
  %205 = load i64, i64* %15, align 8
  %206 = call i32 @spin_unlock_irqrestore(i32* %204, i64 %205)
  br label %207

207:                                              ; preds = %180, %164
  %208 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %209 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %208, i32 0, i32 9
  %210 = load i32 (i32, i8*)*, i32 (i32, i8*)** %209, align 8
  store i32 (i32, i8*)* %210, i32 (i32, i8*)** %9, align 8
  %211 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %212 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %211, i32 0, i32 8
  %213 = load i8*, i8** %212, align 8
  store i8* %213, i8** %10, align 8
  %214 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %215 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %248, label %219

219:                                              ; preds = %207
  %220 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %221 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %224 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %223, i32 0, i32 5
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %227 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @mlx5_copy_from_msg(i32 %222, %struct.TYPE_10__* %225, i32 %228)
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %219
  %233 = load i32, i32* %11, align 4
  br label %246

234:                                              ; preds = %219
  %235 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %236 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %237 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %236, i32 0, i32 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %243 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @mlx5_cmd_check(%struct.mlx5_core_dev* %235, i32 %241, i32 %244)
  br label %246

246:                                              ; preds = %234, %232
  %247 = phi i32 [ %233, %232 ], [ %245, %234 ]
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %246, %207
  %249 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %250 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %251 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %250, i32 0, i32 5
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = call i32 @mlx5_free_cmd_msg(%struct.mlx5_core_dev* %249, %struct.TYPE_10__* %252)
  %254 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %255 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %256 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %255, i32 0, i32 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = call i32 @free_msg(%struct.mlx5_core_dev* %254, %struct.TYPE_11__* %257)
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %248
  %262 = load i32, i32* %11, align 4
  br label %267

263:                                              ; preds = %248
  %264 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %265 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  br label %267

267:                                              ; preds = %263, %261
  %268 = phi i32 [ %262, %261 ], [ %266, %263 ]
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* %6, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %273 = call i32 @free_cmd(%struct.mlx5_cmd_work_ent* %272)
  br label %274

274:                                              ; preds = %271, %267
  %275 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load i8*, i8** %10, align 8
  %278 = call i32 %275(i32 %276, i8* %277)
  br label %283

279:                                              ; preds = %159
  %280 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %281 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %280, i32 0, i32 3
  %282 = call i32 @complete(i32* %281)
  br label %283

283:                                              ; preds = %279, %274
  %284 = load %struct.semaphore*, %struct.semaphore** %17, align 8
  %285 = call i32 @up(%struct.semaphore* %284)
  br label %286

286:                                              ; preds = %283, %29
  br label %287

287:                                              ; preds = %286, %62
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %12, align 4
  br label %22

290:                                              ; preds = %22
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @free_ent(%struct.mlx5_cmd*, i32) #1

declare dso_local i32 @free_cmd(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dump_command(%struct.mlx5_core_dev*, %struct.mlx5_cmd_work_ent*, i32) #1

declare dso_local i32 @verify_signature(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @deliv_status_to_str(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mlx5_cmd_stats*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_copy_from_msg(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mlx5_cmd_check(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_free_cmd_msg(%struct.mlx5_core_dev*, %struct.TYPE_10__*) #1

declare dso_local i32 @free_msg(%struct.mlx5_core_dev*, %struct.TYPE_11__*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @up(%struct.semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
