; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_reg_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_reg_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32 }
%struct.lbs_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @lbs_reg_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_reg_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %7 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %6)
  store %struct.lbs_private* %7, %struct.lbs_private** %5, align 8
  %8 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %12 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32 %10, i32 %13, i32 4)
  %15 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %16 = call i64 @lbs_iface_active(%struct.lbs_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %20 = call i32 @lbs_set_11d_domain_info(%struct.lbs_private* %19)
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @lbs_iface_active(%struct.lbs_private*) #1

declare dso_local i32 @lbs_set_11d_domain_info(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
