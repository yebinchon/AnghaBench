; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_write_prph64_no_grab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_write_prph64_no_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_write_prph64_no_grab(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @trace_iwlwifi_dev_iowrite_prph64(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %13, i32 %14, i32 %15)
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 32
  %22 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %17, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @trace_iwlwifi_dev_iowrite_prph64(i32, i32, i32) #1

declare dso_local i32 @iwl_write_prph_no_grab(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
