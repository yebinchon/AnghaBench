; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_wiphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_wiphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.orinoco_private = type { i32 }

@orinoco_wiphy_privid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orinoco_wiphy_init(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %4 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %5 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %4)
  store %struct.orinoco_private* %5, %struct.orinoco_private** %3, align 8
  %6 = load i32, i32* @orinoco_wiphy_privid, align 4
  %7 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %8 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %10 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %11 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @set_wiphy_dev(%struct.wiphy* %9, i32 %12)
  ret void
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @set_wiphy_dev(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
