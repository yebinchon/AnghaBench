; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-bcm-iproc.c_mdio_mux_iproc_switch_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-bcm-iproc.c_mdio_mux_iproc_switch_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_mdiomux_desc = type { i64 }

@EXT_BUS_START_ADDR = common dso_local global i32 0, align 4
@MDIO_PARAM_INTERNAL_SEL = common dso_local global i32 0, align 4
@MDIO_PARAM_BUS_ID = common dso_local global i32 0, align 4
@MDIO_PARAM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @mdio_mux_iproc_switch_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_mux_iproc_switch_fn(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iproc_mdiomux_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.iproc_mdiomux_desc*
  store %struct.iproc_mdiomux_desc* %12, %struct.iproc_mdiomux_desc** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EXT_BUS_START_ADDR, align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EXT_BUS_START_ADDR, align 4
  %24 = sub nsw i32 %22, %23
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load i32, i32* @MDIO_PARAM_INTERNAL_SEL, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MDIO_PARAM_BUS_ID, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %7, align 8
  %40 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MDIO_PARAM_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
