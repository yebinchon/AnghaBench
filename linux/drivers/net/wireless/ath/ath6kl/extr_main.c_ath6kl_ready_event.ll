; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_ready_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_ready_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ready event mac addr %pM sw_ver 0x%x abi_ver 0x%x cap 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@WMI_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_ready_event(i8* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath6kl*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ath6kl*
  store %struct.ath6kl* %13, %struct.ath6kl** %11, align 8
  %14 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %15 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = call i32 @memcpy(i32 %16, i32* %17, i32 %18)
  %20 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %21 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ath6kl_dbg(i32 %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %39 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %42 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strlen(i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %5
  %49 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %50 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, -268435456
  %59 = lshr i32 %58, 28
  %60 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %61 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 251658240
  %65 = ashr i32 %64, 24
  %66 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %67 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 16711680
  %71 = ashr i32 %70, 16
  %72 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %73 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 65535
  %77 = call i32 @snprintf(i32 %53, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %65, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %48, %5
  %79 = load i32, i32* @WMI_READY, align 4
  %80 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %81 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %80, i32 0, i32 1
  %82 = call i32 @set_bit(i32 %79, i32* %81)
  %83 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %84 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %83, i32 0, i32 0
  %85 = call i32 @wake_up(i32* %84)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
