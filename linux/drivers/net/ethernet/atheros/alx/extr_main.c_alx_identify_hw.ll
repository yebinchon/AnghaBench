; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_identify_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_identify_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { %struct.alx_hw }
%struct.alx_hw = type { i32 }

@ALX_REV_C0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ALX_REV_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*)* @alx_identify_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_identify_hw(%struct.alx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  %6 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %6, i32 0, i32 0
  store %struct.alx_hw* %7, %struct.alx_hw** %4, align 8
  %8 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %9 = call i32 @alx_hw_revision(%struct.alx_hw* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ALX_REV_C0, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ALX_REV_B0, align 4
  %19 = icmp sge i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 4, i32 2
  %22 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %23 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @alx_hw_revision(%struct.alx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
