; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x__init_func_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x__init_func_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@func_rdata = common dso_local global i32 0, align 4
@func_afex_rdata = common dso_local global i32 0, align 4
@bnx2x_func_sp_drv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x__init_func_obj(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = call i32 @bnx2x_setup_dmae(%struct.bnx2x* %3)
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = load i32, i32* @func_rdata, align 4
  %10 = call i32 @bnx2x_sp(%struct.bnx2x* %8, i32 %9)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = load i32, i32* @func_rdata, align 4
  %13 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %11, i32 %12)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = load i32, i32* @func_afex_rdata, align 4
  %16 = call i32 @bnx2x_sp(%struct.bnx2x* %14, i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = load i32, i32* @func_afex_rdata, align 4
  %19 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %17, i32 %18)
  %20 = call i32 @bnx2x_init_func_obj(%struct.bnx2x* %5, i32* %7, i32 %10, i32 %13, i32 %16, i32 %19, i32* @bnx2x_func_sp_drv)
  ret void
}

declare dso_local i32 @bnx2x_setup_dmae(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_func_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
