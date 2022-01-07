; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_stp_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_stp_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx_port = type { i32, %struct.mlxsw_sx* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_SPMS_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx_port*, i32, i32)* @mlxsw_sx_port_stp_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_stp_state_set(%struct.mlxsw_sx_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sx_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sx_port* %0, %struct.mlxsw_sx_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %11, i32 0, i32 1
  %13 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %12, align 8
  store %struct.mlxsw_sx* %13, %struct.mlxsw_sx** %8, align 8
  %14 = load i32, i32* @MLXSW_REG_SPMS_LEN, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 %14, i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlxsw_reg_spms_pack(i8* %23, i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mlxsw_reg_spms_vid_pack(i8* %28, i32 %29, i32 %30)
  %32 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %8, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @spms, align 4
  %36 = call i32 @MLXSW_REG(i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @mlxsw_reg_write(i32 %34, i32 %36, i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %22, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_spms_pack(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_spms_vid_pack(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
