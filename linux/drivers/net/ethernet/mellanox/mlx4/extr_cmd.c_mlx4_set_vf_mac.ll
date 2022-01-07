; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32, i64 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"MAC invalidation is not allowed when spoofchk is on\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"default mac on vf %d port %d to %llX will take effect only after vf restart\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_mac(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_vport_state*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %13)
  store %struct.mlx4_priv* %14, %struct.mlx4_priv** %10, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = call i32 @mlx4_is_master(%struct.mlx4_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EPROTONOSUPPORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %80

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @is_multicast_ether_addr(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %80

28:                                               ; preds = %21
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %80

37:                                               ; preds = %28
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %51, i64 %53
  store %struct.mlx4_vport_state* %54, %struct.mlx4_vport_state** %11, align 8
  %55 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %56 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %37
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @is_zero_ether_addr(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %65 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %64, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %59, %37
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @mlx4_mac_to_u64(i32* %69)
  %71 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %72 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %77 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %73, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %68, %63, %34, %25, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_mac_to_u64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
