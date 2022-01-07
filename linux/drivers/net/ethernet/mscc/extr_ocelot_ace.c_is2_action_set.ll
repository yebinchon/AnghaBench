; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_is2_action_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_is2_action_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcap_data = type { i32 }

@PORT_MASK = common dso_local global i32 0, align 4
@MASK_MODE = common dso_local global i32 0, align 4
@POLICE_ENA = common dso_local global i32 0, align 4
@POLICE_IDX = common dso_local global i32 0, align 4
@OCELOT_POLICER_DISCARD = common dso_local global i32 0, align 4
@CPU_QU_NUM = common dso_local global i32 0, align 4
@CPU_COPY_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcap_data*, i32)* @is2_action_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @is2_action_set(%struct.vcap_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vcap_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vcap_data* %0, %struct.vcap_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %33 [
    i32 129, label %6
    i32 128, label %20
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @PORT_MASK, align 4
  %8 = call i32 @VCAP_ACT_SET(i32 %7, i32 0)
  %9 = load i32, i32* @MASK_MODE, align 4
  %10 = call i32 @VCAP_ACT_SET(i32 %9, i32 1)
  %11 = load i32, i32* @POLICE_ENA, align 4
  %12 = call i32 @VCAP_ACT_SET(i32 %11, i32 1)
  %13 = load i32, i32* @POLICE_IDX, align 4
  %14 = load i32, i32* @OCELOT_POLICER_DISCARD, align 4
  %15 = call i32 @VCAP_ACT_SET(i32 %13, i32 %14)
  %16 = load i32, i32* @CPU_QU_NUM, align 4
  %17 = call i32 @VCAP_ACT_SET(i32 %16, i32 0)
  %18 = load i32, i32* @CPU_COPY_ENA, align 4
  %19 = call i32 @VCAP_ACT_SET(i32 %18, i32 0)
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @PORT_MASK, align 4
  %22 = call i32 @VCAP_ACT_SET(i32 %21, i32 0)
  %23 = load i32, i32* @MASK_MODE, align 4
  %24 = call i32 @VCAP_ACT_SET(i32 %23, i32 1)
  %25 = load i32, i32* @POLICE_ENA, align 4
  %26 = call i32 @VCAP_ACT_SET(i32 %25, i32 0)
  %27 = load i32, i32* @POLICE_IDX, align 4
  %28 = call i32 @VCAP_ACT_SET(i32 %27, i32 0)
  %29 = load i32, i32* @CPU_QU_NUM, align 4
  %30 = call i32 @VCAP_ACT_SET(i32 %29, i32 0)
  %31 = load i32, i32* @CPU_COPY_ENA, align 4
  %32 = call i32 @VCAP_ACT_SET(i32 %31, i32 1)
  br label %33

33:                                               ; preds = %2, %20, %6
  ret void
}

declare dso_local i32 @VCAP_ACT_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
