; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_rx_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_rx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }

@NIX_AF_RX_SW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NIX RX software sync failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32)* @nix_rx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_rx_sync(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rvu*, %struct.rvu** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NIX_AF_RX_SW_SYNC, align 4
  %9 = call i32 @BIT_ULL(i32 0)
  %10 = call i32 @rvu_write64(%struct.rvu* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.rvu*, %struct.rvu** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NIX_AF_RX_SW_SYNC, align 4
  %14 = call i32 @BIT_ULL(i32 0)
  %15 = call i32 @rvu_poll_reg(%struct.rvu* %11, i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.rvu*, %struct.rvu** %3, align 8
  %20 = getelementptr inbounds %struct.rvu, %struct.rvu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.rvu*, %struct.rvu** %3, align 8
  %25 = call i64 @is_rvu_9xxx_A0(%struct.rvu* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @usleep_range(i32 50, i32 60)
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_poll_reg(%struct.rvu*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @is_rvu_9xxx_A0(%struct.rvu*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
