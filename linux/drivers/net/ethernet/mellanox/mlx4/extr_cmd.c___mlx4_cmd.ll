; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c___mlx4_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c___mlx4_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_cmd(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %22 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pci_channel_offline(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %9
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @mlx4_cmd_reset_flow(%struct.mlx4_dev* %29, i32 %30, i32 %31, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %109

35:                                               ; preds = %9
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %37 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %44 = call i64 @mlx4_is_master(%struct.mlx4_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %42, %35
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @mlx4_internal_err_ret_value(%struct.mlx4_dev* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  br label %109

60:                                               ; preds = %46
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %62 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @down_read(i32* %64)
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %67 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* %18, align 8
  %81 = call i32 @mlx4_cmd_wait(%struct.mlx4_dev* %73, i32 %74, i32* %75, i32 %76, i32 %77, i32 %78, i32 %79, i64 %80)
  store i32 %81, i32* %20, align 4
  br label %92

82:                                               ; preds = %60
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @mlx4_cmd_poll(%struct.mlx4_dev* %83, i32 %84, i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i64 %90)
  store i32 %91, i32* %20, align 4
  br label %92

92:                                               ; preds = %82, %72
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %94 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @up_read(i32* %96)
  %98 = load i32, i32* %20, align 4
  store i32 %98, i32* %10, align 4
  br label %109

99:                                               ; preds = %42, %39
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @mlx4_slave_cmd(%struct.mlx4_dev* %100, i32 %101, i32* %102, i32 %103, i32 %104, i32 %105, i32 %106, i64 %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %99, %92, %55, %28
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @mlx4_cmd_reset_flow(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_internal_err_ret_value(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_wait(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @mlx4_cmd_poll(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mlx4_slave_cmd(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
