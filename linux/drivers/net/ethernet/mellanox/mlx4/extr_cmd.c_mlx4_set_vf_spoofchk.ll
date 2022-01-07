; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FSM = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Illegal MAC with spoofchk\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_spoofchk(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_vport_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %16)
  store %struct.mlx4_priv* %17, %struct.mlx4_priv** %10, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %23 = call i32 @mlx4_is_master(%struct.mlx4_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FSM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25, %4
  %34 = load i32, i32* @EPROTONOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %81

36:                                               ; preds = %25
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %81

45:                                               ; preds = %36
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %51 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %59, i64 %61
  store %struct.mlx4_vport_state* %62, %struct.mlx4_vport_state** %11, align 8
  %63 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %64 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mlx4_u64_to_mac(i32* %21, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %45
  %70 = call i32 @is_valid_ether_addr(i32* %21)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %74 = call i32 @mlx4_info(%struct.mlx4_dev* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %81

77:                                               ; preds = %69, %45
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %80 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %77, %72, %42, %33
  %82 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_u64_to_mac(i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
