; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_GEN_EQE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_GEN_EQE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_eqe = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.mlx4_slave_event_eq_info*, i32 }
%struct.mlx4_slave_event_eq_info = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.res_eq = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RES_EQ = common dso_local global i32 0, align 4
@RES_EQ_HW = common dso_local global i64 0, align 8
@MLX4_EVENT_TYPE_CMD = common dso_local global i64 0, align 8
@MLX4_CMD_GEN_EQE = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_GEN_EQE(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_eqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_eqe*, align 8
  %8 = alloca %struct.mlx4_priv*, align 8
  %9 = alloca %struct.mlx4_slave_event_eq_info*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.res_eq*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_eqe* %2, %struct.mlx4_eqe** %7, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %15)
  store %struct.mlx4_priv* %16, %struct.mlx4_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %198

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %56, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %46 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44, %37, %29, %26
  store i32 0, i32* %4, align 4
  br label %198

57:                                               ; preds = %44
  %58 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %66, align 8
  %68 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %67, i64 %70
  store %struct.mlx4_slave_event_eq_info* %71, %struct.mlx4_slave_event_eq_info** %9, align 8
  %72 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %198

77:                                               ; preds = %57
  %78 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 10
  %89 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %90 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  store i32 %92, i32* %13, align 4
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @RES_EQ, align 4
  %97 = call i32 @get_res(%struct.mlx4_dev* %93, i32 %94, i32 %95, i32 %96, %struct.res_eq** %14)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %77
  br label %187

101:                                              ; preds = %77
  %102 = load %struct.res_eq*, %struct.res_eq** %14, align 8
  %103 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RES_EQ_HW, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %181

111:                                              ; preds = %101
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %113 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %112)
  store %struct.mlx4_cmd_mailbox* %113, %struct.mlx4_cmd_mailbox** %10, align 8
  %114 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %115 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %119 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %118)
  store i32 %119, i32* %12, align 4
  br label %181

120:                                              ; preds = %111
  %121 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %122 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MLX4_EVENT_TYPE_CMD, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %128 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %132 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @cpu_to_be16(i32 %133)
  %135 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 8
  br label %139

139:                                              ; preds = %126, %120
  %140 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %141 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %144 = bitcast %struct.mlx4_eqe* %143 to i32*
  %145 = call i32 @memcpy(i32 %142, i32* %144, i32 28)
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, 255
  %148 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %149 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 1023
  %152 = shl i32 %151, 16
  %153 = or i32 %147, %152
  store i32 %153, i32* %11, align 4
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %155 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %156 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @MLX4_CMD_GEN_EQE, align 4
  %160 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %161 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %162 = call i32 @mlx4_cmd(%struct.mlx4_dev* %154, i32 %157, i32 %158, i32 0, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @RES_EQ, align 4
  %167 = call i32 @put_res(%struct.mlx4_dev* %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %169 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %178 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %179 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %177, %struct.mlx4_cmd_mailbox* %178)
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %4, align 4
  br label %198

181:                                              ; preds = %117, %108
  %182 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @RES_EQ, align 4
  %186 = call i32 @put_res(%struct.mlx4_dev* %182, i32 %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %100
  %188 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %189 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %187, %139, %76, %56, %23
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_eq**) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
