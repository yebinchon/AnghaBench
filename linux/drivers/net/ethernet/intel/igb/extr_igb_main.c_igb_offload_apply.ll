; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_offload_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_offload_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_offload_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_offload_apply(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %6 = call i32 @is_fqtss_enabled(%struct.igb_adapter* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %10 = call i32 @enable_fqtss(%struct.igb_adapter* %9, i32 1)
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @igb_config_tx_modes(%struct.igb_adapter* %12, i32 %13)
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %16 = call i32 @is_any_cbs_enabled(%struct.igb_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = call i32 @is_any_txtime_enabled(%struct.igb_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %24 = call i32 @enable_fqtss(%struct.igb_adapter* %23, i32 0)
  br label %25

25:                                               ; preds = %8, %22, %18, %11
  ret void
}

declare dso_local i32 @is_fqtss_enabled(%struct.igb_adapter*) #1

declare dso_local i32 @enable_fqtss(%struct.igb_adapter*, i32) #1

declare dso_local i32 @igb_config_tx_modes(%struct.igb_adapter*, i32) #1

declare dso_local i32 @is_any_cbs_enabled(%struct.igb_adapter*) #1

declare dso_local i32 @is_any_txtime_enabled(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
