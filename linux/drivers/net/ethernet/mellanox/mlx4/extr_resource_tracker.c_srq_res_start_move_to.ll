; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_srq_res_start_move_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_srq_res_start_move_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_srq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { i32* }

@RES_SRQ = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RES_SRQ_ALLOCATED = common dso_local global i32 0, align 4
@RES_SRQ_HW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RES_SRQ_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq**)* @srq_res_start_move_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srq_res_start_move_to(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, %struct.res_srq** %4) #0 {
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.res_srq**, align 8
  %11 = alloca %struct.mlx4_priv*, align 8
  %12 = alloca %struct.mlx4_resource_tracker*, align 8
  %13 = alloca %struct.res_srq*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.res_srq** %4, %struct.res_srq*** %10, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %15)
  store %struct.mlx4_priv* %16, %struct.mlx4_priv** %11, align 8
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %11, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %20, %struct.mlx4_resource_tracker** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %22 = call i32 @mlx4_tlock(%struct.mlx4_dev* %21)
  %23 = call i32 @spin_lock_irq(i32 %22)
  %24 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %12, align 8
  %25 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @RES_SRQ, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.res_srq* @res_tracker_lookup(i32* %28, i32 %29)
  store %struct.res_srq* %30, %struct.res_srq** %13, align 8
  %31 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %32 = icmp ne %struct.res_srq* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  br label %89

36:                                               ; preds = %5
  %37 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %38 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %88

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RES_SRQ_ALLOCATED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %52 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RES_SRQ_HW, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %69

60:                                               ; preds = %50
  %61 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %62 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %61, i32 0, i32 1
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %57
  br label %87

70:                                               ; preds = %46
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @RES_SRQ_HW, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %77 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @RES_SRQ_ALLOCATED, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75, %70
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %75
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %43
  br label %89

89:                                               ; preds = %88, %33
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %89
  %93 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %94 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %99 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %103 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @RES_SRQ_BUSY, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %108 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.res_srq**, %struct.res_srq*** %10, align 8
  %111 = icmp ne %struct.res_srq** %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %92
  %113 = load %struct.res_srq*, %struct.res_srq** %13, align 8
  %114 = load %struct.res_srq**, %struct.res_srq*** %10, align 8
  store %struct.res_srq* %113, %struct.res_srq** %114, align 8
  br label %115

115:                                              ; preds = %112, %92
  br label %116

116:                                              ; preds = %115, %89
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %118 = call i32 @mlx4_tlock(%struct.mlx4_dev* %117)
  %119 = call i32 @spin_unlock_irq(i32 %118)
  %120 = load i32, i32* %14, align 4
  ret i32 %120
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_srq* @res_tracker_lookup(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
