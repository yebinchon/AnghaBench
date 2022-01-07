; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_release_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_release_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cxl = type { %struct.cxl* }

@.str = private unnamed_addr constant [21 x i8] c"cxl_release_adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @cxl_release_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_release_adapter(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cxl*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.cxl* @to_cxl_adapter(%struct.device* %4)
  store %struct.cxl* %5, %struct.cxl** %3, align 8
  %6 = call i32 @pr_devel(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cxl*, %struct.cxl** %3, align 8
  %8 = call i32 @cxl_remove_adapter_nr(%struct.cxl* %7)
  %9 = load %struct.cxl*, %struct.cxl** %3, align 8
  %10 = getelementptr inbounds %struct.cxl, %struct.cxl* %9, i32 0, i32 0
  %11 = load %struct.cxl*, %struct.cxl** %10, align 8
  %12 = call i32 @kfree(%struct.cxl* %11)
  %13 = load %struct.cxl*, %struct.cxl** %3, align 8
  %14 = call i32 @kfree(%struct.cxl* %13)
  ret void
}

declare dso_local %struct.cxl* @to_cxl_adapter(%struct.device*) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @cxl_remove_adapter_nr(%struct.cxl*) #1

declare dso_local i32 @kfree(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
