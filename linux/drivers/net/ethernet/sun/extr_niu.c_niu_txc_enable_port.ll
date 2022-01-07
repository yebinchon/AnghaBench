; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_txc_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_txc_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@TXC_CONTROL = common dso_local global i32 0, align 4
@TXC_CONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32)* @niu_txc_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_txc_enable_port(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @niu_lock_parent(%struct.niu* %8, i64 %9)
  %11 = load i32, i32* @TXC_CONTROL, align 4
  %12 = call i32 @nr64(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @TXC_CONTROL_ENABLE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TXC_CONTROL_ENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @TXC_CONTROL_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %25
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* @TXC_CONTROL, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @nw64(i32 %42, i32 %43)
  %45 = load %struct.niu*, %struct.niu** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @niu_unlock_parent(%struct.niu* %45, i64 %46)
  ret void
}

declare dso_local i32 @niu_lock_parent(%struct.niu*, i64) #1

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @niu_unlock_parent(%struct.niu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
