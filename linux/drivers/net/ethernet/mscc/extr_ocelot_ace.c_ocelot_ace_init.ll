; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ocelot = type { i32 }
%struct.vcap_data = type { i32 }

@vcap_is2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@S2_CORE_MV_CFG = common dso_local global i32 0, align 4
@VCAP_CMD_INITIALIZE = common dso_local global i32 0, align 4
@VCAP_SEL_ENTRY = common dso_local global i32 0, align 4
@VCAP_SEL_ACTION = common dso_local global i32 0, align 4
@VCAP_SEL_COUNTER = common dso_local global i32 0, align 4
@ANA_POL_MODE_CFG = common dso_local global i32 0, align 4
@OCELOT_POLICER_DISCARD = common dso_local global i32 0, align 4
@ANA_POL_PIR_CFG = common dso_local global i32 0, align 4
@ANA_POL_PIR_STATE = common dso_local global i32 0, align 4
@ANA_POL_CIR_CFG = common dso_local global i32 0, align 4
@ANA_POL_CIR_STATE = common dso_local global i32 0, align 4
@acl_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_ace_init(%struct.ocelot* %0) #0 {
  %2 = alloca %struct.ocelot*, align 8
  %3 = alloca %struct.vcap_data, align 4
  store %struct.ocelot* %0, %struct.ocelot** %2, align 8
  %4 = call i32 @memset(%struct.vcap_data* %3, i32 0, i32 4)
  %5 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %6 = call i32 @vcap_entry2cache(%struct.ocelot* %5, %struct.vcap_data* %3)
  %7 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 1), align 4
  %9 = load i32, i32* @S2_CORE_MV_CFG, align 4
  %10 = call i32 @ocelot_write(%struct.ocelot* %7, i32 %8, i32 %9)
  %11 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %12 = load i32, i32* @VCAP_CMD_INITIALIZE, align 4
  %13 = load i32, i32* @VCAP_SEL_ENTRY, align 4
  %14 = call i32 @vcap_cmd(%struct.ocelot* %11, i32 0, i32 %12, i32 %13)
  %15 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %16 = call i32 @vcap_action2cache(%struct.ocelot* %15, %struct.vcap_data* %3)
  %17 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 0), align 4
  %19 = load i32, i32* @S2_CORE_MV_CFG, align 4
  %20 = call i32 @ocelot_write(%struct.ocelot* %17, i32 %18, i32 %19)
  %21 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %22 = load i32, i32* @VCAP_CMD_INITIALIZE, align 4
  %23 = load i32, i32* @VCAP_SEL_ACTION, align 4
  %24 = load i32, i32* @VCAP_SEL_COUNTER, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vcap_cmd(%struct.ocelot* %21, i32 0, i32 %22, i32 %25)
  %27 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %28 = load i32, i32* @ANA_POL_MODE_CFG, align 4
  %29 = load i32, i32* @OCELOT_POLICER_DISCARD, align 4
  %30 = call i32 @ocelot_write_gix(%struct.ocelot* %27, i32 665, i32 %28, i32 %29)
  %31 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %32 = load i32, i32* @ANA_POL_PIR_CFG, align 4
  %33 = load i32, i32* @OCELOT_POLICER_DISCARD, align 4
  %34 = call i32 @ocelot_write_gix(%struct.ocelot* %31, i32 1, i32 %32, i32 %33)
  %35 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %36 = load i32, i32* @ANA_POL_PIR_STATE, align 4
  %37 = load i32, i32* @OCELOT_POLICER_DISCARD, align 4
  %38 = call i32 @ocelot_write_gix(%struct.ocelot* %35, i32 4194303, i32 %36, i32 %37)
  %39 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %40 = load i32, i32* @ANA_POL_CIR_CFG, align 4
  %41 = load i32, i32* @OCELOT_POLICER_DISCARD, align 4
  %42 = call i32 @ocelot_write_gix(%struct.ocelot* %39, i32 0, i32 %40, i32 %41)
  %43 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %44 = load i32, i32* @ANA_POL_CIR_STATE, align 4
  %45 = load i32, i32* @OCELOT_POLICER_DISCARD, align 4
  %46 = call i32 @ocelot_write_gix(%struct.ocelot* %43, i32 4194303, i32 %44, i32 %45)
  %47 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %48 = call i32 @ocelot_acl_block_create(%struct.ocelot* %47)
  store i32 %48, i32* @acl_block, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.vcap_data*, i32, i32) #1

declare dso_local i32 @vcap_entry2cache(%struct.ocelot*, %struct.vcap_data*) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @vcap_cmd(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @vcap_action2cache(%struct.ocelot*, %struct.vcap_data*) #1

declare dso_local i32 @ocelot_write_gix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @ocelot_acl_block_create(%struct.ocelot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
