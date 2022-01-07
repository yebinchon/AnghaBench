; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_port.c_mlx4_SET_VLAN_FLTR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_port.c_mlx4_SET_VLAN_FLTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_vlan_fltr_mbox* }
%struct.mlx4_set_vlan_fltr_mbox = type { i32* }

@VLAN_FLTR_SIZE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_VLAN_FLTR = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_VLAN_FLTR(%struct.mlx4_dev* %0, %struct.mlx4_en_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca %struct.mlx4_set_vlan_fltr_mbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_en_priv* %1, %struct.mlx4_en_priv** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %6, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 1
  %24 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %23, align 8
  store %struct.mlx4_set_vlan_fltr_mbox* %24, %struct.mlx4_set_vlan_fltr_mbox** %7, align 8
  %25 = load i32, i32* @VLAN_FLTR_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %60, %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 32
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_bit(i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %42, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @cpu_to_be32(i32 %52)
  %54 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_set_vlan_fltr_mbox, %struct.mlx4_set_vlan_fltr_mbox* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %27

63:                                               ; preds = %27
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %65 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MLX4_CMD_SET_VLAN_FLTR, align 4
  %72 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %73 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %74 = call i32 @mlx4_cmd(%struct.mlx4_dev* %64, i32 %67, i32 %70, i32 0, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %76 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %77 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %75, %struct.mlx4_cmd_mailbox* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %63, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
