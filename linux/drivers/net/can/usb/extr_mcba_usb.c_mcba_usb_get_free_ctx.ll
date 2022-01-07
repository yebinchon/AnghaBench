; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_get_free_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_get_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_usb_ctx = type { i64, i32, i64 }
%struct.mcba_priv = type { i32, i32, %struct.mcba_usb_ctx* }
%struct.can_frame = type { i64 }

@MCBA_MAX_TX_URBS = common dso_local global i32 0, align 4
@MCBA_CTX_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mcba_usb_ctx* (%struct.mcba_priv*, %struct.can_frame*)* @mcba_usb_get_free_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mcba_usb_ctx* @mcba_usb_get_free_ctx(%struct.mcba_priv* %0, %struct.can_frame* %1) #0 {
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.can_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcba_usb_ctx*, align 8
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  store %struct.can_frame* %1, %struct.can_frame** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.mcba_usb_ctx* null, %struct.mcba_usb_ctx** %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %53, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MCBA_MAX_TX_URBS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %7
  %12 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %12, i32 0, i32 2
  %14 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %14, i64 %16
  %18 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCBA_CTX_FREE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %11
  %23 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %23, i32 0, i32 2
  %25 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %25, i64 %27
  store %struct.mcba_usb_ctx* %28, %struct.mcba_usb_ctx** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %34 = icmp ne %struct.can_frame* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %39 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %48

43:                                               ; preds = %22
  %44 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %49, i32 0, i32 1
  %51 = call i32 @atomic_dec(i32* %50)
  br label %56

52:                                               ; preds = %11
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %7

56:                                               ; preds = %48, %7
  %57 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %57, i32 0, i32 1
  %59 = call i32 @atomic_read(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @netif_stop_queue(i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  ret %struct.mcba_usb_ctx* %67
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
