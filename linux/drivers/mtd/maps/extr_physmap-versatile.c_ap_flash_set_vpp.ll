; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-versatile.c_ap_flash_set_vpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-versatile.c_ap_flash_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }

@syscon_regmap = common dso_local global i32 0, align 4
@INTEGRATOR_SC_CTRLS_OFFSET = common dso_local global i32 0, align 4
@INTEGRATOR_SC_CTRL_FLVPPEN = common dso_local global i32 0, align 4
@INTEGRATOR_SC_CTRL_FLWP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error enabling AP VPP\0A\00", align 1
@INTEGRATOR_SC_CTRLC_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"error disabling AP VPP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @ap_flash_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_flash_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* @syscon_regmap, align 4
  %10 = load i32, i32* @INTEGRATOR_SC_CTRLS_OFFSET, align 4
  %11 = load i32, i32* @INTEGRATOR_SC_CTRL_FLVPPEN, align 4
  %12 = load i32, i32* @INTEGRATOR_SC_CTRL_FLWP, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @regmap_write(i32 %9, i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %8
  br label %32

20:                                               ; preds = %2
  %21 = load i32, i32* @syscon_regmap, align 4
  %22 = load i32, i32* @INTEGRATOR_SC_CTRLC_OFFSET, align 4
  %23 = load i32, i32* @INTEGRATOR_SC_CTRL_FLVPPEN, align 4
  %24 = load i32, i32* @INTEGRATOR_SC_CTRL_FLWP, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @regmap_write(i32 %21, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20
  br label %32

32:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
