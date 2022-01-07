; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_stp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_stp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_SPMS_STATE_FORWARDING = common dso_local global i32 0, align 4
@MLXSW_REG_SPMS_STATE_DISCARDING = common dso_local global i32 0, align 4
@MLXSW_REG_SPMS_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@spms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32)* @mlxsw_sp_port_stp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_stp_set(%struct.mlxsw_sp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 1
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MLXSW_REG_SPMS_STATE_FORWARDING, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MLXSW_REG_SPMS_STATE_DISCARDING, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @MLXSW_REG_SPMS_LEN, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlxsw_reg_spms_pack(i8* %31, i32 %34)
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %45, %30
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @VLAN_N_VID, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mlxsw_reg_spms_vid_pack(i8* %41, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %36

48:                                               ; preds = %36
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @spms, align 4
  %53 = call i32 @MLXSW_REG(i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @mlxsw_reg_write(i32 %51, i32 %53, i8* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_spms_pack(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_spms_vid_pack(i8*, i64, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
