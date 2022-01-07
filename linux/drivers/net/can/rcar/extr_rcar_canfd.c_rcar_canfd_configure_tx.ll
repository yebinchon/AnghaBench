; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_global = type { i32, i64 }

@RCANFD_CFCC_CFIM = common dso_local global i32 0, align 4
@RCANFD_CFCC_CFTXIE = common dso_local global i32 0, align 4
@RCANFD_CFFIFO_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_canfd_global*, i32)* @rcar_canfd_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_configure_tx(%struct.rcar_canfd_global* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_canfd_global*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rcar_canfd_global* %0, %struct.rcar_canfd_global** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %10 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 7, i32* %9, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @RCANFD_CFCC_CFTML(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @RCANFD_CFCC_CFM(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @RCANFD_CFCC_CFIM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @RCANFD_CFCC_CFDC(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @RCANFD_CFCC_CFPLS(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @RCANFD_CFCC_CFTXIE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %33 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %37 = call i32 @RCANFD_CFCC(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @rcar_canfd_write(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %41 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %16
  %45 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %46 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %50 = call i32 @RCANFD_F_CFFDCSTS(i32 %48, i32 %49)
  %51 = call i32 @rcar_canfd_write(i32 %47, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %44, %16
  ret void
}

declare dso_local i32 @RCANFD_CFCC_CFTML(i32) #1

declare dso_local i32 @RCANFD_CFCC_CFM(i32) #1

declare dso_local i32 @RCANFD_CFCC_CFDC(i32) #1

declare dso_local i32 @RCANFD_CFCC_CFPLS(i32) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_CFCC(i32, i32) #1

declare dso_local i32 @RCANFD_F_CFFDCSTS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
