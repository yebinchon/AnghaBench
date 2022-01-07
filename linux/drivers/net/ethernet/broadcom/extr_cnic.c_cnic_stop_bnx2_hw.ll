; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_stop_bnx2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_stop_bnx2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }

@BNX2_CP_SCRATCH = common dso_local global i64 0, align 8
@BNX2_COM_SCRATCH = common dso_local global i64 0, align 8
@KWQ_CID = common dso_local global i32 0, align 4
@KCQ_CID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_stop_bnx2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_stop_bnx2_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %3 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %4 = call i32 @cnic_disable_bnx2_int_sync(%struct.cnic_dev* %3)
  %5 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %6 = load i64, i64* @BNX2_CP_SCRATCH, align 8
  %7 = add nsw i64 %6, 32
  %8 = call i32 @cnic_reg_wr_ind(%struct.cnic_dev* %5, i64 %7, i32 0)
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %10 = load i64, i64* @BNX2_COM_SCRATCH, align 8
  %11 = add nsw i64 %10, 32
  %12 = call i32 @cnic_reg_wr_ind(%struct.cnic_dev* %9, i64 %11, i32 0)
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %14 = load i32, i32* @KWQ_CID, align 4
  %15 = call i32 @cnic_init_context(%struct.cnic_dev* %13, i32 %14)
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %17 = load i32, i32* @KCQ_CID, align 4
  %18 = call i32 @cnic_init_context(%struct.cnic_dev* %16, i32 %17)
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %20 = call i32 @cnic_setup_5709_context(%struct.cnic_dev* %19, i32 0)
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %22 = call i32 @cnic_free_irq(%struct.cnic_dev* %21)
  %23 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %24 = call i32 @cnic_free_resc(%struct.cnic_dev* %23)
  ret void
}

declare dso_local i32 @cnic_disable_bnx2_int_sync(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_reg_wr_ind(%struct.cnic_dev*, i64, i32) #1

declare dso_local i32 @cnic_init_context(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_setup_5709_context(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_free_irq(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_free_resc(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
