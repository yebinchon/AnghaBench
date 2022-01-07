; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_fdb_uc_lag_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_fdb_uc_lag_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_SFD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_REG_SFD_REC_ACTION_NOP = common dso_local global i32 0, align 4
@sfd = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i8*, i32, i32, i32, i32)* @mlxsw_sp_port_fdb_uc_lag_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_fdb_uc_lag_op(%struct.mlxsw_sp* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @MLXSW_REG_SFD_LEN, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %66

27:                                               ; preds = %7
  %28 = load i8*, i8** %16, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @mlxsw_sp_sfd_op(i32 %29)
  %31 = call i32 @mlxsw_reg_sfd_pack(i8* %28, i32 %30, i32 0)
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @mlxsw_sp_sfd_rec_policy(i32 %33)
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @MLXSW_REG_SFD_REC_ACTION_NOP, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mlxsw_reg_sfd_uc_lag_pack(i8* %32, i32 0, i32 %34, i8* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @mlxsw_reg_sfd_num_rec_get(i8* %41)
  store i64 %42, i64* %17, align 8
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @sfd, align 4
  %47 = call i32 @MLXSW_REG(i32 %46)
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 @mlxsw_reg_write(i32 %45, i32 %47, i8* %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  br label %62

53:                                               ; preds = %27
  %54 = load i64, i64* %17, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i64 @mlxsw_reg_sfd_num_rec_get(i8* %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i8*, i8** %16, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i32, i32* %18, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %24
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_pack(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_sfd_op(i32) #1

declare dso_local i32 @mlxsw_reg_sfd_uc_lag_pack(i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_sfd_rec_policy(i32) #1

declare dso_local i64 @mlxsw_reg_sfd_num_rec_get(i8*) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
