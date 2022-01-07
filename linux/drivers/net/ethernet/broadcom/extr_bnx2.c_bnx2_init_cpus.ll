; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.bnx2_mips_fw_file = type { i32, i32, i32, i32, i32 }
%struct.bnx2_rv2p_fw_file = type { i32, i32 }

@RV2P_PROC1 = common dso_local global i32 0, align 4
@RV2P_PROC2 = common dso_local global i32 0, align 4
@cpu_reg_rxp = common dso_local global i32 0, align 4
@cpu_reg_txp = common dso_local global i32 0, align 4
@cpu_reg_tpat = common dso_local global i32 0, align 4
@cpu_reg_com = common dso_local global i32 0, align 4
@cpu_reg_cp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_init_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_init_cpus(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca %struct.bnx2_mips_fw_file*, align 8
  %4 = alloca %struct.bnx2_rv2p_fw_file*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bnx2_mips_fw_file*
  store %struct.bnx2_mips_fw_file* %11, %struct.bnx2_mips_fw_file** %3, align 8
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bnx2_rv2p_fw_file*
  store %struct.bnx2_rv2p_fw_file* %17, %struct.bnx2_rv2p_fw_file** %4, align 8
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = load i32, i32* @RV2P_PROC1, align 4
  %20 = load %struct.bnx2_rv2p_fw_file*, %struct.bnx2_rv2p_fw_file** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2_rv2p_fw_file, %struct.bnx2_rv2p_fw_file* %20, i32 0, i32 1
  %22 = call i32 @load_rv2p_fw(%struct.bnx2* %18, i32 %19, i32* %21)
  %23 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %24 = load i32, i32* @RV2P_PROC2, align 4
  %25 = load %struct.bnx2_rv2p_fw_file*, %struct.bnx2_rv2p_fw_file** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2_rv2p_fw_file, %struct.bnx2_rv2p_fw_file* %25, i32 0, i32 0
  %27 = call i32 @load_rv2p_fw(%struct.bnx2* %23, i32 %24, i32* %26)
  %28 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %29 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %29, i32 0, i32 4
  %31 = call i32 @load_cpu_fw(%struct.bnx2* %28, i32* @cpu_reg_rxp, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %37 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %37, i32 0, i32 3
  %39 = call i32 @load_cpu_fw(%struct.bnx2* %36, i32* @cpu_reg_txp, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %64

43:                                               ; preds = %35
  %44 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %45 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %45, i32 0, i32 2
  %47 = call i32 @load_cpu_fw(%struct.bnx2* %44, i32* @cpu_reg_tpat, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %53 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %3, align 8
  %54 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %53, i32 0, i32 1
  %55 = call i32 @load_cpu_fw(%struct.bnx2* %52, i32* @cpu_reg_com, i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %3, align 8
  %62 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %61, i32 0, i32 0
  %63 = call i32 @load_cpu_fw(%struct.bnx2* %60, i32* @cpu_reg_cp, i32* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %58, %50, %42, %34
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @load_rv2p_fw(%struct.bnx2*, i32, i32*) #1

declare dso_local i32 @load_cpu_fw(%struct.bnx2*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
