; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_tc_qdisc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_tc_qdisc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc* }
%struct.mlxsw_sp_qdisc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_DEFAULT_TCLASS = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_tc_qdisc_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlxsw_sp_qdisc* @kzalloc(i32 8, i32 %6)
  store %struct.mlxsw_sp_qdisc* %7, %struct.mlxsw_sp_qdisc** %4, align 8
  %8 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %9 = icmp ne %struct.mlxsw_sp_qdisc* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %13, i32 0, i32 0
  store %struct.mlxsw_sp_qdisc* %12, %struct.mlxsw_sp_qdisc** %14, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %16, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %17, i32 0, i32 0
  store i32 255, i32* %18, align 4
  %19 = load i32, i32* @MLXSW_SP_PORT_DEFAULT_TCLASS, align 4
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 0
  %22 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %21, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlxsw_sp_qdisc* @kcalloc(i32 %24, i32 8, i32 %25)
  store %struct.mlxsw_sp_qdisc* %26, %struct.mlxsw_sp_qdisc** %4, align 8
  %27 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %28 = icmp ne %struct.mlxsw_sp_qdisc* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %11
  br label %51

30:                                               ; preds = %11
  %31 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %32, i32 0, i32 1
  store %struct.mlxsw_sp_qdisc* %31, %struct.mlxsw_sp_qdisc** %33, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %47, %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %40, i32 0, i32 1
  %42 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %42, i64 %44
  %46 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %45, i32 0, i32 1
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %34

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %59

51:                                               ; preds = %29
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %52, i32 0, i32 0
  %54 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %53, align 8
  %55 = call i32 @kfree(%struct.mlxsw_sp_qdisc* %54)
  br label %56

56:                                               ; preds = %51, %10
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.mlxsw_sp_qdisc* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_qdisc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
