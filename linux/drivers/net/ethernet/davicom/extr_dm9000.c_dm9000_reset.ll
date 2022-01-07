; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"resetting device\0A\00", align 1
@DM9000_NCR = common dso_local global i32 0, align 4
@NCR_RST = common dso_local global i32 0, align 4
@NCR_MAC_LBK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dm9000 did not respond to first reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dm9000 did not respond to second reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.board_info*)* @dm9000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_reset(%struct.board_info* %0) #0 {
  %2 = alloca %struct.board_info*, align 8
  store %struct.board_info* %0, %struct.board_info** %2, align 8
  %3 = load %struct.board_info*, %struct.board_info** %2, align 8
  %4 = getelementptr inbounds %struct.board_info, %struct.board_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.board_info*, %struct.board_info** %2, align 8
  %8 = load i32, i32* @DM9000_NCR, align 4
  %9 = load i32, i32* @NCR_RST, align 4
  %10 = load i32, i32* @NCR_MAC_LBK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @iow(%struct.board_info* %7, i32 %8, i32 %11)
  %13 = call i32 @udelay(i32 100)
  %14 = load %struct.board_info*, %struct.board_info** %2, align 8
  %15 = load i32, i32* @DM9000_NCR, align 4
  %16 = call i32 @ior(%struct.board_info* %14, i32 %15)
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.board_info*, %struct.board_info** %2, align 8
  %21 = getelementptr inbounds %struct.board_info, %struct.board_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.board_info*, %struct.board_info** %2, align 8
  %26 = load i32, i32* @DM9000_NCR, align 4
  %27 = call i32 @iow(%struct.board_info* %25, i32 %26, i32 0)
  %28 = load %struct.board_info*, %struct.board_info** %2, align 8
  %29 = load i32, i32* @DM9000_NCR, align 4
  %30 = load i32, i32* @NCR_RST, align 4
  %31 = load i32, i32* @NCR_MAC_LBK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @iow(%struct.board_info* %28, i32 %29, i32 %32)
  %34 = call i32 @udelay(i32 100)
  %35 = load %struct.board_info*, %struct.board_info** %2, align 8
  %36 = load i32, i32* @DM9000_NCR, align 4
  %37 = call i32 @ior(%struct.board_info* %35, i32 %36)
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.board_info*, %struct.board_info** %2, align 8
  %42 = getelementptr inbounds %struct.board_info, %struct.board_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %24
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ior(%struct.board_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
