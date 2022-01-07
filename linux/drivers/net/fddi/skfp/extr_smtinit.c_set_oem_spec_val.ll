; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smtinit.c_set_oem_spec_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smtinit.c_set_oem_spec_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.fddi_mib }
%struct.fddi_mib = type { i32 }

@POLICY_MM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @set_oem_spec_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_oem_spec_val(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.fddi_mib*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  store %struct.fddi_mib* %5, %struct.fddi_mib** %3, align 8
  %6 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %7 = call signext i8 @OEMID(%struct.s_smc* %6, i32 0)
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 73
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @POLICY_MM, align 4
  %12 = load %struct.fddi_mib*, %struct.fddi_mib** %3, align 8
  %13 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

declare dso_local signext i8 @OEMID(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
