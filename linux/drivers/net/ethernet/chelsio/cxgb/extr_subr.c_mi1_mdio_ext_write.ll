; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_mi1_mdio_ext_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_mi1_mdio_ext_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.adapter* }
%struct.adapter = type { i32 }

@A_ELMER0_PORT0_MI1_ADDR = common dso_local global i32 0, align 4
@A_ELMER0_PORT0_MI1_DATA = common dso_local global i32 0, align 4
@A_ELMER0_PORT0_MI1_OP = common dso_local global i32 0, align 4
@MI1_OP_INDIRECT_ADDRESS = common dso_local global i32 0, align 4
@MI1_OP_INDIRECT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32)* @mi1_mdio_ext_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi1_mdio_ext_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @V_MI1_REG_ADDR(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @V_MI1_PHY_ADDR(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.adapter*, %struct.adapter** %11, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.adapter*, %struct.adapter** %11, align 8
  %25 = load i32, i32* @A_ELMER0_PORT0_MI1_ADDR, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @__t1_tpi_write(%struct.adapter* %24, i32 %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %11, align 8
  %29 = load i32, i32* @A_ELMER0_PORT0_MI1_DATA, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @__t1_tpi_write(%struct.adapter* %28, i32 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %11, align 8
  %33 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %34 = load i32, i32* @MI1_OP_INDIRECT_ADDRESS, align 4
  %35 = call i32 @__t1_tpi_write(%struct.adapter* %32, i32 %33, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %11, align 8
  %37 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %38 = call i32 @mi1_wait_until_ready(%struct.adapter* %36, i32 %37)
  %39 = load %struct.adapter*, %struct.adapter** %11, align 8
  %40 = load i32, i32* @A_ELMER0_PORT0_MI1_DATA, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @__t1_tpi_write(%struct.adapter* %39, i32 %40, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %11, align 8
  %44 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %45 = load i32, i32* @MI1_OP_INDIRECT_WRITE, align 4
  %46 = call i32 @__t1_tpi_write(%struct.adapter* %43, i32 %44, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %11, align 8
  %48 = load i32, i32* @A_ELMER0_PORT0_MI1_OP, align 4
  %49 = call i32 @mi1_wait_until_ready(%struct.adapter* %47, i32 %48)
  %50 = load %struct.adapter*, %struct.adapter** %11, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  ret i32 0
}

declare dso_local i32 @V_MI1_REG_ADDR(i32) #1

declare dso_local i32 @V_MI1_PHY_ADDR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__t1_tpi_write(%struct.adapter*, i32, i32) #1

declare dso_local i32 @mi1_wait_until_ready(%struct.adapter*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
