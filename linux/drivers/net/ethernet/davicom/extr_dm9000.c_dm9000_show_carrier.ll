; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_show_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_show_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32, %struct.mii_if_info, %struct.net_device* }
%struct.mii_if_info = type { i32 (i32, i32, i32)*, i32, i32 }
%struct.net_device = type { i32 }

@DM9000_NCR = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: link up, %dMbps, %s-duplex, lpa 0x%04X\0A\00", align 1
@NSR_SPEED = common dso_local global i32 0, align 4
@NCR_FDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.board_info*, i32, i32)* @dm9000_show_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_show_carrier(%struct.board_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.board_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mii_if_info*, align 8
  %10 = alloca i32, align 4
  store %struct.board_info* %0, %struct.board_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.board_info*, %struct.board_info** %4, align 8
  %12 = getelementptr inbounds %struct.board_info, %struct.board_info* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.board_info*, %struct.board_info** %4, align 8
  %15 = getelementptr inbounds %struct.board_info, %struct.board_info* %14, i32 0, i32 1
  store %struct.mii_if_info* %15, %struct.mii_if_info** %9, align 8
  %16 = load %struct.board_info*, %struct.board_info** %4, align 8
  %17 = load i32, i32* @DM9000_NCR, align 4
  %18 = call i32 @dm9000_read_locked(%struct.board_info* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  %22 = load %struct.mii_if_info*, %struct.mii_if_info** %9, align 8
  %23 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = load %struct.mii_if_info*, %struct.mii_if_info** %9, align 8
  %26 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mii_if_info*, %struct.mii_if_info** %9, align 8
  %29 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MII_LPA, align 4
  %32 = call i32 %24(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.board_info*, %struct.board_info** %4, align 8
  %34 = getelementptr inbounds %struct.board_info, %struct.board_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @NSR_SPEED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 10, i32 100
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @NCR_FDX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %44, i8* %50, i32 %51)
  br label %61

53:                                               ; preds = %3
  %54 = load %struct.board_info*, %struct.board_info** %4, align 8
  %55 = getelementptr inbounds %struct.board_info, %struct.board_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %21
  ret void
}

declare dso_local i32 @dm9000_read_locked(%struct.board_info*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
