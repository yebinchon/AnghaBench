; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_write_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_write_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32, i32* }
%struct.img_ir_timing_regvals = type { i32, i32, i32, i32, i32, i32 }

@IMG_IR_LEAD_SYMB_TIMING = common dso_local global i32 0, align 4
@IMG_IR_S00_SYMB_TIMING = common dso_local global i32 0, align 4
@IMG_IR_S01_SYMB_TIMING = common dso_local global i32 0, align 4
@IMG_IR_S10_SYMB_TIMING = common dso_local global i32 0, align 4
@IMG_IR_S11_SYMB_TIMING = common dso_local global i32 0, align 4
@IMG_IR_FREE_SYMB_TIMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"timings: ldr=%#x, s=[%#x, %#x, %#x, %#x], ft=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*, %struct.img_ir_timing_regvals*, i32)* @img_ir_write_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_write_timings(%struct.img_ir_priv* %0, %struct.img_ir_timing_regvals* %1, i32 %2) #0 {
  %4 = alloca %struct.img_ir_priv*, align 8
  %5 = alloca %struct.img_ir_timing_regvals*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.img_ir_priv_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %4, align 8
  store %struct.img_ir_timing_regvals* %1, %struct.img_ir_timing_regvals** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %10 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %9, i32 0, i32 1
  store %struct.img_ir_priv_hw* %10, %struct.img_ir_priv_hw** %7, align 8
  %11 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %12 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %15 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %23 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %26 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @img_ir_free_timing_dynamic(i32 %24, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %21, %3
  %33 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %34 = load i32, i32* @IMG_IR_LEAD_SYMB_TIMING, align 4
  %35 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %36 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @img_ir_write(%struct.img_ir_priv* %33, i32 %34, i32 %37)
  %39 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %40 = load i32, i32* @IMG_IR_S00_SYMB_TIMING, align 4
  %41 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %42 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @img_ir_write(%struct.img_ir_priv* %39, i32 %40, i32 %43)
  %45 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %46 = load i32, i32* @IMG_IR_S01_SYMB_TIMING, align 4
  %47 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %48 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @img_ir_write(%struct.img_ir_priv* %45, i32 %46, i32 %49)
  %51 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %52 = load i32, i32* @IMG_IR_S10_SYMB_TIMING, align 4
  %53 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %54 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @img_ir_write(%struct.img_ir_priv* %51, i32 %52, i32 %55)
  %57 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %58 = load i32, i32* @IMG_IR_S11_SYMB_TIMING, align 4
  %59 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %60 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @img_ir_write(%struct.img_ir_priv* %57, i32 %58, i32 %61)
  %63 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %64 = load i32, i32* @IMG_IR_FREE_SYMB_TIMING, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @img_ir_write(%struct.img_ir_priv* %63, i32 %64, i32 %65)
  %67 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %68 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %71 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %74 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %77 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %80 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.img_ir_timing_regvals*, %struct.img_ir_timing_regvals** %5, align 8
  %83 = getelementptr inbounds %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @img_ir_free_timing_dynamic(i32, i32*) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
