; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_init_otp_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_init_otp_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_VAL_RESET_REQ = common dso_local global i32 0, align 4
@CSR_DBG_LINK_PWR_MGMT_REG = common dso_local global i32 0, align 4
@CSR_RESET_LINK_PWR_MGMT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_init_otp_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_init_otp_access(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @iwl_finish_nic_init(%struct.iwl_trans* %5, %struct.TYPE_4__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %17 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %18 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %15, i32 %16, i32 %17)
  %19 = call i32 @udelay(i32 5)
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %21 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %22 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %23 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %20, i32 %21, i32 %22)
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %14
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %34 = load i32, i32* @CSR_DBG_LINK_PWR_MGMT_REG, align 4
  %35 = load i32, i32* @CSR_RESET_LINK_PWR_MGMT_DISABLED, align 4
  %36 = call i32 @iwl_set_bit(%struct.iwl_trans* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %14
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @iwl_finish_nic_init(%struct.iwl_trans*, %struct.TYPE_4__*) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
