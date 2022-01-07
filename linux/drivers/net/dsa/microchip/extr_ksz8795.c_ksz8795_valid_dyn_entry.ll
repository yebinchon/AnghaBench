; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_valid_dyn_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_valid_dyn_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@REG_IND_DATA_CHECK = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_NOT_READY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@REG_IND_DATA_8 = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_MAC_EMPTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i32*)* @ksz8795_valid_dyn_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8795_valid_dyn_entry(%struct.ksz_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 100, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %9 = load i32, i32* @REG_IND_DATA_CHECK, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ksz_read8(%struct.ksz_device* %8, i32 %9, i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %7
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DYNAMIC_MAC_TABLE_NOT_READY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  br i1 %24, label %7, label %25

25:                                               ; preds = %23
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DYNAMIC_MAC_TABLE_NOT_READY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %25
  %35 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %36 = load i32, i32* @REG_IND_DATA_8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ksz_read8(%struct.ksz_device* %35, i32 %36, i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DYNAMIC_MAC_TABLE_MAC_EMPTY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %44, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
