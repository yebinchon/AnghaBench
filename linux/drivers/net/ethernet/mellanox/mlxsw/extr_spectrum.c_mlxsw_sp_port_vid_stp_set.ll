; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_vid_stp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_vid_stp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_SPMS_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @mlxsw_sp_stp_spms_state(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %9, align 8
  %17 = load i32, i32* @MLXSW_REG_SPMS_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %3
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mlxsw_reg_spms_pack(i8* %26, i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @mlxsw_reg_spms_vid_pack(i8* %31, i32 %32, i32 %33)
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @spms, align 4
  %39 = call i32 @MLXSW_REG(i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @mlxsw_reg_write(i32 %37, i32 %39, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %25, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @mlxsw_sp_stp_spms_state(i32) #1

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
