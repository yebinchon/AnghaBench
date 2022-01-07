; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_sge_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_sge_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_init*, i32, i32, i32*)* @cudbg_read_sge_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cudbg_read_sge_ctxt(%struct.cudbg_init* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %12 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %11, i32 0, i32 0
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %15 = call i64 @is_fw_attached(%struct.cudbg_init* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.adapter*, %struct.adapter** %9, align 8
  %19 = load %struct.adapter*, %struct.adapter** %9, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @t4_sge_ctxt_rd(%struct.adapter* %18, i32 %21, i32 %22, i32 %23, i32* %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %17, %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.adapter*, %struct.adapter** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @t4_sge_ctxt_rd_bd(%struct.adapter* %30, i32 %31, i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %29, %26
  ret void
}

declare dso_local i64 @is_fw_attached(%struct.cudbg_init*) #1

declare dso_local i32 @t4_sge_ctxt_rd(%struct.adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @t4_sge_ctxt_rd_bd(%struct.adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
