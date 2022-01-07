; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_configure_afl_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_configure_afl_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_global = type { i32, i64 }

@RCANFD_CHANNEL_NUMRULES = common dso_local global i32 0, align 4
@RCANFD_RFFIFO_IDX = common dso_local global i64 0, align 8
@RCANFD_GAFLCFG0 = common dso_local global i32 0, align 4
@RCANFD_GAFLECTR = common dso_local global i32 0, align 4
@RCANFD_GAFLECTR_AFLDAE = common dso_local global i32 0, align 4
@RCANFD_F_GAFL_OFFSET = common dso_local global i32 0, align 4
@RCANFD_C_GAFL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_canfd_global*, i64)* @rcar_canfd_configure_afl_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_configure_afl_rules(%struct.rcar_canfd_global* %0, i64 %1) #0 {
  %3 = alloca %struct.rcar_canfd_global*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.rcar_canfd_global* %0, %struct.rcar_canfd_global** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @RCANFD_CHANNEL_NUMRULES, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @RCANFD_RFFIFO_IDX, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %20 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RCANFD_GAFLCFG0, align 4
  %23 = call i64 @rcar_canfd_read(i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @RCANFD_GAFLCFG_GETRNC(i32 0, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @RCANFD_GAFL_PAGENUM(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %30 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RCANFD_GAFLECTR, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @RCANFD_GAFLECTR_AFLPN(i32 %33)
  %35 = load i32, i32* @RCANFD_GAFLECTR_AFLDAE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rcar_canfd_set_bit(i32 %31, i32 %32, i32 %36)
  %38 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RCANFD_GAFLCFG0, align 4
  %42 = load i64, i64* %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @RCANFD_GAFLCFG_SETRNC(i64 %42, i32 %43)
  %45 = call i32 @rcar_canfd_set_bit(i32 %40, i32 %41, i32 %44)
  %46 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %47 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i32, i32* @RCANFD_F_GAFL_OFFSET, align 4
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %26
  %53 = load i32, i32* @RCANFD_C_GAFL_OFFSET, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %56 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @RCANFD_GAFLID(i32 %58, i32 %59)
  %61 = call i32 @rcar_canfd_write(i32 %57, i32 %60, i32 0)
  %62 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %63 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @RCANFD_GAFLM(i32 %65, i32 %66)
  %68 = call i32 @rcar_canfd_write(i32 %64, i32 %67, i32 0)
  %69 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %70 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @RCANFD_GAFLP0(i32 %72, i32 %73)
  %75 = call i32 @rcar_canfd_write(i32 %71, i32 %74, i32 0)
  %76 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %77 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @RCANFD_GAFLP1(i32 %79, i32 %80)
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @RCANFD_GAFLP1_GAFLFDP(i64 %82)
  %84 = call i32 @rcar_canfd_write(i32 %78, i32 %81, i32 %83)
  %85 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %3, align 8
  %86 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RCANFD_GAFLECTR, align 4
  %89 = load i32, i32* @RCANFD_GAFLECTR_AFLDAE, align 4
  %90 = call i32 @rcar_canfd_clear_bit(i32 %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i64 @rcar_canfd_read(i32, i32) #1

declare dso_local i32 @RCANFD_GAFLCFG_GETRNC(i32, i64) #1

declare dso_local i32 @RCANFD_GAFL_PAGENUM(i32) #1

declare dso_local i32 @rcar_canfd_set_bit(i32, i32, i32) #1

declare dso_local i32 @RCANFD_GAFLECTR_AFLPN(i32) #1

declare dso_local i32 @RCANFD_GAFLCFG_SETRNC(i64, i32) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_GAFLID(i32, i32) #1

declare dso_local i32 @RCANFD_GAFLM(i32, i32) #1

declare dso_local i32 @RCANFD_GAFLP0(i32, i32) #1

declare dso_local i32 @RCANFD_GAFLP1(i32, i32) #1

declare dso_local i32 @RCANFD_GAFLP1_GAFLFDP(i64) #1

declare dso_local i32 @rcar_canfd_clear_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
