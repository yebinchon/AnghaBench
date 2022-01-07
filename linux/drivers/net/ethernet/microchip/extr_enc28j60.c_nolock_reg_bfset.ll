; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_nolock_reg_bfset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_nolock_reg_bfset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { i32 }

@ENC28J60_BIT_FIELD_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enc28j60_net*, i32, i32)* @nolock_reg_bfset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nolock_reg_bfset(%struct.enc28j60_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.enc28j60_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @enc28j60_set_bank(%struct.enc28j60_net* %7, i32 %8)
  %10 = load %struct.enc28j60_net*, %struct.enc28j60_net** %4, align 8
  %11 = load i32, i32* @ENC28J60_BIT_FIELD_SET, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @spi_write_op(%struct.enc28j60_net* %10, i32 %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @enc28j60_set_bank(%struct.enc28j60_net*, i32) #1

declare dso_local i32 @spi_write_op(%struct.enc28j60_net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
