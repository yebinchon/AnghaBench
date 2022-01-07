; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c___bdx_vlan_rx_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c___bdx_vlan_rx_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vid=%d value=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid VID: %u (> 4096)\0A\00", align 1
@regVLAN_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"reg=%x, val=%x, bit=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"new val %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @__bdx_vlan_rx_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bdx_vlan_rx_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bdx_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.bdx_priv* %12, %struct.bdx_priv** %7, align 8
  %13 = load i32, i32* @ENTER, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @DBG2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 4096
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @RET()
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @regVLAN_0, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 32
  %30 = mul nsw i32 %29, 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = srem i32 %32, 32
  %34 = shl i32 1, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @READ_REG(%struct.bdx_priv* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i8*, i32, ...) @DBG2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %53

48:                                               ; preds = %26
  %49 = load i32, i32* %9, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, i32, ...) @DBG2(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.bdx_priv*, %struct.bdx_priv** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @WRITE_REG(%struct.bdx_priv* %56, i32 %57, i32 %58)
  %60 = call i32 (...) @RET()
  ret void
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG2(i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @RET(...) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
