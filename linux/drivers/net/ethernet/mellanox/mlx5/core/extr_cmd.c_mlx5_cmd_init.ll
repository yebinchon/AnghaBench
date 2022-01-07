; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__*, i32, %struct.mlx5_cmd }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_cmd = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_IF_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Driver cmdif rev(%d) differs from firmware's(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mlx5_cmd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_MAX_COMMANDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"firmware reports too many outstanding commands %d\0A\00", align 1
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"command queue size overflow\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"driver does not support command interface version. driver %d, firmware %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid command queue address\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"descriptor at dma 0x%llx\0A\00", align 1
@CMD_MODE_POLLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to create command workqueue\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 4, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @roundup_pow_of_two(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 2
  store %struct.mlx5_cmd* %15, %struct.mlx5_cmd** %6, align 8
  %16 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %17 = call i32 @memset(%struct.mlx5_cmd* %16, i32 0, i32 80)
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = call i32 @cmdif_rev(%struct.mlx5_core_dev* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CMD_IF_REV, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = load i32, i32* @CMD_IF_REV, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %249

30:                                               ; preds = %1
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %249

46:                                               ; preds = %30
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %48 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %49 = call i32 @alloc_cmd_page(%struct.mlx5_core_dev* %47, %struct.mlx5_cmd* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %243

53:                                               ; preds = %46
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @ioread32be(i32* %57)
  %59 = and i32 %58, 255
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 15
  %67 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 1, %71
  %73 = load i32, i32* @MLX5_MAX_COMMANDS, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %53
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %77 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 1, %79
  %81 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %239

84:                                               ; preds = %53
  %85 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %96 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %239

99:                                               ; preds = %84
  %100 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  %102 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 1, %104
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = shl i64 1, %112
  %114 = sub i64 %113, 1
  %115 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %118 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = call i32 @ioread32be(i32* %120)
  %122 = ashr i32 %121, 16
  %123 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %126 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CMD_IF_REV, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %99
  %131 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %132 = load i32, i32* @CMD_IF_REV, align 4
  %133 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %134 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %131, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load i32, i32* @EOPNOTSUPP, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  br label %239

139:                                              ; preds = %99
  %140 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %141 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %140, i32 0, i32 15
  %142 = call i32 @spin_lock_init(i32* %141)
  %143 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %144 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %143, i32 0, i32 14
  %145 = call i32 @spin_lock_init(i32* %144)
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %162, %139
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %149 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %148, i32 0, i32 13
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %150)
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %146
  %154 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %155 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %154, i32 0, i32 13
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @spin_lock_init(i32* %160)
  br label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %146

165:                                              ; preds = %146
  %166 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %167 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %166, i32 0, i32 12
  %168 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %169 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @sema_init(i32* %167, i32 %170)
  %172 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %173 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %172, i32 0, i32 11
  %174 = call i32 @sema_init(i32* %173, i32 1)
  %175 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %176 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = ashr i32 %178, 32
  store i32 %179, i32* %7, align 4
  %180 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %181 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 4095
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %165
  %188 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %189 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %10, align 4
  br label %239

192:                                              ; preds = %165
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %195 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %194, i32 0, i32 0
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = call i32 @iowrite32be(i32 %193, i32* %197)
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %201 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = call i32 @iowrite32be(i32 %199, i32* %203)
  %205 = call i32 (...) @wmb()
  %206 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %207 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %208 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %207, i32 0, i32 10
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %209)
  %211 = load i32, i32* @CMD_MODE_POLLING, align 4
  %212 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %213 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %212, i32 0, i32 9
  store i32 %211, i32* %213, align 8
  %214 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %215 = call i32 @create_msg_cache(%struct.mlx5_core_dev* %214)
  %216 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %217 = call i32 @set_wqname(%struct.mlx5_core_dev* %216)
  %218 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %219 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @create_singlethread_workqueue(i32 %220)
  %222 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %223 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  %224 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %225 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %192
  %229 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %230 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %229, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %10, align 4
  br label %236

233:                                              ; preds = %192
  %234 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %235 = call i32 @create_debugfs_files(%struct.mlx5_core_dev* %234)
  store i32 0, i32* %2, align 4
  br label %249

236:                                              ; preds = %228
  %237 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %238 = call i32 @destroy_msg_cache(%struct.mlx5_core_dev* %237)
  br label %239

239:                                              ; preds = %236, %187, %130, %94, %75
  %240 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %241 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %242 = call i32 @free_cmd_page(%struct.mlx5_core_dev* %240, %struct.mlx5_cmd* %241)
  br label %243

243:                                              ; preds = %239, %52
  %244 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %245 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @dma_pool_destroy(i32 %246)
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %243, %233, %43, %23
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @memset(%struct.mlx5_cmd*, i32, i32) #1

declare dso_local i32 @cmdif_rev(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @alloc_cmd_page(%struct.mlx5_core_dev*, %struct.mlx5_cmd*) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i64) #1

declare dso_local i32 @create_msg_cache(%struct.mlx5_core_dev*) #1

declare dso_local i32 @set_wqname(%struct.mlx5_core_dev*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @create_debugfs_files(%struct.mlx5_core_dev*) #1

declare dso_local i32 @destroy_msg_cache(%struct.mlx5_core_dev*) #1

declare dso_local i32 @free_cmd_page(%struct.mlx5_core_dev*, %struct.mlx5_cmd*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
