; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_eq_update_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_eq_update_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i32, i32 }

@IDX = common dso_local global i32 0, align 4
@WRAPPED = common dso_local global i32 0, align 4
@INT_ARMED = common dso_local global i32 0, align 4
@XOR_CHKSUM = common dso_local global i32 0, align 4
@EQ_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_eq*)* @eq_update_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eq_update_ci(%struct.hinic_eq* %0) #0 {
  %2 = alloca %struct.hinic_eq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %2, align 8
  %5 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %6 = call i32 @EQ_CONS_IDX_REG_ADDR(%struct.hinic_eq* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %8 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @hinic_hwif_read_reg(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IDX, align 4
  %14 = call i32 @HINIC_EQ_CI_CLEAR(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @WRAPPED, align 4
  %17 = call i32 @HINIC_EQ_CI_CLEAR(i32 %15, i32 %16)
  %18 = and i32 %14, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @INT_ARMED, align 4
  %21 = call i32 @HINIC_EQ_CI_CLEAR(i32 %19, i32 %20)
  %22 = and i32 %18, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @XOR_CHKSUM, align 4
  %25 = call i32 @HINIC_EQ_CI_CLEAR(i32 %23, i32 %24)
  %26 = and i32 %22, %25
  store i32 %26, i32* %3, align 4
  %27 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %28 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IDX, align 4
  %31 = call i32 @HINIC_EQ_CI_SET(i32 %29, i32 %30)
  %32 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %33 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WRAPPED, align 4
  %36 = call i32 @HINIC_EQ_CI_SET(i32 %34, i32 %35)
  %37 = or i32 %31, %36
  %38 = load i32, i32* @EQ_ARMED, align 4
  %39 = load i32, i32* @INT_ARMED, align 4
  %40 = call i32 @HINIC_EQ_CI_SET(i32 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @eq_cons_idx_checksum_set(i32 %44)
  %46 = load i32, i32* @XOR_CHKSUM, align 4
  %47 = call i32 @HINIC_EQ_CI_SET(i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %51 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @hinic_hwif_write_reg(i32 %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @EQ_CONS_IDX_REG_ADDR(%struct.hinic_eq*) #1

declare dso_local i32 @hinic_hwif_read_reg(i32, i32) #1

declare dso_local i32 @HINIC_EQ_CI_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_EQ_CI_SET(i32, i32) #1

declare dso_local i32 @eq_cons_idx_checksum_set(i32) #1

declare dso_local i32 @hinic_hwif_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
