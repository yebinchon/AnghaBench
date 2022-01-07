; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_hw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_hw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_NIC_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hardware %s ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_set_hw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_set_hw_ready(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %6 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_READY, align 4
  %7 = call i32 @il_set_bit(%struct.il_priv* %4, i32 %5, i32 %6)
  %8 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %9 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %10 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_READY, align 4
  %11 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_READY, align 4
  %12 = call i32 @_il_poll_bit(%struct.il_priv* %8, i32 %9, i32 %10, i32 %11, i32 100)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @D_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %24)
  ret void
}

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @D_INFO(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
