; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_pp.c_enic_unset_port_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_pp.c_enic_unset_port_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }

@vnic_dev_deinit = common dso_local global i32 0, align 4
@PORT_SELF_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, i32)* @enic_unset_port_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_unset_port_profile(%struct.enic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.enic*, %struct.enic** %4, align 8
  %10 = load i32, i32* @vnic_dev_deinit, align 4
  %11 = call i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32 %7, i32 %8, %struct.enic* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @enic_dev_status_to_errno(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PORT_SELF_VF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.enic*, %struct.enic** %4, align 8
  %23 = call i32 @enic_reset_addr_lists(%struct.enic* %22)
  br label %24

24:                                               ; preds = %21, %17
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32, i32, %struct.enic*, i32) #1

declare dso_local i32 @enic_dev_status_to_errno(i32) #1

declare dso_local i32 @enic_reset_addr_lists(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
