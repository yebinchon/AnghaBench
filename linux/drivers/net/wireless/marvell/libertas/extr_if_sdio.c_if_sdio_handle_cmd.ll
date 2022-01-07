; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { %struct.lbs_private* }
%struct.lbs_private = type { i64, i32*, i32, i32* }

@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"response packet too large (%d bytes)\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i64*, i32)* @if_sdio_handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_handle_cmd(%struct.if_sdio_card* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %12 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %11, i32 0, i32 0
  %13 = load %struct.lbs_private*, %struct.lbs_private** %12, align 8
  store %struct.lbs_private* %13, %struct.lbs_private** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @E2BIG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 2
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %43 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64*, i64** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @memcpy(i32 %52, i64* %53, i32 %54)
  %56 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @lbs_notify_command_response(%struct.lbs_private* %56, i64 %57)
  %59 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 2
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %22, %17
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @lbs_notify_command_response(%struct.lbs_private*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
