; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.board_info = type { i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@DM9000_TCCR = common dso_local global i32 0, align 4
@TCCR_IP = common dso_local global i32 0, align 4
@TCCR_UDP = common dso_local global i32 0, align 4
@TCCR_TCP = common dso_local global i32 0, align 4
@DM9000_TXPLL = common dso_local global i32 0, align 4
@DM9000_TXPLH = common dso_local global i32 0, align 4
@DM9000_TCR = common dso_local global i32 0, align 4
@TCR_TXREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @dm9000_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_send_packet(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.board_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.board_info* @to_dm9000_board(%struct.net_device* %8)
  store %struct.board_info* %9, %struct.board_info** %7, align 8
  %10 = load %struct.board_info*, %struct.board_info** %7, align 8
  %11 = getelementptr inbounds %struct.board_info, %struct.board_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CHECKSUM_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.board_info*, %struct.board_info** %7, align 8
  %21 = load i32, i32* @DM9000_TCCR, align 4
  %22 = call i32 @iow(%struct.board_info* %20, i32 %21, i32 0)
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.board_info*, %struct.board_info** %7, align 8
  %25 = load i32, i32* @DM9000_TCCR, align 4
  %26 = load i32, i32* @TCCR_IP, align 4
  %27 = load i32, i32* @TCCR_UDP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TCCR_TCP, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @iow(%struct.board_info* %24, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.board_info*, %struct.board_info** %7, align 8
  %35 = getelementptr inbounds %struct.board_info, %struct.board_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.board_info*, %struct.board_info** %7, align 8
  %38 = load i32, i32* @DM9000_TXPLL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @iow(%struct.board_info* %37, i32 %38, i32 %39)
  %41 = load %struct.board_info*, %struct.board_info** %7, align 8
  %42 = load i32, i32* @DM9000_TXPLH, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 8
  %45 = call i32 @iow(%struct.board_info* %41, i32 %42, i32 %44)
  %46 = load %struct.board_info*, %struct.board_info** %7, align 8
  %47 = load i32, i32* @DM9000_TCR, align 4
  %48 = load i32, i32* @TCR_TXREQ, align 4
  %49 = call i32 @iow(%struct.board_info* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local %struct.board_info* @to_dm9000_board(%struct.net_device*) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
