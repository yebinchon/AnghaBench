; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_restore_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_restore_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VPSS_CCDCIN = common dso_local global i32 0, align 4
@isif_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0Astarting isif_restore_defaults...\00", align 1
@isif_config_defaults = common dso_local global i32 0, align 4
@VPSS_CCDC_CLOCK = common dso_local global i32 0, align 4
@VPSS_IPIPEIF_CLOCK = common dso_local global i32 0, align 4
@VPSS_BL_CLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\0AEnd of isif_restore_defaults...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @isif_restore_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isif_restore_defaults() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @VPSS_CCDCIN, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 0), align 4
  %4 = call i32 @dev_dbg(i32 %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @isif_config_defaults, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 1, i32 0), align 4
  %6 = load i32, i32* @VPSS_CCDC_CLOCK, align 4
  %7 = call i32 @vpss_enable_clock(i32 %6, i32 1)
  %8 = load i32, i32* @VPSS_IPIPEIF_CLOCK, align 4
  %9 = call i32 @vpss_enable_clock(i32 %8, i32 1)
  %10 = load i32, i32* @VPSS_BL_CLOCK, align 4
  %11 = call i32 @vpss_enable_clock(i32 %10, i32 1)
  %12 = call i32 (...) @isif_config_gain_offset()
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @vpss_select_ccdc_source(i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isif_cfg, i32 0, i32 0), align 4
  %16 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @vpss_enable_clock(i32, i32) #1

declare dso_local i32 @isif_config_gain_offset(...) #1

declare dso_local i32 @vpss_select_ccdc_source(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
