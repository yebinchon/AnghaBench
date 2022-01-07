; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_update_hw_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_update_hw_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ifc_fpga_ipsec_sa = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mlx5_fpga_ipsec_cmd_context = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"mismatch SA handle. cmd 0x%08x vs resp 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, %struct.mlx5_ifc_fpga_ipsec_sa*, i32)* @mlx5_fpga_ipsec_update_hw_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_ipsec_update_hw_sa(%struct.mlx5_fpga_device* %0, %struct.mlx5_ifc_fpga_ipsec_sa* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_ifc_fpga_ipsec_sa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_ifc_fpga_ipsec_sa*, align 8
  %10 = alloca %struct.mlx5_fpga_ipsec_cmd_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %5, align 8
  store %struct.mlx5_ifc_fpga_ipsec_sa* %1, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %13, i32 0, i32 1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @htonl(i32 %16)
  %18 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @is_v2_sadb_supported(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i64 16, i64* %11, align 8
  br label %28

27:                                               ; preds = %3
  store i64 16, i64* %11, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %30 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @mlx5_fpga_ipsec_cmd_exec(%struct.mlx5_core_dev* %29, %struct.mlx5_ifc_fpga_ipsec_sa* %30, i64 %31)
  %33 = inttoptr i64 %32 to %struct.mlx5_fpga_ipsec_cmd_context*
  store %struct.mlx5_fpga_ipsec_cmd_context* %33, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %34 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %35 = call i64 @IS_ERR(%struct.mlx5_fpga_ipsec_cmd_context* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.mlx5_fpga_ipsec_cmd_context* %38)
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %42 = call i32 @mlx5_fpga_ipsec_cmd_wait(%struct.mlx5_fpga_ipsec_cmd_context* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %75

46:                                               ; preds = %40
  %47 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %48 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, %struct.mlx5_fpga_ipsec_cmd_context* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.mlx5_ifc_fpga_ipsec_sa*
  store %struct.mlx5_ifc_fpga_ipsec_sa* %49, %struct.mlx5_ifc_fpga_ipsec_sa** %9, align 8
  %50 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, %struct.mlx5_fpga_ipsec_cmd_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %46
  %60 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %61 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ntohl(i64 %64)
  %66 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %67 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, %struct.mlx5_fpga_ipsec_cmd_context* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ntohl(i64 %69)
  %71 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %59, %46
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %10, align 8
  %77 = call i32 @kfree(%struct.mlx5_fpga_ipsec_cmd_context* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %37
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @is_v2_sadb_supported(i32) #1

declare dso_local i64 @mlx5_fpga_ipsec_cmd_exec(%struct.mlx5_core_dev*, %struct.mlx5_ifc_fpga_ipsec_sa*, i64) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_fpga_ipsec_cmd_context*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_fpga_ipsec_cmd_context*) #1

declare dso_local i32 @mlx5_fpga_ipsec_cmd_wait(%struct.mlx5_fpga_ipsec_cmd_context*) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_ipsec_cmd_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
